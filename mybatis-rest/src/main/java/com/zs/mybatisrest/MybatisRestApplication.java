package com.zs.mybatisrest;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.zs.*"})
@MapperScan("com.zs.mapper")
public class MybatisRestApplication {

  public static void main(String[] args) {
    SpringApplication.run(MybatisRestApplication.class, args);
  }

}
