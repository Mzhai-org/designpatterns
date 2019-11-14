package com.zs.designpatterns;

import com.github.pagehelper.PageHelper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

import java.util.Properties;


@SpringBootApplication
@ComponentScan({"com.zs.*"})
@MapperScan("com.zs.mapper")
public class DesignpatternsApplication {

  public static void main(String[] args) {
    SpringApplication.run(DesignpatternsApplication.class, args);
  }

  /**
   * 配置pageHelper
   * @return
   */
//  @Bean
//  public PageHelper pageHelper(){
//    PageHelper pageHelper = new PageHelper();
//    Properties properties = new Properties();
//    properties.setProperty("offsetAsPageNum","true");
//    properties.setProperty("rowBoundsWithCount","true");
//    properties.setProperty("reasonable","true");
//    properties.setProperty("dialect","mysql");    //配置mysql数据库的方言
//    pageHelper.setProperties(properties);
//    return pageHelper;
//  }
  
}
