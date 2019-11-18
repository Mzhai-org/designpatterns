
package com.zs.dubboconsumer.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.zs.dubboapi.DubboService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: DubboController.java, v1.0 2019/11/18 15:01 zhaishuo Exp $
 */
@RestController
public class DubboController {
  
  private static final Logger logger = LoggerFactory.getLogger(DubboController.class);
  
  @Reference(version = "1.0.0")
  DubboService service;
  
  @GetMapping("/dubbo-test")
  public String getStart(String name) {
    logger.info("consumer start invoke provider service");
    return service.getStart(name);
  }
  
  
}
