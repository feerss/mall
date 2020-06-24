package com.my.gmail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.my.gmail")
public class GmailItemWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(GmailItemWebApplication.class, args);
    }

}
