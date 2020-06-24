package com.my.gmail.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.my.gmail.bean.OrderInfo;
import com.my.gmail.bean.PaymentInfo;
import com.my.gmail.bean.enums.PaymentStatus;
import com.my.gmail.config.AlipayConfig;
import com.my.gmail.service.OrderService;
import com.my.gmail.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.crypto.interfaces.PBEKey;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class PaymentController {

    @Reference
    private OrderService orderService;

    @Reference
    private PaymentService paymentService;

    @Autowired
    private AlipayClient alipayClient;

    @RequestMapping("index")
    public String index(String orderId, HttpServletRequest request) {
        //选中支付渠道
        //保存orderId
        request.setAttribute("orderId", orderId);
        //通过orderId获取总金额
        OrderInfo orderInfo = orderService.getOrderInfo(orderId);
        //保存订单总金额
        request.setAttribute("totalAmount", orderInfo.getTotalAmount());
        return "index";
    }

    @RequestMapping("alipay/submit")
    @ResponseBody
    public String alipaySubmit(HttpServletRequest request, HttpServletResponse response) {
        /*
            1.保存支付记录 将数据放到数据库
            去重复，对账  幂等性=保证每一笔交易只能在支付宝中交易一次！需要第三方交易编号
            paymentInfo
            2.生成二维码
         */
        //获取订单id
        String orderId = request.getParameter("orderId");
        //获取订单信息
        OrderInfo orderInfo = orderService.getOrderInfo(orderId);
        PaymentInfo paymentInfo = new PaymentInfo();
        //paymentInfo数据来源
        //属性赋值
        /*设置订单编号*/
        paymentInfo.setOrderId(orderId);
        /*设置支付宝交易凭证号*/
        paymentInfo.setOutTradeNo(orderInfo.getOutTradeNo());
        /*设置总金额*/
        paymentInfo.setTotalAmount(orderInfo.getTotalAmount());
        /*设置转账备注*/
        paymentInfo.setSubject("给谁买啥子");
        /*设置订单状态*/
        paymentInfo.setPaymentStatus(PaymentStatus.UNPAID);
        /*设置订单生成日期*/
        paymentInfo.setCreateTime(new Date());
        /*保存到数据库*/
        paymentService.savePaymentInfo(paymentInfo);

        //生成二维码
        //参数做成配置文件，进行编码
//        AlipayClient alipayClient =  new DefaultAlipayClient( "https://openapi.alipay.com/gateway.do" , APP_ID, APP_PRIVATE_KEY, FORMAT, CHARSET, ALIPAY_PUBLIC_KEY, SIGN_TYPE);  //获得初始化的AlipayClient
        //alipay.trade.page.pay
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest(); //创建API对应的request
        //设置同步回调
//        alipayRequest.setReturnUrl( "http://domain.com/CallBack/return_url.jsp" );
        alipayRequest.setReturnUrl(AlipayConfig.return_payment_url);
//        设置异步回调
//        alipayRequest.setNotifyUrl("http://domain.com/CallBack/notify_url.jsp"); //在公共参数中设置回跳和通知地址
        alipayRequest.setNotifyUrl(AlipayConfig.notify_payment_url); //在公共参数中设置回跳和通知地址
//        alipayRequest.putOtherTextParam("app_auth_token", "201611BB8xxxxxxxxxxxxxxxxxxxedcecde6");//如果 ISV 代商家接入电脑网站支付能力，则需要传入 app_auth_token，使用第三方应用授权；自研开发模式请忽略
        //参数
        //声明一个map集合来声明参数
        HashMap<String, Object> map = new HashMap<>();
        map.put("out_trade_no", paymentInfo.getOutTradeNo());
        map.put("product_code", "FAST_INSTANT_TRADE_PAY");
        map.put("total_amount", paymentInfo.getTotalAmount());
        map.put("subject", paymentInfo.getSubject());
        //将封装好的参数传入支付宝
        alipayRequest.setBizContent(JSON.toJSONString(map));
//        alipayRequest.setBizContent( "{"  +
//                "    \"out_trade_no\":\"20150320010101001\","  +
//                "    \"product_code\":\"FAST_INSTANT_TRADE_PAY\","  +
//                "    \"total_amount\":88.88,"  +
//                "    \"subject\":\"Iphone6 16G\","  +
//                "    \"body\":\"Iphone6 16G\","  +
//                "    \"passback_params\":\"merchantBizType%3d3C%26merchantBizNo%3d2016010101111\","  +
//                "    \"extend_params\":{"  +
//                "    \"sys_service_provider_id\":\"2088511833207846\""  +
//                "    }" +
//                "  }" ); //填充业务参数
        String form = "";
        try {
            form = alipayClient.pageExecute(alipayRequest).getBody();  //调用SDK生成表单
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        response.setContentType("text/html;charset=UTF-8");
//        response.getWriter().write(form); //直接将完整的表单html输出到页面
//        response.getWriter().flush();
//        response.getWriter().close();
        //调用延时队列
        paymentService.sendDelayPaymentResult(paymentInfo.getOutTradeNo(),15,3);
        return form;
    }
    /**
     * 交易完成后  同步回调
     * @return
     */
    @RequestMapping("alipay/callback/return")
    public String callbackReturn() {
        return "redirect:" + AlipayConfig.return_order_url;
    }

    @RequestMapping(value = "/alipay/callback/notify",method = RequestMethod.POST)
    public String paymentNotify(@RequestParam Map<String,String> paramMap, HttpServletRequest request) {
//        Map<String, String> paramsMap = ... //将异步通知中收到的所有参数都存放到map中
        boolean flag = false;//调用SDK验证签名
        try {
            flag = AlipaySignature.rsaCheckV1(paramMap, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type);
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }

        if(flag){
            // TODO 验签成功后，按照支付结果异步通知中的描述，对支付结果中的业务内容进行二次校验，校验成功后在response中返回success并继续商户自身业务处理，校验失败返回failure
            /*对业务的二次校验*/
            /*只有交易状态为TRADE_SUCCESS--交易支付成功  或者TRADE_FINISHED--	交易结束，不可退款才算成功*/
            /*获取交易状态*/
            //需要得到trade_status
            String trade_status = paramMap.get("trade_status");
            /*通过商户订单号查询支付记录    out_trade_no:商户订单号*/
            String out_trade_no = paramMap.get("out_trade_no");
            /*WAIT_BUYER_PAY	交易创建，等待买家付款
            TRADE_CLOSED	未付款交易超时关闭，或支付完成后全额退款
            TRADE_SUCCESS	交易支付成功
            TRADE_FINISHED	交易结束，不可退款*/
            /*交易状态*/
            if ("TRADE_SUCCESS".equals(trade_status) || "TRADE_FINISHED".equals(trade_status)) {
                //获取当前的订单支付状态,如果是已经付款或者关闭
                PaymentInfo paymentInfo = new PaymentInfo();
                paymentInfo.setOutTradeNo(out_trade_no);
                PaymentInfo paymentInfoHas = paymentService.getPaymentInfo(paymentInfo);

                if (paymentInfoHas.getPaymentStatus() == PaymentStatus.PAID || paymentInfoHas.getPaymentStatus() == PaymentStatus.ClOSED) {
                    return "failure";
                }

                //更新交易状态
                // 修改
                PaymentInfo paymentInfoUpd = new PaymentInfo();
                // 设置状态
                paymentInfoUpd.setPaymentStatus(PaymentStatus.PAID);
                // 设置创建时间
                paymentInfoUpd.setCallbackTime(new Date());
                // 设置内容
                paymentInfoUpd.setCallbackContent(paramMap.toString());
                paymentService.updatePaymentInfo(out_trade_no,paymentInfoUpd);
                //发送消息队列给订单:orderId,result
                paymentService.sendPaymentResult(paymentInfoHas,"success");
                return "success";
            }
        }else{
            // TODO 验签失败则记录异常日志，并在response中返回failure.
            return "failure";
        }
        return "failure";
    }

    /*退款*/
    /*http://payment.gmall.com/refund?orderId=100*/
    @RequestMapping("refund")
    @ResponseBody
    public String refund(String orderId) {
        //退款接口
        boolean result = paymentService.refund(orderId);
        return "" + result;
    }

    //根据orderId支付
    @RequestMapping("wx/submit")
    @ResponseBody
    public Map vxSubmit(String orderId) {
        //调用服务层生成数据
        //orderId 表示订单编号，1 代表金额 分
        Map map = paymentService.createNative(orderId, "1");
        System.out.println(map.get("code_url"));
        return map;
    }

    @RequestMapping("sendResult")
    @ResponseBody
    public String sendResult(PaymentInfo paymentInfo,String result) {
        paymentService.sendPaymentResult(paymentInfo, result);
        return "ok";
    }

    @RequestMapping("queryPaymentResult")
    @ResponseBody
    public String queryPaymentResult(String orderId) {
        //通过orderId 查询paymentInfo
        PaymentInfo paymentInfo = new PaymentInfo();
        paymentInfo.setOrderId(orderId);
        PaymentInfo paymentInfo1 = paymentService.getPaymentInfo(paymentInfo);
        boolean flag = paymentService.checkPayment(paymentInfo1);

        return ""+flag;
    }
}
