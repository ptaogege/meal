package com.tao.spring.service;

import com.tao.spring.dao.User;

public interface IUserService {
    public void addUser();
    public void deleteUser();
    public void saveUser(User user);
}
