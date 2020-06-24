package com.my.gmail.service;

import com.my.gmail.bean.PaymentInfo;

import java.util.Map;

public interface PaymentService {

    /**
     * 保存交易记录
     * @param paymentInfo
     */
    void savePaymentInfo(PaymentInfo paymentInfo);

    /**
     * 根据out_trade_no查询
     * @param paymentInfo
     * @return
     */
    PaymentInfo getPaymentInfo(PaymentInfo paymentInfo);

    /**
     *
     * @param out_trade_no
     * @param paymentInfoUpd
     */
    void updatePaymentInfo(String out_trade_no, PaymentInfo paymentInfoUpd);

    /**
     * 退款
     * @param orderId
     * @return
     */
    boolean refund(String orderId);

    /**
     * 微信通用api支付
     * @param orderId
     * @param money
     * @return
     */
    Map createNative(String orderId, String money);

    /**
     *  发送消息给订单
     * @param paymentInfo
     * @param result
     */
    void sendPaymentResult(PaymentInfo paymentInfo, String result);


    /**
     * 根绝out_trade_no 查询交易记录
     * @param paymentInfoQuery
     * @return
     */
    boolean checkPayment(PaymentInfo paymentInfoQuery);

    /**
     * 每隔15秒主动去支付宝查询该笔订单是否完成
     *
     * @param outTradeNo 第三方交易编号
     * @param delaySec   每隔多长时间查询一次
     * @param checkCount 查询次数
     */
    void sendDelayPaymentResult(String outTradeNo, int delaySec, int checkCount);

    /**
     * 根据订单id更改交易订单
     * @param orderId
     */
    void closePayment(String orderId);
}
