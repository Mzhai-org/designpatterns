
package com.zs.discount.factory;

import com.zs.discount.strategy.DiscountService;

import java.util.HashMap;
import java.util.Map;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: DiscountFactory.java, v1.0 2019/11/6 16:05 zhaishuo Exp $
 */
public class DiscountFactory {
  private static Map<String, DiscountService> impls = new HashMap<String, DiscountService>();
  
  public static DiscountService getImpl(String vipType) {
    return impls.get(vipType);
  }
  
  public static void register(String vipType, DiscountService service) {
    if (vipType == null || service == null) {
      return;
    }
    impls.put(vipType, service);
  }
}
