package com.my.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(basePackages = "com.my.gmail.mapper")
@ComponentScan("com.my.gmail")
public class GmailUserManageApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailUserManageApplication.class, args);
    }

}
