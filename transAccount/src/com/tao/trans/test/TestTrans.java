package com.tao.trans.test;

import com.tao.trans.service.IAccountService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestTrans {
    @Test
    public void test() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
        IAccountService bean = (IAccountService) context.getBean("accountService");
        bean.trans("rose","jack",1000);
    }
}
