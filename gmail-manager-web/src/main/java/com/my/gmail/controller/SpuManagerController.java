package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.my.gmail.bean.SkuInfo;
import com.my.gmail.bean.SkuLsInfo;
import com.my.gmail.bean.SpuInfo;
import com.my.gmail.service.ListService;
import com.my.gmail.service.ManagerService;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class SpuManagerController {

    @Reference
    private ListService listService;

    @Reference
    private ManagerService managerService;

    @RequestMapping("spuList")
    private List<SpuInfo> spuList(SpuInfo spuInfo) {
        return managerService.getSpuList(spuInfo);
    }

    @RequestMapping("saveSpuInfo")
    public void saveSpuInfo(@RequestBody SpuInfo spuInfo) {

        if (spuInfo != null) {
            //调用保存
            managerService.saveSpuInfo(spuInfo);
        }
    }

    //上传一个商品，如果批量上传
    @RequestMapping("onSale")
    public void onSale(String skuId) {
        //创建一个skuLsInfo对象
        SkuLsInfo skuLsInfo = new SkuLsInfo();
        //给skuInfo赋值
        SkuInfo skuInfo = managerService.getSkuInfo(skuId);
        //将属性拷贝
        BeanUtils.copyProperties(skuInfo,skuLsInfo);
        listService.saveSkuListInfo(skuLsInfo);
    }
}
