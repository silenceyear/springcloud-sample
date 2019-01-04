package com.year.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(name="OrderService")
public interface OrderClient {

    @RequestMapping(value = "/getOrders",method = RequestMethod.GET)
    String getOrders();
}
