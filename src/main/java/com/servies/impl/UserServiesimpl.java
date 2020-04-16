package com.servies.impl;

import com.dao.Userdao;
import com.pojo.Bookuser;
import com.servies.UserServies;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userServies")
public class UserServiesimpl implements UserServies {
    @Resource
    private Userdao userdao;
    /**
     * 登录
     * @param name
     * @param password
     * @return
     */
    public Bookuser login(@Param("name") String name, @Param("password") String password){
        return  userdao.login(name,password);
    }

    public static void main(String[] args) {
        ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
       UserServies userServies=(UserServies)ctx.getBean("userServies");

        System.out.println( userServies.login("admin","123"));
        System.out.println("test");
    }
}
