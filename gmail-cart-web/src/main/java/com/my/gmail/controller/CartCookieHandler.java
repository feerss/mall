package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.CartInfo;
import com.my.gmail.bean.SkuInfo;
import com.my.gmail.config.CookieUtil;
import com.my.gmail.service.ManagerService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Component
public class CartCookieHandler {

    // 定义购物车名称
    private String cookieCartName = "CART";
    // 设置cookie 过期时间
    private int COOKIE_CART_MAXAGE=7*24*3600;

    @Reference
    private ManagerService managerService;
    /**
     * 添加购物车
     * @param request
     * @param response
     * @param skuId
     * @param userId
     * @param skuNum
     */
    public void addToCart(HttpServletRequest request, HttpServletResponse response, String skuId, String userId, int skuNum) {
        /*
            1.查看购物车中是否有该商品
            2.true：数量相加
            3.false：直接添加
         */
        //从购物车中获取商品数据
        String cookieValue = CookieUtil.getCookieValue(request, cookieCartName, true);
        //声明一个集合
        List<CartInfo> cartInfos = new ArrayList<>();
        //如果没有，则直接添加到集合，基础是一个boolean类型变量处理
        boolean ifExist = false;
        //判断cookieValue不能为空
        if (StringUtils.isNotEmpty(cookieValue)) {
            //字符串包含很多歌cartInfo实体类
            cartInfos = JSON.parseArray(cookieValue, CartInfo.class);
            //判断是否有该商品skuId
            for (CartInfo cartInfo : cartInfos) {
                if (cartInfo.getSkuId().equals(skuId)) {
                    //有商品
                    cartInfo.setSkuNum(cartInfo.getSkuNum() + skuNum);
                    //实时价格初始化
                    cartInfo.setSkuPrice(cartInfo.getCartPrice());
                    //将变量更改未true
                    ifExist = true;
                }
            }
        }
        //在购物车中没有该商品
        if (!ifExist) {
            SkuInfo skuInfo = managerService.getSkuInfo(skuId);
            CartInfo cartInfo = new CartInfo();
            //属性赋值
            cartInfo.setSkuId(skuId);
            cartInfo.setCartPrice(skuInfo.getPrice());
            cartInfo.setSkuPrice(skuInfo.getPrice());
            cartInfo.setSkuName(skuInfo.getSkuName());
            cartInfo.setImgUrl(skuInfo.getSkuDefaultImg());
            cartInfo.setUserId(userId);
            cartInfo.setSkuNum(skuNum);
            cartInfos.add(cartInfo);
        }

        //将最终的集合放入到cookie中
        CookieUtil.setCookie(request,response,cookieCartName,JSON.toJSONString(cartInfos),COOKIE_CART_MAXAGE,true);
    }

    /**
     * 获取购物车列表
     * @param request
     * @return
     */
    public List<CartInfo> getCartList(HttpServletRequest request) {
        //未登录数据集合
        String cookieValue = CookieUtil.getCookieValue(request, cookieCartName, true);
        if (StringUtils.isNotEmpty(cookieValue)) {
            List<CartInfo> cartInfoList = JSON.parseArray(cookieValue, CartInfo.class);
            return cartInfoList;
        }
        return null;
    }

    //删除购物车
    public void deleteCartCookie(HttpServletRequest request, HttpServletResponse response) {
        CookieUtil.deleteCookie(request,response,cookieCartName);
    }

    public void checkCart(HttpServletRequest request, HttpServletResponse response, String skuId, String isChecked) {
        //直接将IsChecked值赋予购物车集合
        List<CartInfo> cartList = getCartList(request);
        if (cartList != null&&cartList.size()>0) {
            for (CartInfo cartInfo : cartList) {
                if (cartInfo.getSkuId().equals(skuId)) {
                    cartInfo.setIsChecked(isChecked);
                }
            }
        }
        //购物车集合写回cookie
        CookieUtil.setCookie(request,response,cookieCartName,JSON.toJSONString(cartList),COOKIE_CART_MAXAGE,true);
    }
}
