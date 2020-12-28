package com.tao.trans.service.impl;

import com.tao.trans.dao.IAccountDao;
import com.tao.trans.service.IAccountService;

public class AccountServiceImpl implements IAccountService {

    private IAccountDao dao;

    public void setDao(IAccountDao dao) {
        this.dao = dao;
    }

    @Override
    public void trans(String inter, String outer, Integer money) {
        this.dao.in(inter, money);
        this.dao.out(outer,money);
    }
}
