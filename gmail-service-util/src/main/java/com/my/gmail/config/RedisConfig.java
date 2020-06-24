package com.my.gmail.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RedisConfig {

    //disable如果未从配置文件中获取到host，则默认为disable
    @Value("${spring.redis.host:disable}")
    private String host;

    @Value("${spring.redis.port:0}")
    private int port;

    @Value("${spring.redis.database:0}")
    private int database;

    //将获取到的数据传输到InitJedisPoll方法中
    @Bean
    public RedisUtil getRedisUtil() {
        if ("disable".equals(host)) {
            return null;
        }
        RedisUtil redisUtil = new RedisUtil();
        //调用initJedisPool方法将值传入
        redisUtil.initJedisPool(host,port,database);

        return redisUtil;
    }
}
