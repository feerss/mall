package com.my.gmail.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.fastjson.JSON;
import com.my.gmail.bean.UserAddress;
import com.my.gmail.bean.UserInfo;
import com.my.gmail.config.RedisUtil;
import com.my.gmail.mapper.UserAddressMapper;
import com.my.gmail.mapper.UserInfoMapper;
import com.my.gmail.service.UserService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;
import redis.clients.jedis.Jedis;

import java.security.Key;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserAddressMapper userAddressMapper;

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Autowired
    private RedisUtil redisUtil;

    public String userKey_prefix="user:";
    public String userinfoKey_suffix=":info";
    public int userKey_timeOut=60*60*24;

    @Override
    public List<UserInfo> findAll() {
        return userInfoMapper.selectAll();
    }

    @Override
    public List<UserAddress> getUserAddressList(String userId) {
        //调用mapper
        //select * from userAddress where userId=?
        UserAddress userAddress = new UserAddress();
        userAddress.setUserId(userId);
        return userAddressMapper.select(userAddress);

    }

    @Override
    public UserInfo login(UserInfo userInfo) {
        //select * from userInfo where loginName=? and passwd=?
        /*
            1.根据SQL语句查询是否有当前用户
            2.将用户信息放到缓存中
         */
        //密码需要进行加密
        String passwd = userInfo.getPasswd();
        String newPwd = DigestUtils.md5DigestAsHex(passwd.getBytes());
        Jedis jedis = null;
        try {
            jedis = redisUtil.getJedis();
            userInfo.setPasswd(newPwd);
            /*查询前台传过来的用户名密码是否存在*/
            UserInfo info = userInfoMapper.selectOne(userInfo);
            /*如果存在时*/
            if (info != null) {
                /*创建redis客户端*/
                /*创建有过期时间的redis*/
                String userKey = userKey_prefix + info.getId() + userinfoKey_suffix;
                jedis.setex(userKey, userKey_timeOut, JSON.toJSONString(info));
                return info;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
            //关闭jedis
            if (jedis!=null){
                jedis.close();
            }
        }
 /*DB中不存在直接返回空*/
        return null;
    }

    @Override
    public UserInfo verify(String userId) {
        Jedis jedis = null;
        try {
            //获取redis
            jedis = redisUtil.getJedis();
            //定key
            String userKey = userKey_prefix + userId + userinfoKey_suffix;
            String s = jedis.get(userKey);
            if (!StringUtils.isEmpty(s)) {
                UserInfo userInfo = JSON.parseObject(s, UserInfo.class);

                return userInfo;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return null;
    }
}
