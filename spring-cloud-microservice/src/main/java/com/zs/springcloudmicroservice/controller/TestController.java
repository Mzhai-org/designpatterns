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

    @GetMapping("user/{id}")
    public User getUserById(@PathVariable int id) {
        return restTemplate.getForObject("http://localhost:8080/" + id, User.class);
    }
}
