package com.zs.springcloudmovie;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class SpringCloudMovieApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringCloudMovieApplication.class, args);
	}

}
