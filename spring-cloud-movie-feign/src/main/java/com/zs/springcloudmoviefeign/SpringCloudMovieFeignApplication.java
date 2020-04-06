package com.zs.springcloudmoviefeign;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients
public class SpringCloudMovieFeignApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringCloudMovieFeignApplication.class, args);
	}

}
