package com.my.gmail.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.my.gmail.bean.UserInfo;
import com.my.gmail.gmail.config.JwtUtil;
import com.my.gmail.service.UserService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class PassportController {

    @Value("${token.key}")
    private String key;

    //调用业务层
    @Reference
    private UserService userService;

    @RequestMapping("index")
    public String index(HttpServletRequest request) {
        //获取originUrl
        String originUrl = request.getParameter("originUrl");
        //保存originUrl
        request.setAttribute("originUrl",originUrl);
        return "index";
    }

    @RequestMapping("login")
    @ResponseBody
    public String login(UserInfo userInfo,HttpServletRequest request) {
        //salt 是服务器的ip地址
        String salt = request.getHeader("X-forwarded-for");
        //调用登录方法
        UserInfo info = userService.login(userInfo);
        if (info != null) {
            //登录成功之后返回token
            //制作一个token
            HashMap<String, Object> map = new HashMap<>();
            map.put("userId", info.getId());
            map.put("nickName", info.getNickName());
            //生成token
            String token = JwtUtil.encode(key, map, salt);
            return token;
        } else {
            return "fail";
        }
    }


    /*解密*/
    @RequestMapping("verify")
    @ResponseBody
    public String verify(HttpServletRequest request) {
//        1.获取服务器ip
//        2.key+ip,解密token,得到用户信息userIdnickname
//        3.判断用户是否登录:key=user:userId:info value=userInfo
//        4.userInfo!=null?true?false
//        String salt = request.getHeader("X-forwarded-for");
        String token = request.getParameter("token");
        String salt = request.getParameter("salt");
        Map<String, Object> map = JwtUtil.decode(token, key, salt);
        if (map != null && map.size() > 0) {
            String userId = (String) map.get("userId");
            UserInfo userInfo = userService.verify(userId);
            if (userInfo != null) {
                return "success";
            } else {
                return "fail";
            }
        } else {

            return "fail";
        }
    }
}
