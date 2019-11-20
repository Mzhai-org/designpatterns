package com.zs.mybatisrest;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("com.zs.mybatisrest.mapper")
@EnableTransactionManagement
public class MybatisRestApplication {

  public static void main(String[] args) {
    SpringApplication.run(MybatisRestApplication.class, args);
  }

}
