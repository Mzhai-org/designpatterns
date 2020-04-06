package com.zs.springcloudmoviefeign.feign;

import feign.Contract;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/*
该类为Feign的配置类
该类不应该出现在主应用程序上下文的@ComponentScan中
不然这个配置信息将会被所有的feign client共享。
 */
@Configuration
public class FeignConfiguration {

    /**
     * spring cloud中 feign默认使用的契约是springMvcContract 所以在定义feign接口时可以使用mvc的注解
     * 现在设置成feign默认的契约这样就可以使用feign自己的注解了，
     * @return
     */
    @Bean
    public Contract feignContract() {
        return new feign.Contract.Default();
    }

}
