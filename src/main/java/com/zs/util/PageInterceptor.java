/**
 * Talcloud.com Inc. Copyright (c) 2018-2020 All Rights Reserved.
 */

package com.zs.util;

import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.DefaultReflectorFactory;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.apache.ibatis.session.ResultHandler;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;
import java.util.Properties;

/**
 * 分页拦截器
 */
@Intercepts({
    @Signature(
        type = StatementHandler.class, 
        method = "prepare", 
        args = {Connection.class, Integer.class})
})
@Component
public class PageInterceptor implements Interceptor {

  @Override
  public Object intercept(Invocation invocation) throws Throwable {
    StatementHandler statementHandler = (StatementHandler) invocation.getTarget();
    
    MetaObject metaObject = MetaObject
        .forObject(statementHandler, SystemMetaObject.DEFAULT_OBJECT_FACTORY, SystemMetaObject.DEFAULT_OBJECT_WRAPPER_FACTORY,
          new DefaultReflectorFactory());
    
    ParameterHandler parameterHandler = (ParameterHandler) metaObject.getValue("parameterHandler");
    
    MetaObject paramMeta = MetaObject.forObject(parameterHandler,
        SystemMetaObject.DEFAULT_OBJECT_FACTORY, SystemMetaObject.DEFAULT_OBJECT_WRAPPER_FACTORY,
        new DefaultReflectorFactory());
    
    MappedStatement mappedStatement = (MappedStatement) paramMeta.getValue("mappedStatement");
    // 配置文件中SQL语句的ID
    String id = mappedStatement.getId();
    if (id.matches(".+ByPage$")) {
      BoundSql boundSql = statementHandler.getBoundSql();
      // 原始的SQL语句
      String sql = boundSql.getSql();
      // 查询总条数的SQL语句
      String countSql = "select count(*) from (" + sql + ") a";
      Connection connection = (Connection) invocation.getArgs()[0];
      PreparedStatement countStatement = connection.prepareStatement(countSql);
      parameterHandler.setParameters(countStatement);
      ResultSet rs = countStatement.executeQuery();

      Map<?, ?> parameter = (Map<?, ?>) boundSql.getParameterObject();
      Page page = (Page) parameter.get("page");
      if (rs.next()) {
        page.setTotalNumber(rs.getInt(1));
      }
      // 改造后带分页查询的SQL语句
      String pageSql = sql + " limit " + page.getDbIndex() + "," + page.getDbNumber();
      metaObject.setValue("boundSql.sql", pageSql);
    }
    return invocation.proceed();
  }

  @Override
  public Object plugin(Object target) {
    return Plugin.wrap(target, this);
  }

  @Override
  public void setProperties(Properties properties) {
    
  }
}

