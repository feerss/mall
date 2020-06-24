package com.my.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.my.gmail.mapper")
@ComponentScan("com.my.gmail")
@EnableTransactionManagement
public class GmailOrderServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailOrderServiceApplication.class, args);
    }

}
