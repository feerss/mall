package com.my.gmail.bean;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * 商品表
 */
@Data
public class SpuInfo implements Serializable {
    @Column
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)//获取数据库表中的自增id
    private String id;

    @Column
    private String spuName;

    @Column
    private String description;

    @Column
    private  String catalog3Id;

    /*一个商品多个属性*/
    @Transient
    private List<SpuSaleAttr> spuSaleAttrList;
    /*一个商品可以上传多个图片*/
    @Transient
    private List<SpuImage> spuImageList;
}
