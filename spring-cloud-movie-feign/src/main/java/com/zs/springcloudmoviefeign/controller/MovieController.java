package com.zs.springcloudmoviefeign.controller;

import com.zs.springcloudmoviefeign.bo.User;
import com.zs.springcloudmoviefeign.feign.UserFeignClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MovieController {

    @Autowired
    UserFeignClient userFeignClient;

    @GetMapping("/user/{id}")
    public User fingById(@PathVariable long id) {
        return userFeignClient.fingById(id);
    }

}
