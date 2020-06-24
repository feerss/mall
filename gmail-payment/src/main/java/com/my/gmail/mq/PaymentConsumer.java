package com.my.gmail.mq;

import com.alibaba.dubbo.config.annotation.Reference;
import com.my.gmail.bean.PaymentInfo;
import com.my.gmail.bean.enums.ProcessStatus;
import com.my.gmail.service.PaymentService;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import javax.jms.JMSException;
import javax.jms.MapMessage;

@Component
public class PaymentConsumer {

    @Reference
    private PaymentService paymentService;

    //消费检测 是否支付成功
    @JmsListener(destination ="PAYMENT_RESULT_CHECK_QUEUE",containerFactory ="jmsQueueListener")
    public void consumeSkuDeduct(MapMessage mapMessage) throws JMSException {
        //通过mapMessage对象获取
        String outTradeNo = mapMessage.getString("outTradeNo");
        int delaySec = mapMessage.getInt("delaySec");
        int checkCount = mapMessage.getInt("checkCount");

        //创建一个paymentInfo对象
        PaymentInfo paymentInfo = new PaymentInfo();
        paymentInfo.setOutTradeNo(outTradeNo);
        PaymentInfo paymentInfo1 = paymentService.getPaymentInfo(paymentInfo);
        //其他参数没有值
        //判断是否支付成功
        boolean result = paymentService.checkPayment(paymentInfo1);
        //支付失败
        if (!result && checkCount>0) {
            //调用发送消息的方法
            paymentService.sendDelayPaymentResult(outTradeNo,delaySec,checkCount-1);
        }
    }
}
