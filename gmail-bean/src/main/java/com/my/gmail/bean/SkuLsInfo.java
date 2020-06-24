package com.my.gmail.bean;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Data
public class SkuLsInfo implements Serializable {

    /*不加注解是因为不是数据库的表*/
    String id;

    BigDecimal price;

    String skuName;

    String catalog3Id;

    String skuDefaultImg;

    /*自定义一个字段  保存热度评分*/
    Long hotScore=0L;

    List<SkuLsAttrValue> skuAttrValueList;
}