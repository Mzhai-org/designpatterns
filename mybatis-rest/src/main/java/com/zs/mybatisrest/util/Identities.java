
package com.zs.mybatisrest.util;

import java.util.UUID;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: Identities.java, v1.0 2019/11/20 10:27 zhaishuo Exp $
 */
public class Identities {
  
  public static String UUIDNormal() {
    return UUID.randomUUID().toString();
  }
  
  public static String UUIDSequence() {
    return UUID.randomUUID().toString().replace("-", "");
  }
  
  
}
