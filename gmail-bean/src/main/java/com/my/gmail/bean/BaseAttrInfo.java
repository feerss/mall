package com.my.gmail.bean;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * 平台属性表
 */
@Data
public class BaseAttrInfo implements Serializable {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)  //获取表主键自增
    private String id;
    @Column
    private String attrName;
    @Column
    private String catalog3Id;

    /*表是当前字段不是表中的字段 是业务逻辑层需要的字段*/
    @Transient
    private List<BaseAttrValue> attrValueList;
}
