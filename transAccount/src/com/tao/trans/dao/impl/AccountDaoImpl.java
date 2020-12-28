package com.tao.trans.dao.impl;

import com.tao.trans.dao.IAccountDao;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class AccountDaoImpl extends JdbcDaoSupport implements IAccountDao {
    @Override
    public void in(String inter, Integer money) {
        //转入
        this.getJdbcTemplate().update("update account set money = money + ? where username = ?", money, inter);
    }

    @Override
    public void out(String outer, Integer money) {
        //转出
        this.getJdbcTemplate().update("update account set money = money - ? where username = ?", money, outer);
    }
}
