package com.year;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableDiscoveryClient
@EnableAutoConfiguration
@RestController
public class HelloApplication {

    public static void main(String[] args) {
        SpringApplication.run(HelloApplication.class, args);
    }

        /*@Autowired
    DiscoveryClient discoveryClient;

    @RequestMapping("/services")
    public List<String> services(){
        return discoveryClient.getServices();
    }*/

    @Value("${hello}")
    private String hello;

    @RequestMapping("hello")
    public String hello() {
        return hello;
    }
}
