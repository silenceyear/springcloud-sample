package com.year.feign.impl;

import com.year.feign.OrderClient;
import org.springframework.stereotype.Component;

@Component
public class OrderClientImpl implements OrderClient {
    @Override
    public String getOrders() {
        return "getOrders error!";
    }
}
