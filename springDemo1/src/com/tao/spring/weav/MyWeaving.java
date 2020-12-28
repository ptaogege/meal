package com.tao.spring.weav;

import com.tao.spring.aspect.MyAspect;
import com.tao.spring.service.IUserService;
import com.tao.spring.service.impl.UserServiceImpl;
import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class MyWeaving {
    public static IUserService createUserService() {
        //1.目标类
        IUserService userService = new UserServiceImpl();
        //2.切面类
        MyAspect myAspect = new MyAspect();
        //3.cglib
        Enhancer enhancer = new Enhancer();
        enhancer.setSuperclass(userService.getClass());
        enhancer.setCallback(new MethodInterceptor() {
            @Override
            public Object intercept(Object o, Method method, Object[] objects, MethodProxy methodProxy) throws Throwable {
                myAspect.before();
                Object aSuper = methodProxy.invokeSuper(o, objects);
                myAspect.after();
                return aSuper;
            }
        });
        UserServiceImpl proxy = (UserServiceImpl) enhancer.create();
        return proxy;

        //3.weaving
        /*IUserService proxyService = (IUserService) Proxy.newProxyInstance(MyWeaving.class.getClassLoader(), userService.getClass().getInterfaces(), new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                myAspect.before();
                Object invoke = method.invoke(userService, args);
                myAspect.after();
                return invoke;
            }
        });
        return proxyService;*/
    }
}
