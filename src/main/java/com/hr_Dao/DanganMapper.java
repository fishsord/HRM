package com.hr_Dao;

import com.hr_pojo.Dangan;

public interface DanganMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dangan record);

    int insertSelective(Dangan record);

    Dangan selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dangan record);

    int updateByPrimaryKeyWithBLOBs(Dangan record);

    int updateByPrimaryKey(Dangan record);
}