package com.zs.springcloudmovie.feign;

import com.zs.springcloudmovie.bo.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

public interface UserFeignClient {

    @GetMapping("/{id}")
    User findById(@PathVariable long id);

}
