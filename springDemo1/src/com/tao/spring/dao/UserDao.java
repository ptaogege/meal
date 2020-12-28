package com.tao.spring.dao;

import org.springframework.jdbc.core.JdbcTemplate;

public class UserDao {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void saveUser(User user) {
        jdbcTemplate.update("insert into t_user values(null,?,?)", user.getUsername(), user.getPassword());
    }
}
