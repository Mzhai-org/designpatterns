package com.zs.springclouduser;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@MapperScan("com.zs.springclouduser.mapper")
@SpringBootApplication
@EnableTransactionManagement
public class SpringCloudUserApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringCloudUserApplication.class, args);
	}

}
