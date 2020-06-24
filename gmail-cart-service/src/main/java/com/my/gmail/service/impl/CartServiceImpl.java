package com.my.gmail.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.CartInfo;
import com.my.gmail.bean.SkuInfo;
import com.my.gmail.config.RedisUtil;
import com.my.gmail.constant.CartConst;
import com.my.gmail.mapper.CartInfoMapper;
import com.my.gmail.service.CartService;
import com.my.gmail.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.Jedis;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartInfoMapper cartInfoMapper;

    @Reference
    private ManagerService managerService;

    @Autowired
    private RedisUtil redisUtil;
    //添加登录还是未登录，在控制器中判断
    //登录时添加用户
    @Override
    public void addToCart(String skuId, String userId, Integer skuNum) {
        /**
         *  1.如果购物车中有相同的商品，商品数量相加
         *  2.没有，直接添加到数据库
         *  3.更新缓存
         */
        //获取Jedis
        Jedis jedis = redisUtil.getJedis();
        //定义购物车的key=user:userId:cart  用户key=user:userId:info
        String cartKey = CartConst.USER_KEY_PREFIX + userId + CartConst.USER_CART_KEY_SUFFIX;
        //采用哪种数据类型来存储 hash
        //key=user:userId:cart field=skuId value=cartInfo的字符串

        //通过skuId,userId查询
        CartInfo cartInfo = new CartInfo();
        cartInfo.setSkuId(skuId);
        cartInfo.setUserId(userId);
        CartInfo cartInfoExist = cartInfoMapper.selectOne(cartInfo);
        //有相同的商品
        if (cartInfoExist != null) {
            //数量相加
            cartInfoExist.setSkuNum(cartInfoExist.getSkuNum()+skuNum);

            //给skuPrice初始化操作
            cartInfoExist.setSkuPrice(cartInfoExist.getCartPrice());
            //更新数据
            cartInfoMapper.updateByPrimaryKeySelective(cartInfoExist);
            //同步缓存
//            jedis.hset(cartKey, skuId, JSON.toJSONString(cartInfoExist));

        } else {
            //没有相同的商品
            //cartInfo 数据来源于商品详情页面 skuInfo
            //根据skuId查询skuInfo
            SkuInfo skuInfo = managerService.getSkuInfo(skuId);
            CartInfo cartInfo1 = new CartInfo();
            //属性赋值
            cartInfo1.setSkuId(skuId);
            cartInfo1.setCartPrice(skuInfo.getPrice());
            cartInfo1.setSkuPrice(skuInfo.getPrice());
            cartInfo1.setSkuName(skuInfo.getSkuName());
            cartInfo1.setImgUrl(skuInfo.getSkuDefaultImg());
            cartInfo1.setUserId(userId);
            cartInfo1.setSkuNum(skuNum);

            //添加到数据源库
            cartInfoMapper.insertSelective(cartInfo1);
            cartInfoExist = cartInfo1;
            //同步缓存
        }
        //将数据放入缓存
        jedis.hset(cartKey, skuId, JSON.toJSONString(cartInfoExist));
        /**
         * 面试时不懂过期可以不说
         */
        /*设置过期时间*/
        /*获取用户的key*/
        String userKey = CartConst.USER_KEY_PREFIX+userId+CartConst.USERINFOKEY_SUFFIX;
        /*获取userKey的过期时间*/
        Long ttl = jedis.ttl(userKey);
        /*保持购物车和用户的过期时间一致*/
        jedis.expire(cartKey,ttl.intValue());
        //关闭缓存
        jedis.close();
    }

    @Override
    public List<CartInfo> getCartList(String userId) {

        List<CartInfo> cartInfoList = new ArrayList<>();
        /*
            1.如果购物车在缓存中存在，看购物车
            2.如果缓存中不存在看数据库，并将数据保存到缓存
         */
        Jedis jedis = redisUtil.getJedis();
        //定义购物车的key=user:userId:cart  用户key=user:userId:info
        String cartKey = CartConst.USER_KEY_PREFIX + userId + CartConst.USER_CART_KEY_SUFFIX;
//        jedis.hgetAll(cartKey);返回map  key=field value=cartInfo 字符串
        List<String> stringList = jedis.hvals(cartKey);//返回一个字符串
        if (stringList != null && stringList.size() > 0) {
            //循环遍历
            for (String s : stringList) {
                //将s转换为对象CartInfo，并添加到集合
                cartInfoList.add(JSON.parseObject(s, CartInfo.class));
            }
            //查看的时候应该做排序，真实项目的更新时间(模拟按照Id排序)
            cartInfoList.sort(new Comparator<CartInfo>() {
                @Override
                public int compare(CartInfo o1, CartInfo o2) {
                    //定义比较规则
                    //compareTo 比较规则： s1=abc s2=abcd
                    return o1.getId().compareTo(o2.getId());
                }
            });
            return cartInfoList;
        } else {
            //从数据库中获取数据 order by ，并添加到缓存
            cartInfoList = loadCartCache(userId);
            return cartInfoList;
        }
    }

    @Override
    public List<CartInfo> mergeToCartList(List<CartInfo> cartListCK, String userId) {
        //根据userId获取购物车数据
        List<CartInfo> cartListDB = getCartList(userId);
        //合并  合并条件：skuId 相同
        for (CartInfo cartInfoCK : cartListCK) {
            //定义一个boolean 类型变量，默认值是false
            boolean isMatch = false;
            for (CartInfo cartInfoDB : cartListDB) {
                if (cartInfoCK.getSkuId().equals(cartInfoDB.getSkuId())) {
                    //将数量进行相加
                    cartInfoDB.setSkuNum(cartInfoDB.getSkuNum() + cartInfoCK.getSkuNum());
                    //修改数据库
                    cartInfoMapper.updateByPrimaryKeySelective(cartInfoDB);
                    //给 true
                    isMatch = true;
                }
            }
            //没有匹配到
            if (!isMatch) {
                //未登录的对象添加到数据库
                //将用户id赋值给未登录对象
                cartInfoCK.setUserId(userId);
                cartInfoMapper.insertSelective(cartInfoCK);
            }
        }
        //最终将合并之后的数据返回
        List<CartInfo> cartInfoList = loadCartCache(userId);


        //与未登录合并
        for (CartInfo cartInfoDB : cartInfoList) {
            for (CartInfo cartInfoCK : cartListCK) {
                if (cartInfoDB.getSkuId().equals(cartInfoCK.getSkuId())) {
                    if ("1".equals(cartInfoCK.getIsChecked())) {
                        //修改数据库的状态
                        cartInfoDB.setIsChecked(cartInfoCK.getIsChecked());
                        checkCart(cartInfoDB.getSkuId(),"1",userId);
                    }
                }
            }
        }
        return cartInfoList;
    }

    @Override
    public void checkCart(String skuId, String isChecked, String userId) {
        /*
              1.获取jedis客户端
              2.获取购物车集合
              3.直接修改skuId商品的勾选状态 isChecked
              4.直接写回redis

              5.新建购物车来存储勾选商品的信息
         */
        Jedis jedis = redisUtil.getJedis();
        //定义购物车的key=user:userId:cart  用户key=user:userId:info
        String cartKey = CartConst.USER_KEY_PREFIX + userId + CartConst.USER_CART_KEY_SUFFIX;
        String cartInfoJson = jedis.hget(cartKey, skuId);
        //将其转换为对象
        CartInfo cartInfo = JSON.parseObject(cartInfoJson, CartInfo.class);
        cartInfo.setIsChecked(isChecked);
        //写回购物车
        jedis.hset(cartKey, skuId, JSON.toJSONString(cartInfo));
        //新建一个购物车的key
        String cartKeyChecked = CartConst.USER_KEY_PREFIX + userId + CartConst.USER_CHECKED_KEY_SUFFIX;
        //isChecked=1是勾选的商品
        if ("1".equals(isChecked)) {
            jedis.hset(cartKeyChecked, skuId, JSON.toJSONString(cartInfo));
        } else {
            jedis.hdel(cartKeyChecked, skuId);
        }
        jedis.close();


    }

    @Override
    public List<CartInfo> getCartCheckedList(String userId) {
        List<CartInfo> cartInfoList = new ArrayList<>();
        //获取被选中的购物车集合
        /*
            1.获取jedis
            2.定义key
            3.获取数据并返回
         */
        Jedis jedis = redisUtil.getJedis();

        //被选中的购物车
        String cartKeyChecked = CartConst.USER_KEY_PREFIX + userId + CartConst.USER_CHECKED_KEY_SUFFIX;
        List<String> hvals = jedis.hvals(cartKeyChecked);
        //循环判断
        if (hvals != null && hvals.size() > 0) {
            for (String cartJson : hvals) {
                cartInfoList.add(JSON.parseObject(cartJson,CartInfo.class));
            }
        }
        jedis.close();
        return cartInfoList;
    }

    //根绝userId查询购物车
    private List<CartInfo> loadCartCache(String userId) {
        //select * from cartInfo where userId=?  不可取 查询不到实时价格
        //cartInfo ,skuInfo 两张表中查询
        List<CartInfo> cartInfoList = cartInfoMapper.selectCartListWithCurPrice(userId);
        /*如果数据库中也查不到 购物车为空*/
        if(cartInfoList==null && cartInfoList.size() == 0){
            return null;
        }
        // 构建key user:userid:cart
        String userCartKey = CartConst.USER_KEY_PREFIX+userId+CartConst.USER_CART_KEY_SUFFIX;
        // 准备取数据
        Jedis jedis = redisUtil.getJedis();
        /*能够走到这里  说明有数据*/
//        for(CartInfo cartInfo : cartInfoList){
//            jedis.hset(userCartKey,cartInfo.getSkuId(),JSON.toJSONString(cartInfo));
//        }
        HashMap<String, String> map = new HashMap<>();
        for (CartInfo cartInfo : cartInfoList) {
            map.put(cartInfo.getSkuId(), JSON.toJSONString(cartInfo));
        }
        //一次性放入多条数据
        jedis.hmset(userCartKey, map);
        jedis.close();
        return cartInfoList;
    }

}
