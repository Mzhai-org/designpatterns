package com.zs.springcloudmicroservice.controller;

import com.zs.springcloudmicroservice.bo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class TestController {
    @Autowired
    private RestTemplate restTemplate;

    /*
    通过restTemplate使用url调用目标服务，目前来看没有问题，但是url属于硬编码即使提取到配置文件中，扩展也受限制，
    当服务提供者更改url时，需要随之改变.除此之外微服务节点需要自伸缩性，需要扩展多个节点的情况下，硬编码无法适应这种需求。
     */
    @GetMapping("user/{id}")
    public User getUserById(@PathVariable int id) {
        return restTemplate.getForObject("http://localhost:8082/" + id, User.class);
    }
}
