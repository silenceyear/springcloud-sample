package com.year.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.year.generator.entity.User;
import com.year.generator.service.UserService;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.UUID;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author MybatisPlus Generator
 * @since 2019-05-12
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/query.do")
    public ResponseEntity query() {
        IPage<User> page = userService.lambdaQuery()
                .eq(User::getStatus, true)
                .and(wrapper ->
                        wrapper.le(User::getMoney, 200000)
                                .or(wrapper1 -> wrapper1.ge(User::getMoney, 600000))
                )
                .orderByDesc(User::getMoney)
                .page(new Page(1,5));

        return ResponseEntity.ok(page);
    }

    @RequestMapping("/add.do")
    public ResponseEntity add() {
        new User()
                .setUsername(LocalTime.now().toString())
                .setUid(UUID.randomUUID().toString().replaceAll("-", ""))
                .setPassword(DigestUtils.md5Hex("123456"))
                .setMoney(new BigDecimal(RandomUtils.nextDouble(100000, 1000000)))
                .setBirthday(LocalDate.of(1992, 7, 16))
                .insert()
        ;
        return query();
    }
}

