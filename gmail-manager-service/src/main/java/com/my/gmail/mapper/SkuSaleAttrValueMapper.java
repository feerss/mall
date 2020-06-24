package com.my.gmail.mapper;

import com.my.gmail.bean.SkuSaleAttrValue;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface SkuSaleAttrValueMapper extends Mapper<SkuSaleAttrValue> {
    /**
     * 根据spuId查询数据
     * @param spuId
     */
    List<SkuSaleAttrValue> selectSkuSaleAttrValueListBySpu(String spuId);
}
