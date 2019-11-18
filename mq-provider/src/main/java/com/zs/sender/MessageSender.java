
package com.zs.sender;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import java.util.UUID;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: MessageSender.java, v1.0 2019/11/15 14:53 zhaishuo Exp $
 */
@Component
public class MessageSender {
  
  private static final Logger logger = LoggerFactory.getLogger("request.accesslog");

  @Autowired
  RabbitTemplate rabbitTemplate;

  @Async("taskExecutor")
  public void sendOrder(){
    logger.info("start send message");
    try {
      Thread.sleep(1000);
    } catch (InterruptedException e) {
      e.printStackTrace();
    }
    // 交换机
    String exchange = "order-exchange";
    // 路由规则
    String routingKey = "order.test";
    CorrelationData correlationData = new CorrelationData();
    correlationData.setId(UUID.randomUUID().toString());
    // 第一个参数：生产者要发送的交换机
    // 第二个参数：消息路由规则
    // 第三个参数：消息体
    // 第四个参数：消息唯一id
    rabbitTemplate.convertAndSend(exchange,routingKey, "test", correlationData);
    logger.info("already send message");
  }
}
