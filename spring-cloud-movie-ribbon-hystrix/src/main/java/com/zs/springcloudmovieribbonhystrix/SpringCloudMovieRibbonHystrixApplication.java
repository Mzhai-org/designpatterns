package com.zs.springcloudmovieribbonhystrix;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/*
eureka client中会在一段时间内使用缓存的eureka server中的注册表信息,所以当多个实例发生变化时,ribbon的访问还是从缓存中负载到已经结束的service中
 */
@SpringBootApplication
@EnableEurekaClient
@EnableHystrix
public class SpringCloudMovieRibbonHystrixApplication {

    /*
    引入@LadBalanced注解，将RestTemplate整合ribbon，使其拥有负载均衡的能力（默认轮询）。
     */
    @Bean
    @LoadBalanced
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }

    public static void main(String[] args) {
        SpringApplication.run(SpringCloudMovieRibbonHystrixApplication.class, args);
    }

}
