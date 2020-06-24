package com.my.gmail.bean;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.io.Serializable;
import java.util.List;

/**
 * 销售属性表
 */
@Data
public class SpuSaleAttr  implements Serializable {

    @Id
    @Column
    String id ;

    @Column
    String spuId;

    @Column
    String saleAttrId;

    @Column
    String saleAttrName;


    /*事务操作*/
    /*一个属性有多个属性值*/
    @Transient
    List<SpuSaleAttrValue> spuSaleAttrValueList;
}
