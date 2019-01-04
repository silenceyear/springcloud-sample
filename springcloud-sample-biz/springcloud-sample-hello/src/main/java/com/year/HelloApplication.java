package com.year;

import com.year.feign.OrderClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@SpringBootApplication
@EnableDiscoveryClient
@EnableAutoConfiguration
@RestController
@EnableFeignClients
@ComponentScan
public class HelloApplication {

    public static void main(String[] args) {
        SpringApplication.run(HelloApplication.class, args);
    }

    @Autowired
    DiscoveryClient discoveryClient;

    @RequestMapping("/services")
    public List<String> services() {
        return discoveryClient.getServices();
    }

    @Autowired
    private OrderClient orderClient;

    @RequestMapping("/getOrders")
    public String getOrders() {
        return orderClient.getOrders();
    }
}
