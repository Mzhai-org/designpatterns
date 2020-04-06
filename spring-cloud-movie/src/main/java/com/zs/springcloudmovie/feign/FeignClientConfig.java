package com.zs.springcloudmovie.feign;

import feign.Client;
import feign.Contract;
import feign.Feign;
import feign.auth.BasicAuthRequestInterceptor;
import feign.codec.Decoder;
import feign.codec.Encoder;
import org.springframework.cloud.openfeign.FeignClientsConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import(FeignClientsConfiguration.class)
public class FeignClientConfig {

    @Bean
    public UserFeignClient userUserFeignClient(Decoder decoder, Encoder encoder, Client client, Contract contract) {
    return Feign.builder().client(client).encoder(encoder).decoder(decoder).contract(contract)
        .requestInterceptor(new BasicAuthRequestInterceptor("user", "password1"))
        .target(UserFeignClient.class, "http://microservice-provider-user-auth/");
    }

    @Bean
    public UserFeignClient adminUserFeignClient(Decoder decoder, Encoder encoder, Client client, Contract contract) {

        return Feign.builder().client(client).encoder(encoder).decoder(decoder).contract(contract)
                .requestInterceptor(new BasicAuthRequestInterceptor("admin", "password2"))
                .target(UserFeignClient.class, "http://microservice-provider-user-auth/");
    }

}
