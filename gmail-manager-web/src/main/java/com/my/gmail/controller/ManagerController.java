package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.my.gmail.bean.*;
import com.my.gmail.service.ManagerService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin    //跨域请求
public class ManagerController {

    @Reference
    private ManagerService managerService;

    @RequestMapping("getCatalog1")
    public List<BaseCatalog1> getCatalog1() {
        return managerService.getCatalog1();
    }

    @RequestMapping("getCatalog2")
    public List<BaseCatalog2> getCatalog2(String catalog1Id) {
        return managerService.getCatalog2(catalog1Id);
    }

    @RequestMapping("getCatalog3")
    public List<BaseCatalog3> getCatalog3(String catalog2Id) {
        return managerService.getCatalog3(catalog2Id);
    }

    @RequestMapping("attrInfoList")
    public List<BaseAttrInfo> attrInfoList(String catalog3Id) {
        return managerService.getAttrList(catalog3Id);
    }

    @RequestMapping("saveAttrInfo")
    public void saveAttrInfo(@RequestBody BaseAttrInfo baseAttrInfo) {
        managerService.saveAttrInfo(baseAttrInfo);
    }

    //    @RequestMapping("getAttrValueList")
//    public List<BaseAttrValue> getAttrValueList(String attrId) {
//        //select * from baseAttrValue where attrId=?
//        return managerService.getAttrValueList(attrId);
//    }
    @RequestMapping("getAttrValueList")
    public List<BaseAttrValue> getAttrValueList(String attrId) {
        //select * from baseAttrInfo where id=?
        BaseAttrInfo baseAttrInfo = managerService.getAttrInfo(attrId);
        return baseAttrInfo.getAttrValueList();
    }

    @RequestMapping("baseSaleAttrList")
    public List<BaseSaleAttr> baseSaleAttrList() {
        return managerService.getBaseSaleAttrList();
    }

}
