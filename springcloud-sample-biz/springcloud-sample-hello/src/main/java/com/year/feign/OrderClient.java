package com.year.feign;

import com.year.feign.impl.OrderClientImpl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(name="OrderService",fallback = OrderClientImpl.class)
public interface OrderClient {

    @RequestMapping(value = "/getOrders",method = RequestMethod.GET)
    String getOrders();
}
