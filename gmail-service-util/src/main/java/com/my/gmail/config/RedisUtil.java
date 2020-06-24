package com.my.gmail.config;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisUtil {

    //创建连接池
    private JedisPool jedisPool;

    //host,port 等参数可以配置在application.properties
    //初始化连接池
    //默认0号库
    public void initJedisPool(String host,int post,int database) {

        //直接创建一个连接池的配置类
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        //设置连接池最大的连接数
        jedisPoolConfig.setMaxTotal(200);
        //社会组等待时间
        jedisPoolConfig.setMaxWaitMillis(10*1000);
        //设置最小剩余数
        jedisPoolConfig.setMinIdle(10);
        //开启获取连接池的缓冲池
        jedisPoolConfig.setBlockWhenExhausted(true);
        //当用户获取到一个连接池后，用户自检是否可以使用
        jedisPoolConfig.setTestOnBorrow(true);
        //连接池配置类，host，port，timeout，password
        jedisPool = new JedisPool(jedisPoolConfig,host,post,20*1000);
    }

    //获取jedis
    public Jedis getJedis() {
        Jedis jedis = jedisPool.getResource();
        return jedis;
    }
}
