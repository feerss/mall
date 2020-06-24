package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.my.gmail.bean.CartInfo;
import com.my.gmail.bean.SkuInfo;
import com.my.gmail.config.LoginRequire;
import com.my.gmail.service.CartService;
import com.my.gmail.service.ManagerService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class CartController {

    @Reference
    private CartService cartService;

    @Autowired
    private CartCookieHandler cartCookieHandler;

    @Reference
    private ManagerService managerService;
    //判断用户有没有登录？只需要看userId
    @RequestMapping("addToCart")
    @LoginRequire(autoRedirect = false)
    public String addToCart(HttpServletRequest request, HttpServletResponse response) {
        //获取商品的数量
        String skuNum = request.getParameter("skuNum");
        String skuId = request.getParameter("skuId");
        //获取userId
        String userId = (String) request.getAttribute("userId");
        if (userId != null) {
            //调用登录添加购物车
            cartService.addToCart(skuId,userId,Integer.parseInt(skuNum));
        } else {
            //调用未登录添加购物车
            cartCookieHandler.addToCart(request, response, skuId, userId, Integer.parseInt(skuNum));
        }
        //根据skuId查询skuInfo
        SkuInfo skuInfo = managerService.getSkuInfo(skuId);
        request.setAttribute("skuInfo",skuInfo);
        request.setAttribute("skuNum",skuNum);
        return "success";
    }

    @RequestMapping("cartList")
    @LoginRequire(autoRedirect = false)
    public String cartList(HttpServletRequest request,HttpServletResponse response) {
        //获取userId
        String userId = (String) request.getAttribute("userId");
        List<CartInfo> cartInfoList = null;
        if (userId != null) {
            List<CartInfo> cartListCK = cartCookieHandler.getCartList(request);
            if (cartListCK != null) {
                /*用户登录的情况cookie中有数据*/
                cartInfoList = cartService.mergeToCartList(cartListCK,userId);
                // 删除cookie中的购物车
                cartCookieHandler.deleteCartCookie(request,response);
            } else {
                //调用登录状态下查询购物车
                cartInfoList= cartService.getCartList(userId);
            }
        } else {
            //调用未登录查询购物车
            cartInfoList = cartCookieHandler.getCartList(request);
        }
        //保存购物车集合
        request.setAttribute("cartInfoList",cartInfoList);
        return "cartList";
    }

    @RequestMapping("checkCart")
    @LoginRequire(autoRedirect = false)
    @ResponseBody
    public void checkCart(HttpServletRequest request,HttpServletResponse response) {
        //获取从页面上传来的数据
        String skuId = request.getParameter("skuId");
        String isChecked = request.getParameter("isChecked");


        String userId = (String) request.getAttribute("userId");
        if (userId != null) {
            //登录状态
            cartService.checkCart(skuId, isChecked, userId);
        } else {
            //未登录状态
            cartCookieHandler.checkCart(request, response, skuId, isChecked);
        }
    }

    /**
     * 去结算
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("toTrade")
    @LoginRequire(autoRedirect = true)
    public String toTrade(HttpServletRequest request,HttpServletResponse response){
        //合并勾选的额商品 未登录+登录
        List<CartInfo> cartListCK = cartCookieHandler.getCartList(request);
        String userId = (String) request.getAttribute("userId");

        if (cartListCK != null&&cartListCK.size()>0) {
            //合并
            cartService.mergeToCartList(cartListCK, userId);
            //删除未登录的数据
            cartCookieHandler.deleteCartCookie(request,response);

        }

        return "redirect://order.gmall.com/trade";
    }
}
