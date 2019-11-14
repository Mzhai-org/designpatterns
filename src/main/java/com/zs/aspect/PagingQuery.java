package com.zs.aspect;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: PagingQuery.java, v1.0 2019/11/14 11:02 zhaishuo Exp $
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface PagingQuery {
  String pageNumParameterName() default "pageNum";//页号的参数名
  String pageSizeParameterName() default "pageSize";//每页行数的参数名
}
