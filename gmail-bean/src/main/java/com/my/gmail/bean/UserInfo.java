package com.my.gmail.bean;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * 用户表
 */
@Data
public class UserInfo implements Serializable {
    @Id  //主键
    @Column   //普通列
    @GeneratedValue(strategy = GenerationType.IDENTITY)  //获取表主键自增
    private String id;
    @Column
    private String loginName;
    @Column
    private String nickName;
    @Column
    private String passwd;
    @Column
    private String name;
    @Column
    private String phoneNum;
    @Column
    private String email;
    @Column
    private String headImg;
    @Column
    private String userLevel;

    public UserInfo(){
        super();
    }

    public UserInfo(String loginName, String nickName) {
        this.loginName = loginName;
        this.nickName = nickName;
    }
}
