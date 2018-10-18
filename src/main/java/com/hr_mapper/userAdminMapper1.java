package com.hr_mapper;

import java.util.List;

import com.hr_pojo.userAdmin;

public interface userAdminMapper1 {
    int deleteByPrimaryKey(Integer uId);

    int insert(userAdmin record);

    int insertSelective(userAdmin record);

    userAdmin selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(userAdmin record);

    int updateByPrimaryKey(userAdmin record);
    
    List<userAdmin> selectRecruit();
    
}