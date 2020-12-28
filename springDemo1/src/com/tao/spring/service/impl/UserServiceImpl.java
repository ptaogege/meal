package com.tao.spring.service.impl;

import com.tao.spring.dao.User;
import com.tao.spring.dao.UserDao;
import com.tao.spring.service.IUserService;
import org.springframework.stereotype.Component;

@Component
public class UserServiceImpl implements IUserService {
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void addUser() {
        System.out.println("添加用户............");
    }

    @Override
    public void deleteUser() {
        System.out.println("删除用户............");
    }

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
    }
}
