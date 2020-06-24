package com.my.gmail.service;

import com.my.gmail.bean.SkuLsInfo;
import com.my.gmail.bean.SkuLsParams;
import com.my.gmail.bean.SkuLsResult;

public interface ListService {

    /**
     * 保存数据到es
     * @param skuLsInfo
     */
    void saveSkuListInfo(SkuLsInfo skuLsInfo);

    /**
     * 检索数据
     * @param skuLsParams
     * @return
     */
    SkuLsResult search(SkuLsParams skuLsParams);

    /**
     * 记录每个商品被访问的次数
     * @param skuId
     */
    void incrHotScore(String skuId);
}
