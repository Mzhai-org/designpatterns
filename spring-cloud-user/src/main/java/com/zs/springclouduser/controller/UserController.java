package com.zs.springclouduser.controller;

import com.zs.springclouduser.bo.User;
import com.zs.springclouduser.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    UserMapper mapper;

    @GetMapping("/{id}")
    public User fingById(@PathVariable int id) {
        return mapper.selectByPrimaryKey(id);
    }

}
