package com.zs.springclouduserauth.controller;

import com.zs.springclouduserauth.bo.User;
import com.zs.springclouduserauth.mapper.UserMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

@RestController
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    UserMapper mapper;

    @GetMapping("/{id}")
    public User fingById(@PathVariable int id) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            UserDetails  user = (UserDetails)principal;
            Collection<? extends GrantedAuthority> collection = user.getAuthorities();
            for (GrantedAuthority auth: collection) {
                logger.info("当前用户是: {}, 角色是: {}", user.getUsername(), auth.getAuthority());
            }
        } else {
            logger.info("用户验证未通过");
        }

        return mapper.selectByPrimaryKey(id);
    }

}
