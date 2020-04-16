package com.servies;

import com.pojo.Bookuser;
import org.apache.ibatis.annotations.Param;

public interface UserServies {
    /**
     * 登录
     * @param name
     * @param password
     * @return
     */
    public Bookuser login(@Param("name") String name, @Param("password") String password);
}
