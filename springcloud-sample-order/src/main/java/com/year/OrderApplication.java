package com.year;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@EnableAutoConfiguration
@EnableDiscoveryClient
@RestController
public class OrderApplication {

    public static void main(String[] args) {
        SpringApplication.run(OrderApplication.class,args);
    }

    @Autowired
    DiscoveryClient discoveryClient;

    @RequestMapping("/services")
    public List<String> services(){
        return discoveryClient.getServices();
    }

    @Value("${key}")
    private String key;

    @RequestMapping("/getKey")
    public String getKey(){
        return key;
    }
}
