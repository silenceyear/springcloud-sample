package com.year.generator.service.impl;

import com.year.generator.entity.User;
import com.year.generator.mapper.UserMapper;
import com.year.generator.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author MybatisPlus Generator
 * @since 2019-05-12
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
