package com.base.plantform.dao;

import com.base.plantform.entity.SysUser;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/2/27.
 */
@Repository
public interface UserDao {

    int saveUser(SysUser sysUser);

    int updateUser();

    int deleteUser();

    SysUser findUserByUserName(String userName);
}
