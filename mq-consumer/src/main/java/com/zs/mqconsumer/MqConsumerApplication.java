package com.zs.mqconsumer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.zs.*")
public class MqConsumerApplication {

  public static void main(String[] args) {
    SpringApplication.run(MqConsumerApplication.class, args);
  }

}
