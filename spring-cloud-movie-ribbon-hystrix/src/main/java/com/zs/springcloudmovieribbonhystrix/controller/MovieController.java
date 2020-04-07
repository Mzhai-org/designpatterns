package com.zs.springcloudmovieribbonhystrix.controller;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.zs.springcloudmovieribbonhystrix.bo.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.loadbalancer.LoadBalancerClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class MovieController {

    private static final Logger logger = LoggerFactory.getLogger(MovieController.class);

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    LoadBalancerClient loadBalancerClient;

    /*
    此处调用服务提供者user service，不再使用硬编码的情况写死url，而是使用虚拟主机名，也就是服务注册在Eureka Server中的名称
    ribbon和eureka共同使用时会自动将虚拟机主机名与网络地址（ip）做映射。
     */
    /*
    注解@HystrixCommand由名为javanica的Hystrix contrib库提供。javanica是一个Hystrix的子项目，用于简化hystrix的使用
    spring cloud自动将spring bean与该注解封装在一个连接到Hystrix断路器的代理中。
     */
    @HystrixCommand(fallbackMethod = "fingByIdFallback")
    @GetMapping("/user/{id}")
    public User findById(@PathVariable long id) {
        return restTemplate.getForObject("http://microservice-provider-user/" + id, User.class);
    }

    /*
    请求user service失败时的回调方法，给客户端返回一个默认用户
    当为服务不可用时进入回退方法，但这不表示断路器已经打开。只有当失败率达到阈值才会开启，默认是5秒内20次失败才打开断路器。
    断路器会自行恢复，一段时间后会进入半开模式，放开一个请求，请求正常返回后关闭断路器
     */
    public User fingByIdFallback(long id) {
        User user = new User();
        user.setId(-1L);
        user.setName("默认用户");
        return user;
    }

    /*
    同时启动两个user服务，本地启动可以使用不同端口模拟多个实例的情况.
    loadBalancerClient.choose方法更直观的观察当前访问的实例ip和端口,可以判断负载均衡是否生效.默认负载模式是轮询.
    默认情况下可以看出打印的日志 两个端口的user service被交替访问,也就是轮询模式.
     */
    @GetMapping("/log-user-instance")
    public void logUserInstance() {
        ServiceInstance serviceInstance = loadBalancerClient.choose("microservice-provider-user");
        logger.info("{}, {}, {}", serviceInstance.getServiceId(), serviceInstance.getHost(), serviceInstance.getPort());
    }

}
