
package com.zs.dubboprovider.service.impl;

import com.zs.dubboapi.DubboService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: DubboServiceImpl.java, v1.0 2019/11/18 14:52 zhaishuo Exp $
 */
@Service
public class DubboServiceImpl implements DubboService {
  
  private static final Logger logger = LoggerFactory.getLogger(DubboServiceImpl.class);
  
  @Override
  public String getStart(String name) {
    logger.info("provider start work");
    return "Hello" + name;
  }
  
}
