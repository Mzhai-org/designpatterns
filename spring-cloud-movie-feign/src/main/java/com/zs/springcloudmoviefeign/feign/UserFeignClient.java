package com.zs.springcloudmoviefeign.feign;

import com.zs.springcloudmoviefeign.bo.User;
import feign.Param;
import feign.RequestLine;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/*
@FeignClient中的name 是user service注册到eureka server中的名词，用来创建一个Ribbon负载均衡器。
因为同时使用了Ribbon 和 Eureka。
Ribbon会把microservice-provider-user 也就是虚拟主机名与Eureka Server中的注册信息自动映射，寻找到对应的ip，完成负载均衡。
 */
@FeignClient(name = "microservice-provider-user", configuration = FeignConfiguration.class)
public interface UserFeignClient {

    /*
    spring cloud中的feign默认的契约是SpringMvcContract 所以可以使用mvc的注解
     */
//    @GetMapping("/{id}")
//    User fingById(@PathVariable long id);

    /*
    配置修改为feign默认契约后 可以使用feign自己的注解。
     */
    @RequestLine("GET /{id}")
    User feignFingById(@Param("id") long id);
}
