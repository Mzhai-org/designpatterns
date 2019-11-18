package com.zs.dubboprovider;

import com.alibaba.dubbo.spring.boot.annotation.EnableDubboConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication()
@ComponentScan("com.zs.dubboprovider.*")
@EnableDubboConfiguration
public class DubboProviderApplication {

  public static void main(String[] args) {
    SpringApplication.run(DubboProviderApplication.class, args);
  }

}
