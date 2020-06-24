package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.SkuImage;
import com.my.gmail.bean.SkuInfo;
import com.my.gmail.bean.SkuSaleAttrValue;
import com.my.gmail.bean.SpuSaleAttr;
import com.my.gmail.config.LoginRequire;
import com.my.gmail.service.ListService;
import com.my.gmail.service.ManagerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class ItemController {

    @Reference
    private ManagerService managerService;

    @Reference
    private ListService listService;
    //控制器
    @RequestMapping("{skuId}.html")
//    @LoginRequire   //用户访问商品详情的时候，必须登录
    public String item(@PathVariable("skuId")String skuId, HttpServletRequest request) {
        //根据skuId获取数据
        SkuInfo skuInfo = managerService.getSkuInfo(skuId);
        //显示图片列表
        //根据skuId skuImage中
//        List<SkuImage> skuImageList = managerService.getSkuImageBySkuId(skuId);
//        //将图片保存到作用域
//        request.setAttribute("skuImageList",skuImageList);
//        //skuInfo保存到作用域
        //查询销售属性，销售属性值集合
        //获取销售属性值Id
        List<SkuSaleAttrValue> skuSaleAttrValues = managerService.getSkuSaleAttrValueListBySpu(skuInfo.getSpuId());
        //遍历集合拼接字符串
        //增强for循环
        //将数据放入map中，然后将map转换为想要的json格式
        //map.put("118|120"."33") JSON.toJSONString(map);
//        for (SkuSaleAttrValue skuSaleAttrValue : skuSaleAttrValues) {
//            //什么时候拼接什么时候停止拼接
//        }
        String key = "";
        HashMap<String, Object> map = new HashMap<>();
        //普通循环
        for (int i = 0; i < skuSaleAttrValues.size(); i++) {
            SkuSaleAttrValue skuSaleAttrValue = skuSaleAttrValues.get(i);
            //当本次循环的skuId与下次循环的skuId不一致，拼接到最后的时候
            //什么时候加|

            //第一次拼接 key=118
            //第二次拼接 key=118|
            //第三次拼接 key=118|120 放入map中，并清空key
            //第四次拼接 key=119
            if (key.length() > 0) {
                key += "|";
            }
            key += skuSaleAttrValue.getSaleAttrValueId();
            if ((i + 1) == skuSaleAttrValues.size() || !skuSaleAttrValue.getSkuId().equals(skuSaleAttrValues.get(i + 1).getSkuId())) {
                //放入map集合
                map.put(key,skuSaleAttrValue.getSkuId());
                //并且清空key
                key = "";
            }
        }
        //将map转换为json字符串
        String s = JSON.toJSONString(map);
        System.out.println("拼接字符串:"+s);
        //保存json
        request.setAttribute("valuesSkuJson",s);
        List<SpuSaleAttr> spuSaleAttrList = managerService.getSpuSaleAttrListCheckBySku(skuInfo);
        request.setAttribute("saleAttrList",spuSaleAttrList);
        request.setAttribute("skuInfo", skuInfo);
        listService.incrHotScore(skuId);
        return "item";
    }
}
