package com.hr_mapper;

import java.util.List;

import com.hr_pojo.XiuId;
import com.hr_pojo.userAdmin;

public interface userAdminMapper {
    int deleteByPrimaryKey(Integer uId);

    int insert(userAdmin record);

    int insertSelective(userAdmin record);

    userAdmin selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(XiuId ua);

    int updateByPrimaryKey(userAdmin record);
    
    userAdmin selectUAP(Integer uId);
    
    List<userAdmin> selectall();
    List<userAdmin> selectUshen();
}