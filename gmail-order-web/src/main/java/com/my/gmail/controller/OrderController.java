package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.*;
import com.my.gmail.config.LoginRequire;
import com.my.gmail.service.CartService;
import com.my.gmail.service.ManagerService;
import com.my.gmail.service.OrderService;
import com.my.gmail.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class OrderController {

    @Reference
    private UserService userService;

    @Reference
    private CartService cartService;

    @Reference
    private OrderService orderService;

    @Reference
    private ManagerService managerService;
//    @RequestMapping("trade")
//    public String trade() {
//        //返回一个视图名称叫index.html
//        return "index";
//    }

    @RequestMapping("trade")
//    @ResponseBody   //返回json字符串,fastJson.jar 第二直接将数据返回到显示页面
    @LoginRequire
    public String trade(HttpServletRequest request) {
        //返回一个视图名称叫index.html
//        return userService.getUserAddressList(userId);
        String userId = (String) request.getAttribute("userId");
        List<UserAddress> userAddressList = userService.getUserAddressList(userId);
        request.setAttribute("userAddressList",userAddressList);

        //展示送货清单
        //数据来源勾选的购物车 user:userId:checked
        List<CartInfo> cartCheckedList = cartService.getCartCheckedList(userId);

        //声明一个集合来存储订单明细
        List<OrderDetail> orderDetailList = new ArrayList<>();
        //将集合数据赋值到orderDetail
        for (CartInfo cartInfo : cartCheckedList) {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setSkuId(cartInfo.getSkuId());
            orderDetail.setSkuName(cartInfo.getSkuName());
            orderDetail.setImgUrl(cartInfo.getImgUrl());
            orderDetail.setSkuNum(cartInfo.getSkuNum());
            orderDetail.setOrderPrice(cartInfo.getCartPrice());
            orderDetailList.add(orderDetail);
        }
        //总金额
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setOrderDetailList(orderDetailList);
        //调用计算总金额的方法 TotalAmount()
        orderInfo.sumTotalAmount();
        request.setAttribute("totalAmount",orderInfo.getTotalAmount());
        //保存用户清单集合
        request.setAttribute("orderDetailList",orderDetailList);

        String tradeNo = orderService.getTrade(userId);
        request.setAttribute("tradeNo",tradeNo);
        return "trade";
    }

    @RequestMapping("submitOrder")
    @LoginRequire
    public String submitOrder(HttpServletRequest request,OrderInfo orderInfo) {
        String userId = (String) request.getAttribute("userId");
        //调用服务层
        //orderInfo中还缺少用户id
        orderInfo.setUserId(userId);
        //判断是否重复提交
        //获取页面的流水号
        String tradeNo =request.getParameter("tradeNo");
        boolean result = orderService.checkTradeCode(userId, tradeNo);
        if (!result) {
            request.setAttribute("errMsg","订单已提交,不能重复提交");
            return "tradeFail";
        }

        //验证库存
        List<OrderDetail> orderDetailList = orderInfo.getOrderDetailList();
        for (OrderDetail orderDetail : orderDetailList) {
            boolean flag = orderService.checkStock(orderDetail.getSkuId(), orderDetail.getSkuNum());
            if (!flag) {
                request.setAttribute("errMsg",orderDetail.getSkuName()+"商品库存不足!");
                return "tradeFail";
            }
            //获取skuInfo对象
            SkuInfo skuInfo = managerService.getSkuInfo(orderDetail.getSkuId());
            //
            int i = skuInfo.getPrice().compareTo(orderDetail.getOrderPrice());
            if (i != 0) {
                request.setAttribute("errMsg",orderDetail.getSkuName()+"价格不匹配");
                cartService.loadCartCache(userId);
                return "tradeFail";
            }

        }

        String orderId = orderService.saveOrder(orderInfo);
        //删除流水号
        orderService.deleteTradeCode(userId);

        /*跳转到支付页面*/
        return "redirect://payment.gmall.com/index?orderId="+orderId;
    }


    @RequestMapping("orderSpilt")
    @ResponseBody
    public String orderSpilt(HttpServletRequest request) {
        String orderId = request.getParameter("orderId");
        String wareSkuMap = request.getParameter("wareSkuMap");

        //返回子订单集合
        List<OrderInfo> orderInfoList = orderService.orderSpilt(orderId, wareSkuMap);

        //创建一个来存储map
        ArrayList<Map> maps = new ArrayList<>();
        //循环遍历
        for (OrderInfo orderInfo : orderInfoList) {
            Map map = orderService.initWareOrder(orderInfo);
            maps.add(map);
        }
        return JSON.toJSONString(maps);
    }
}
