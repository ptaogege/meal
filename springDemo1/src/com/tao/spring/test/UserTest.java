package com.tao.spring.test;

import com.tao.spring.dao.User;
import com.tao.spring.dao.UserDao;
import com.tao.spring.service.IUserService;
import com.tao.spring.service.impl.UserServiceImpl;
import com.tao.spring.weav.MyWeaving;
import org.apache.commons.dbcp.BasicDataSource;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserTest {
    @Test
    public void test1() {
        //1.没有spring创建对象bean的方式
        /*IUserService ius = new UserServiceImpl();
        ius.addUser();*/
        //2.有spring创建对象bean的方式
        //加载配置文件
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("beans1.xml");
        IUserService userService = (IUserService) context.getBean("userservice");
        userService.addUser();
        userService.deleteUser();

    }

    @Test
    public void test2() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
        UserServiceImpl bean = context.getBean(UserServiceImpl.class);
        bean.addUser();
    }

    @Test
    public void test3() {
        IUserService userService = new UserServiceImpl();
        userService.addUser();
        userService.deleteUser();
        System.out.println("-----------------------");

        IUserService service = MyWeaving.createUserService();
        service.addUser();
        service.deleteUser();
    }

    @Test
    public void test4() {
        //创建数据源
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql:///jdbctemplat?serverTimezone=UTC");
        dataSource.setUsername("root");
        dataSource.setPassword("root");

        //创建模板
        JdbcTemplate template = new JdbcTemplate(dataSource);
        template.update("insert into t_user values(null,?,?)", "make", "66666");
    }

    @Test
    public void test5() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("beans2.xml");
        UserServiceImpl userservice = (UserServiceImpl) context.getBean("userservice");
        User user = new User();
        user.setUsername("xiexun");
        user.setPassword("14551");
        userservice.saveUser(user);
    }
}
