package com.my.gmail.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.OrderDetail;
import com.my.gmail.bean.OrderInfo;
import com.my.gmail.bean.enums.OrderStatus;
import com.my.gmail.bean.enums.ProcessStatus;
import com.my.gmail.config.ActiveMQUtil;
import com.my.gmail.config.RedisUtil;
import com.my.gmail.mapper.OrderDetailMapper;
import com.my.gmail.mapper.OrderInfoMapper;
import com.my.gmail.service.OrderService;
import com.my.gmail.service.PaymentService;
import com.my.gmail.util.HttpClientUtil;
import org.apache.activemq.command.ActiveMQTextMessage;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.transaction.annotation.Transactional;
import redis.clients.jedis.Jedis;
import tk.mybatis.mapper.entity.Example;

import javax.jms.*;
import javax.jms.Queue;
import java.util.*;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Autowired
    private OrderInfoMapper orderInfoMapper;

    @Autowired
    private RedisUtil redisUtil;

    @Autowired
    private ActiveMQUtil activeMQUtil;

    @Reference
    private PaymentService paymentService;

    @Override
    @Transactional
    public String saveOrder(OrderInfo orderInfo) {
        //数据不完整！ 总金额，订单状态，第三方交易编号，创建时间，过期时间，进程状态
        //计算总金额
        orderInfo.sumTotalAmount();
        //订单状态
        orderInfo.setOrderStatus(OrderStatus.UNPAID);
        //第三方交易编号
        String outTradeNo="MY"+System.currentTimeMillis()+""+new Random().nextInt(1000);
        orderInfo.setOutTradeNo(outTradeNo);
        //创建时间
        orderInfo.setCreateTime(new Date());
        //过期时间+1
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.DATE,1);
        orderInfo.setExpireTime(calendar.getTime());
        //进程状态
        orderInfo.setProcessStatus(ProcessStatus.UNPAID);
        //只保存了订单
        orderInfoMapper.insertSelective(orderInfo);

        //订单明细
        List<OrderDetail> orderDetailList = orderInfo.getOrderDetailList();
        for (OrderDetail orderDetail : orderDetailList) {
            //设置orderId
            orderDetail.setOrderId(orderInfo.getId());
            orderDetailMapper.insertSelective(orderDetail);
        }
        return orderInfo.getId();
    }

    @Override
    public String getTrade(String userId) {
        //获取jedis
        Jedis jedis = redisUtil.getJedis();
        //定义key
        String tradeNoKey = "user:" + userId + ":tradeCode";
        //定义一个流水号
        String tradeNo = UUID.randomUUID().toString();
        //string类型
        jedis.set(tradeNoKey, tradeNo);
        jedis.close();
        return tradeNo;
    }

    @Override
    public boolean checkTradeCode(String userId, String tradeCodeNo) {
        //获取缓存的流水号
        //获取jedis
        Jedis jedis = redisUtil.getJedis();
        //定义key
        String tradeNoKey = "user:" + userId + ":tradeCode";
        //获取数据
        String tradeNo = jedis.get(tradeNoKey);
        jedis.close();
        return tradeCodeNo.equals(tradeNo);
    }

    @Override
    public void deleteTradeCode(String userId) {
        //获取jedis
        Jedis jedis = redisUtil.getJedis();
        //定义key
        String tradeNoKey = "user:" + userId + ":tradeCode";
        //删除数据
        jedis.del(tradeNoKey);
        jedis.close();
    }

    @Override
    public boolean checkStock(String skuId, Integer skuNum) {
        //调用gware-manage 库存系统
        String result = HttpClientUtil.doGet("http://www.gware.com/hasStock?skuId=" + skuId + "&num=" + skuNum);

        return "1".equals(result);
    }

    @Override
    public OrderInfo getOrderInfo(String orderId) {
        OrderInfo orderInfo = orderInfoMapper.selectByPrimaryKey(orderId);
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setOrderId(orderId);
        orderInfo.setOrderDetailList(orderDetailMapper.select(orderDetail));
        return orderInfo;
    }

    @Override
    public void updateProcessStatus(String orderId, ProcessStatus processStatus) {
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setId(orderId);
        orderInfo.setProcessStatus(processStatus);
        orderInfo.setOrderStatus(processStatus.getOrderStatus());
        orderInfoMapper.updateByPrimaryKeySelective(orderInfo);
    }

    @Override
    public void sendOrderStatus(String orderId) {
        //创建一个消息工厂
        Connection connection = activeMQUtil.getConnection();

        String orderInfoJson = initWareOrder(orderId);
        try {
            connection.start();
            Session session = connection.createSession(true, Session.SESSION_TRANSACTED);
            //创建队列
            Queue order_result_queue = session.createQueue("ORDER_RESULT_QUEUE");
            //创建消息提供者
            MessageProducer producer = session.createProducer(order_result_queue);
            //创建消息对象
            ActiveMQTextMessage activeMQTextMessage = new ActiveMQTextMessage();
            //orderInfo json 组成 字符串
            activeMQTextMessage.setText(orderInfoJson);

            producer.send(activeMQTextMessage);
            //提交
            session.commit();

            //关闭
            producer.close();
            session.close();
            connection.close();
        } catch (JMSException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<OrderInfo> getExpireOrderList() {
        //当前系统时间>过期时间 and 当前状态为未支付
        Example example = new Example(OrderInfo.class);
        example.createCriteria().andEqualTo("processStatus",ProcessStatus.UNPAID).andLessThan("expireTime",new Date());
        List<OrderInfo> orderInfos = orderInfoMapper.selectByExample(example);
        return orderInfos;
    }

    @Override
    @Async
    public void execExpiredOrder(OrderInfo orderInfo) {
        //将订单状态改为关闭
        updateProcessStatus(orderInfo.getId(),ProcessStatus.CLOSED);
        //关闭paymentInfo
        paymentService.closePayment(orderInfo.getId());
    }

    /**
     * 根据orderId 将orderInfo变为 json字符串
     * @param orderId
     * @return
     */
    private String initWareOrder(String orderId) {
        //根据orderId 查询orderInfo
        OrderInfo orderInfo = getOrderInfo(orderId);
        //将orderInfo中有用的信息放入map中
        Map map = initWareOrder(orderInfo);
        //将map转换为JSON字符串
        return JSON.toJSONString(map);
    }

    /**
     *
     * @param orderInfo
     * @return
     */
    public Map initWareOrder(OrderInfo orderInfo) {
        HashMap<String, Object> map = new HashMap<>();
        //给map赋值
        map.put("orderId", orderInfo.getId());
        map.put("consignee", orderInfo.getConsignee());
        map.put("consigneeTel",orderInfo.getConsigneeTel());
        map.put("orderComment",orderInfo.getOrderComment());
        map.put("orderBody","测试用");
        map.put("deliveryAddress",orderInfo.getDeliveryAddress());
        map.put("paymentWay","2");
        /*getWareId仓库ID*/
        map.put("wareId",orderInfo.getWareId());
        List<OrderDetail> orderDetailList = orderInfo.getOrderDetailList();
        //创建一个集合来存储map
        ArrayList<Map> arrayList = new ArrayList<>();
        for (OrderDetail orderDetail : orderDetailList) {
            HashMap<String, Object> orderDetailMap = new HashMap<>();
            orderDetailMap.put("skuId", orderDetail.getSkuId());
            orderDetailMap.put("skuNum", orderDetail.getSkuNum());
            orderDetailMap.put("skuName", orderDetail.getSkuName());
            arrayList.add(orderDetailMap);
        }
        map.put("details", arrayList);
        return map;
    }

    @Override
    public List<OrderInfo> orderSpilt(String orderId, String wareSkuMap) {

        List<OrderInfo> subOrderInfoList = new ArrayList<>();
        /*
            1.获取原始订单
            2.将wareSkuMap 转换为能操作的对象
            3.创建新的子订单
            4.给子订单赋值
            5.将子订单添加到集合中
            6.更新订单状态
         */

        OrderInfo orderInfoOrigin = getOrderInfo(orderId);
        //将wareSkuMap
        List<Map> maps = JSON.parseArray(wareSkuMap, Map.class);
        if (maps != null) {
            //循环遍历集合
            for (Map map : maps) {
                //获取仓库id
                String wareId = (String) map.get("wareId");
                //获取商品id
                List<String> skuIds = (List<String>) map.get("skuIds");
                OrderInfo subOrderInfo = new OrderInfo();
                //属性拷贝
                BeanUtils.copyProperties(orderInfoOrigin,subOrderInfo);
                //id必须为空
                subOrderInfo.setId(null);
                subOrderInfo.setWareId(wareId);
                subOrderInfo.setParentOrderId(orderId);

                //声明一个新的子订单明细集合
                ArrayList<OrderDetail> subOrderDetailArrayList = new ArrayList<>();
                //价格：获取原始订单明细
                List<OrderDetail> orderDetailList = orderInfoOrigin.getOrderDetailList();
                //原始订单明细
                for (OrderDetail orderDetail : orderDetailList) {
                    //仓库对应的id
                    for (String skuId : skuIds) {
                        if (skuId.equals(orderDetail.getSkuId())) {
                            orderDetail.setId(null);
                            subOrderDetailArrayList.add(orderDetail);
                        }
                    }
                }
                //将新的订单集合放入子订单当中
                subOrderInfo.setOrderDetailList(subOrderDetailArrayList);

                //计算价格
                subOrderInfo.sumTotalAmount();

                //保存到数据库
                saveOrder(subOrderInfo);

                //将新的子订单添加到集合中
                subOrderInfoList.add(subOrderInfo);
            }
        }
        updateProcessStatus(orderId,ProcessStatus.SPLIT);
        return subOrderInfoList;
    }
}
