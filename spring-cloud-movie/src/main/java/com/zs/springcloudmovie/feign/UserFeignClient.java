package com.zs.springcloudmovie.feign;

import com.zs.springcloudmovie.bo.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

public interface UserFeignClient {

    /*
    手动创建feign的时候，去掉了@FeignClient注解，@PathVariable必须指明value不然启动会抛出llegalStateException异常
     */
    @GetMapping("/{id}")
    User findById(@PathVariable(value = "id") long id);

}
