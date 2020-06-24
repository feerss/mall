package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.my.gmail.bean.SkuInfo;
import com.my.gmail.bean.SpuImage;
import com.my.gmail.bean.SpuSaleAttr;
import com.my.gmail.service.ManagerService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class SkuManagerController {

    @Reference
    private ManagerService managerService;
//    @RequestMapping("spuImageList")
//    public List<SpuImage> getsSuImageList(String spuId) {
//
//    }

    @RequestMapping("spuImageList")
    public List<SpuImage> getsSuImageList(SpuImage spuImage) {
        //调用service层
        return managerService.getsSuImageList(spuImage);
    }

    @RequestMapping("spuSaleAttrList")
    public List<SpuSaleAttr> getSpuSaleAttrList(String spuId) {
        //调用service层
        return managerService.getSpuSaleAttrList(spuId);
    }

    @RequestMapping("saveSkuInfo")
    public void saveSkuInfo(@RequestBody SkuInfo skuInfo) {
        if (skuInfo != null) {
            managerService.saveSkuInfo(skuInfo);
        }
    }
}
