package com.zs.springcloudmovie.controller;

import com.zs.springcloudmovie.bo.User;
import com.zs.springcloudmovie.feign.UserFeignClient;
import feign.Client;
import feign.Contract;
import feign.Feign;
import feign.auth.BasicAuthRequestInterceptor;
import feign.codec.Decoder;
import feign.codec.Encoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.cloud.openfeign.FeignClientsConfiguration;
import org.springframework.context.annotation.Import;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Import(FeignClientsConfiguration.class)
@RestController
public class MovieController {

    private UserFeignClient userUserFeignClient;

    private UserFeignClient adminUserFeignClient;

    @Autowired
    DiscoveryClient discoveryClient;

    @Autowired
    public MovieController(Decoder decoder, Encoder encoder, Client client, Contract contract) {
        this.userUserFeignClient = Feign.builder().client(client).encoder(encoder).decoder(decoder).contract(contract)
                .requestInterceptor(new BasicAuthRequestInterceptor("user", "password1"))
                .target(UserFeignClient.class, "http://microservice-provider-user-auth/");

        this.adminUserFeignClient = Feign.builder().client(client).encoder(encoder).decoder(decoder).contract(contract)
                .requestInterceptor(new BasicAuthRequestInterceptor("admin", "password2"))
                .target(UserFeignClient.class, "http://microservice-provider-user-auth/");
    }

    /*
    返回目标服务的元数据信息，包括eureka自带的元数据，hsot ip等等  还有自定义的元数据
     */
    @GetMapping("/user-instance")
    public List<ServiceInstance> showInfo() {
        return this.discoveryClient.getInstances("microservice-provider-user-auth");
    }

    @GetMapping("/user-login/{id}")
    public User fingByUser(@PathVariable long id) {
        return this.userUserFeignClient.findById(id);
    }

    @GetMapping("/admin-login/{id}")
    public User fingByAdmin(@PathVariable long id) {
        return this.adminUserFeignClient.findById(id);
    }
}
