package com.tao.trans.test;

import com.tao.trans.service.IAccountService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:beans.xml")   //加载配置文件
public class TestDemo {
    @Autowired   //自动注入
    private IAccountService accountService;
    @Test
    public void test() {
        accountService.trans("rose","jack",1000);
    }
}
