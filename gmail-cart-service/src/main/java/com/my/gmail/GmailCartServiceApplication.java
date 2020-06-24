package com.my.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.my.gmail")
@MapperScan(basePackages = "com.my.gmail.mapper")
public class GmailCartServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailCartServiceApplication.class, args);
    }

}
