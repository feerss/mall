package com.my.gmail.bean;

import lombok.Data;
import java.io.Serializable;
import java.util.List;

/*es的返回值*/
@Data
public class SkuLsResult implements Serializable {

    /*展示商品数据*/
    List<SkuLsInfo> skuLsInfoList;

    long total;

    long totalPages;

    /*平台属性ID集合*/
    List<String> attrValueIdList;
}
