
package com.zs.designpatternrest.discount.strategy;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: DiscountService.java, v1.0 2019/11/6 16:03 zhaishuo Exp $
 */
public interface DiscountService {
  double discount(Integer price);
}
