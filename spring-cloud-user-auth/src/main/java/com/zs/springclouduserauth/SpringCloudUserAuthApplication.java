package com.zs.springclouduserauth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@MapperScan("com.zs.springclouduserauth.mapper")
@SpringBootApplication
@EnableTransactionManagement
@EnableEurekaClient//该注解声明当前应用为eureka client，只能与eureka一起使用。
//@EnableDiscoveryClient 该注解对spring cloud中所有服务注册组件提供支持，zookeeper，consul等等。
public class SpringCloudUserAuthApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringCloudUserAuthApplication.class, args);
	}

}
