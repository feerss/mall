package com.my.gmail.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.my.gmail")
public class GmailPassportWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailPassportWebApplication.class, args);
    }

}
