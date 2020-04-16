package com.dao;

import com.pojo.Bookuser;
import org.apache.ibatis.annotations.Param;

public interface Userdao {
    /**
     * 登录
     * @param name
     * @param password
     * @return
     */
    public Bookuser login(@Param("name") String name,@Param("password") String password);
}
