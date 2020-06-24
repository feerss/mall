package com.my.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.my.gmail")
public class GmailCartWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailCartWebApplication.class, args);
    }

}
