package com.my.gmail.mq;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.command.ActiveMQTextMessage;

import javax.jms.*;

public class ProductTest {

    public static void main(String[] args) throws JMSException {
        /*
            1.创建连接工厂
            2.创建连接
            3.打开连接
            4.创建session
            5.创建队列
            6.创建消息提供者
            7.创建消息对象
            8.发送消息
            9.关闭
         */
        ActiveMQConnectionFactory activeMQConnectionFactory = new ActiveMQConnectionFactory("tcp://192.168.1.229:61616");
        Connection connection = activeMQConnectionFactory.createConnection();
        connection.start();
        //第一参数：是否开启事务
        //第二个参数： 表示开启/关闭事务的相应参数
//        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
        Session session = connection.createSession(true, Session.SESSION_TRANSACTED);//开启事务必须提交
        Queue hanpi = session.createQueue("hanpi");

        MessageProducer producer = session.createProducer(hanpi);
        ActiveMQTextMessage activeMQTextMessage = new ActiveMQTextMessage();
        activeMQTextMessage.setText("你是个大傻子");
        producer.send(activeMQTextMessage);
        session.commit();
        producer.close();
        session.close();
        connection.close();
    }
}
