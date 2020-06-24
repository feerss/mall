package com.my.gmail.service;

import com.my.gmail.bean.UserAddress;
import com.my.gmail.bean.UserInfo;

import java.util.List;

public interface UserService {

    /**
     * 查询所有数据
     * @return
     */
    List<UserInfo> findAll();

    /**
     * 根据用户id查询用户地址列表
     * @param userId
     * @return
     */
    List<UserAddress> getUserAddressList(String userId);

    /**
     * 登录方法
     * @param userInfo
     * @return
     */
    UserInfo login(UserInfo userInfo);

    /**
     * 用户认证 token转化为userInfo
     * @param userId
     * @return
     */
    UserInfo verify(String userId);
}
