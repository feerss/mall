package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.*;
import com.my.gmail.service.ListService;
import com.my.gmail.service.ManagerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
public class ListController {

    @Reference
    private ListService listService;

    @Reference
    private ManagerService managerService;


    @RequestMapping("list.html")
//    @ResponseBody
    public String listData(SkuLsParams skuLsParams, HttpServletRequest request) {
        //设置每页显示的数据条数
        skuLsParams.setPageSize(2);
        SkuLsResult search = listService.search(skuLsParams);
//        return JSON.toJSONString(search);
        //获取商品数据
        List<SkuLsInfo> skuLsInfoList = search.getSkuLsInfoList();
        //平台属性，平台属性值查询
        //获取平台属性Id集合
        List<String> attrValueIdList = search.getAttrValueIdList();
        //通过平台属性值id查询平台属性名称,平台属性值名称
        List<BaseAttrInfo> baseAttrInfoList= managerService.getAttrList(attrValueIdList);

        //编写一个方法来判断url后面的参数条件
        String makeUrlParam = makeUrlParam(skuLsParams);
        //定义个一个面包屑集合
        List<BaseAttrValue> baseAttrValueList = new ArrayList<>();
        //使用迭代器
        for (Iterator<BaseAttrInfo> iterator = baseAttrInfoList.iterator(); iterator.hasNext(); ) {
            //平台属性
            BaseAttrInfo next = iterator.next();
            //获取平台属性值对象
            List<BaseAttrValue> attrValueList = next.getAttrValueList();
            for (BaseAttrValue baseAttrValue : attrValueList) {
                //获取skuLsParams.getValueId()循环对比
                if (skuLsParams.getValueId() != null && skuLsParams.getValueId().length > 0) {
                    for (String valueId : skuLsParams.getValueId()) {
                        if (valueId.equals(baseAttrValue.getId())) {
                            iterator.remove();
                            //面包屑组成
                            BaseAttrValue baseAttrValueed = new BaseAttrValue();
                            baseAttrValueed.setValueName(next.getAttrName()+":"+baseAttrValue.getValueName());
                            //将用户点击的平台属性id传递到makeUrlParam方法中，重新制作返回的url参数
                            String newUrlParam = makeUrlParam(skuLsParams, valueId);
                            //重新制作返回的url参数
                            baseAttrValue.setUrlParam(newUrlParam);
                            baseAttrValueList.add(baseAttrValueed);
                        }
                    }
                }
            }
        }
        String path = request.getRequestURL().toString();
        System.out.println(path);

        //保存分页额数据
        request.setAttribute("pageNo",skuLsParams.getPageNo());
        request.setAttribute("totalPages",search.getTotalPages());

        //保存到作用域
        request.setAttribute("urlParam",makeUrlParam);
        //保存一个检索关键字
        request.setAttribute("keyword",skuLsParams.getKeyword());
        //保存一个面包屑
        request.setAttribute("baseAttrValueList",baseAttrValueList);
        //保存平台属性和平台属性集合
        request.setAttribute("baseAttrInfoList", baseAttrInfoList);
        //保存商品集合
        request.setAttribute("skuLsInfoList",skuLsInfoList);
        return "list";
    }

    /**
     * 判断具体有那些参数
     * @param skuLsParams
     * @param valueIds 点击面包屑获取的平台值id
     * @return
     */
    private String makeUrlParam(SkuLsParams skuLsParams,String... valueIds) {
        String urlParam = "";
        /*拼接keyWord*/
        if(skuLsParams.getKeyword()!=null && skuLsParams.getKeyword().length()>0){
            urlParam+="Keyword="+skuLsParams.getKeyword();
        }
        /*判断三级分类Id*/
        if(skuLsParams.getCatalog3Id()!=null && skuLsParams.getCatalog3Id().length()>0){
            if(urlParam.length()>0){
                urlParam+="&";
            }
            urlParam+="catalog3Id="+skuLsParams.getCatalog3Id();
        }
        /*拼接属性值*/
        if(skuLsParams.getValueId()!=null&&skuLsParams.getValueId().length>0){

            for(String valueId:skuLsParams.getValueId()){
                /*移除面包屑*/
                if(valueIds!=null && valueIds.length>0){
                    String value = valueIds[0];
                    if (value.equals(valueId)){
                        continue;
                    }
                }
                if(urlParam.length()>0){
                    urlParam+="&";
                }
                urlParam+="valueId="+valueId;
            }
        }
        return urlParam;
    }

}
