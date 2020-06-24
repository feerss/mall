package com.my.gmail.bean;
import lombok.Data;
import java.io.Serializable;

/*
* 自定义拥护输入参数实体类
* */
@Data
public class SkuLsParams implements Serializable {

    String  keyword;

    String catalog3Id;

    String[] valueId;

    int pageNo=1;

    int pageSize=20;
}
