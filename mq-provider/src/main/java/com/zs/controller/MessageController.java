
package com.zs.controller;

import com.zs.sender.MessageSender;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.ThreadPoolExecutor;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: MessageController.java, v1.0 2019/11/15 16:36 zhaishuo Exp $
 */
@RestController
public class MessageController {
  private static final Logger logger = LoggerFactory.getLogger("request.accesslog");
  
  @Autowired
  MessageSender sender;
  
  @GetMapping("/sender")
  public String send() {
    logger.info("start request");
    sender.sendOrder();
    logger.info("Continue to do other thing");
    return "hello world";
  }  
}
