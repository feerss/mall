package com.my.gmail.config;

import org.springframework.aop.interceptor.AsyncUncaughtExceptionHandler;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.AsyncConfigurer;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;

@Configuration
@EnableAsync
public class AsyOrderConfig implements AsyncConfigurer {

    //获取执行者
    @Override
    public Executor getAsyncExecutor() {
        //配置线程池
        ThreadPoolTaskExecutor threadPoolTaskExecutor = new ThreadPoolTaskExecutor();
        threadPoolTaskExecutor.setCorePoolSize(10); //线程数
        threadPoolTaskExecutor.setQueueCapacity(100); //等待队列容量 ，线程 数不够任务会等待
        threadPoolTaskExecutor.setMaxPoolSize(100); // 最大线程数，等待数不 够会增加线程数，直到达此上线 超过这个范围会抛异常
        threadPoolTaskExecutor.initialize();
        return threadPoolTaskExecutor;
    }


    //处理异常
    @Override
    public AsyncUncaughtExceptionHandler getAsyncUncaughtExceptionHandler() {
        //自定义异常
        return null;
    }
}
