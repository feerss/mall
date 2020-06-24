package com.my.gmail.bean;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.io.Serializable;

/**
 * 销售属性值表
 */
@Data
public class SpuSaleAttrValue implements Serializable {

    @Id
    @Column
    String id;

    @Column
    String spuId;

    @Column
    String saleAttrId;

    @Column
    String saleAttrValueName;

    /*事务操作*/
    @Transient
    String isChecked;
}