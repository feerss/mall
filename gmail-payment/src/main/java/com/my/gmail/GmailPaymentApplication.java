package com.my.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(basePackages = "com.my.gmail.mapper")
@ComponentScan("com.my.gmail")
public class GmailPaymentApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailPaymentApplication.class, args);
    }

}
