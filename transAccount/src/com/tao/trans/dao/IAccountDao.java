package com.tao.trans.dao;

public interface IAccountDao {
    public void in(String inter, Integer money);

    public void out(String outer, Integer money);
}
