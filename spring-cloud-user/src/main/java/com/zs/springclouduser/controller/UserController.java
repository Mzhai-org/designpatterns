package com.zs.springclouduser.controller;

import com.zs.springclouduser.bo.User;
import com.zs.springclouduser.mapper.UserMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    UserMapper mapper;

    @GetMapping("/{id}")
//    @Transactional 开启spring 事务时可以观察到mybatis一级缓存的效果
    public User fingById(@PathVariable int id) {
        logger.info("被调用");
        //测试mybatis一级缓存，一级缓存的作用域是sqlsession。
        //mapper.selectByPrimaryKey(id);
        return mapper.selectByPrimaryKey(id);
    }

}
