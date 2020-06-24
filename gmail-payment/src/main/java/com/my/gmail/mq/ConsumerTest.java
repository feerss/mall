package com.my.gmail.mq;

import org.apache.activemq.ActiveMQConnectionFactory;

import javax.jms.*;

public class ConsumerTest {

    public static void main(String[] args) throws JMSException {
                /*
            1.创建连接工厂
            2.创建连接
            3.打开连接
            4.创建session
            5.创建队列
            6.创建消息消费者
            8.消费消息
         */
        ActiveMQConnectionFactory activeMQConnectionFactory = new ActiveMQConnectionFactory(ActiveMQConnectionFactory.DEFAULT_USER,ActiveMQConnectionFactory.DEFAULT_PASSWORD,"tcp://192.168.1.229:61616");
        Connection connection = activeMQConnectionFactory.createConnection();
        connection.start();
        //第一参数：是否开启事务
        //第二个参数： 表示开启/关闭事务的相应参数
//        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
        Session session = connection.createSession(true, Session.SESSION_TRANSACTED);//开启事务必须提交
        Queue hanpi = session.createQueue("hanpi");
        MessageConsumer consumer = session.createConsumer(hanpi);
        consumer.setMessageListener(new MessageListener() {
            @Override
            public void onMessage(Message message) {
                //如何获取消息
                if (message instanceof TextMessage) {
                    try {
                        String text = ((TextMessage) message).getText();
                        System.out.println("获取的消息："+text);
                    } catch (JMSException e) {
                        e.printStackTrace();
                    }

                }
            }
        });
    }
}
