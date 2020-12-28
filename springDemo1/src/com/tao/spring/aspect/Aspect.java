package com.tao.spring.aspect;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class Aspect implements MethodInterceptor {
    @Override
    public Object invoke(MethodInvocation methodInvocation) throws Throwable {
        System.out.println("before.........");
        Object proceed = methodInvocation.proceed();
        System.out.println("after..........");
        return proceed;
    }
}
