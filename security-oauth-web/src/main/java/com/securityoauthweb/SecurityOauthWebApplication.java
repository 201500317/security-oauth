package com.securityoauthweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = "com.securityoauthlib")
public class SecurityOauthWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(SecurityOauthWebApplication.class, args);
    }

}
