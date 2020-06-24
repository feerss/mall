package com.my.gmail.config;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.METHOD)          /*注解加在方法上*/
@Retention(RetentionPolicy.RUNTIME)     /*生命周期*/
public @interface LoginRequire {

    // true ：则表示需要登录，否则不需要登录！
    boolean autoRedirect() default true;
}
