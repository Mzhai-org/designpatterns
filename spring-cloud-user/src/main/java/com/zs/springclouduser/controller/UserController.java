package com.zs.springclouduser.controller;

import com.zs.springclouduser.bo.User;
import com.zs.springclouduser.mapper.UserMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    UserMapper mapper;

    @GetMapping("/{id}")
    public User fingById(@PathVariable int id) {
        logger.info("被调用");
        return mapper.selectByPrimaryKey(id);
    }

}
