/**
 * Talcloud.com Inc. Copyright (c) 2018-2020 All Rights Reserved.
 */

package com.zs.aspect;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zs.util.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.List;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: PageAspect.java, v1.0 2019/11/14 10:40 zhaishuo Exp $
 */
@Aspect
@Component
public class PageAspect {

  @Around("@annotation(pagingQuery)")
  public Object pagingQuery(ProceedingJoinPoint joinPoint, PagingQuery  pagingQuery) throws Throwable {
    MethodSignature sign = (MethodSignature) joinPoint.getSignature();
    Method method = sign.getMethod();
    Class<?> returnType = sign.getReturnType();
    if (returnType == List.class) {
      String pageNumParameterName = pagingQuery.pageNumParameterName();
      String pageSizeParameterName = pagingQuery.pageSizeParameterName();
      //获取request，从中获取分页参数
      ServletRequestAttributes currentRequestAttributes = (ServletRequestAttributes) RequestContextHolder
          .currentRequestAttributes();
      HttpServletRequest request = currentRequestAttributes.getRequest();
      String pageNum = request.getParameter(pageNumParameterName);
      String pageSize = request.getParameter(pageSizeParameterName);
      if (StringUtils.isNotBlank(pageNum) && StringUtils.isNotBlank(pageSize)) {
        try {
          PageHelper.startPage(Integer.valueOf(pageNum), Integer.valueOf(pageSize));
          Page result = (Page) joinPoint.proceed();
          return result.getResult();//建议自己实现返回类型，官方自带的返回数据太冗余了
        } finally {//保证线程变量被清除
          if (PageHelper.getLocalPage() != null)
            PageHelper.clearPage();
        }
      }
    }
    return joinPoint.proceed();
  }
}
