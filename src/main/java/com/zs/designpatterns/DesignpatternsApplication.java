package com.zs.designpatterns;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.zs.discount.*"})
public class DesignpatternsApplication {

  public static void main(String[] args) {
    SpringApplication.run(DesignpatternsApplication.class, args);
  }

}
