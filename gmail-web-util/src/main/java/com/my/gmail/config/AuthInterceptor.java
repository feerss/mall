package com.my.gmail.config;

import com.alibaba.fastjson.JSON;
import com.my.gmail.util.HttpClientUtil;
import io.jsonwebtoken.impl.Base64UrlCodec;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

@Component
public class AuthInterceptor extends HandlerInterceptorAdapter {

    //多个拦截器执行的顺序
    //跟配置文件中配置拦截器的顺序有关，1,2
    //用户进入控制器之前
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取token
        //用户登录后回返回一个url
        String token = request.getParameter("newToken");
        //将token 放入到cookie中
//        Cookie cookie = new Cookie("token", token);
//        response.addCookie(cookie);
        //token不为空时放入
        if (token != null) {
            CookieUtil.setCookie(request,response,"cookie",token,WebConst.COOKIE_MAXAGE,false);
        }
        //当用户访问访问非登录之后的页面，登录之后，继续访问其他业务模块，url中并没有newToken，但是后台可能将token放入到cookie中
        if (token == null) {
            token = CookieUtil.getCookieValue(request, "cookie", false);
        }
        //从cookie中获取token 解密
        if (token != null) {
            //获取token中解密的数据
            Map map =getUserMapByToken(token);
            String nickName = (String) map.get("nickName");
            //保存到作用域
            request.setAttribute("nickName", nickName);
        }


        HandlerMethod handlerMethod = (HandlerMethod) handler;
        //获取方法上的注解LoginRequire
        LoginRequire methodAnnotation = handlerMethod.getMethodAnnotation(LoginRequire.class);
        if (methodAnnotation != null) {
            //此时有注解
            //判断用户是否登录?调用verify
            // http://passport.atguigu.com/verify?token=xxx&salt=x
            // 获取服务器上的ip 地址
            String salt = request.getHeader("X-forwarded-for");
            System.out.println(salt);
            System.out.println(token);
            //调用verify()认证
            String result = HttpClientUtil.doGet(WebConst.VERIFY_ADDRESS + "?token=" + token + "&salt=" + salt);
            if ("success".equals(result)) {
                //登录成功
                //保存userId
                //获取token中解密的数据
                Map map = getUserMapByToken(token);
                String userId = (String) map.get("userId");
                //保存到作用域
                request.setAttribute("userId", userId);
                return true;
            } else {
                //认证失败！并且methodAnnotation.autoRedirect()=true 必须登录
                if (methodAnnotation.autoRedirect()) {
                    //必须登录
                    // 京东：https://passport.jd.com/new/login.aspx?ReturnUrl=https%3A%2F%2Fwww.jd.com%2F
                    // 我们：http://passport.atguigu.com/index?originUrl=http%3A%2F%2Fitem.gmall.com%2F36.html
                    // 先获取到url
                    String requestURL = request.getRequestURL().toString();
                    System.out.println("requestURL:"+requestURL); // http://item.gmall.com/36.html
                    // 将url 进行转换
                    // http%3A%2F%2Fitem.gmall.com%2F36.html
                    String encodeURL = URLEncoder.encode(requestURL, "UTF-8");//  http%3A%2F%2Fitem.gmall.com%2F36.html
                    // http://passport.atguigu.com/index?originUrl=http%3A%2F%2Fitem.gmall.com%2F36.html
                    System.out.println("encodeURL"+encodeURL);
                    response.sendRedirect(WebConst.LOGIN_ADDRESS+"?originUrl="+encodeURL);
                    return false;
                }
            }
        }
        return true;
    }

    //解密token 获取map数据
    private Map getUserMapByToken(String token) {
        //获取token中间部分
        String tokenUserInfo = StringUtils.substringBetween(token, ".");
        //将tokenUserInfo进行解码
        Base64UrlCodec base64UrlCodec = new Base64UrlCodec();
        byte[] decode = base64UrlCodec.decode(tokenUserInfo);
        //需要先将decode 转换成字符串
        String mapJson = null;
        try {
            mapJson = new String(decode, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        //直接将字符串转换为map返回
        return JSON.parseObject(mapJson, Map.class);
    }

    //进入控制器之后，视图渲染之前
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    //视图渲染之后
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }
}
