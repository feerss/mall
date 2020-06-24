package com.my.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(basePackages = "com.my.gmail.mapper")
@EnableTransactionManagement
@ComponentScan(basePackages = "com.my.gmail")
public class GmailManagerServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailManagerServiceApplication.class, args);
    }

}