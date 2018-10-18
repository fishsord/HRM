package com.hr_Dao;

import java.util.HashMap;
import java.util.List;

import com.hr_pojo.Hetong;
import com.hr_pojo.Message;

public interface HetongMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Hetong record);

    int insertSelective(Hetong record);

    Hetong selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Hetong record);

    int updateByPrimaryKeyWithBLOBs(Hetong record);

    int updateByPrimaryKey(Hetong record);
    /**
     *  数据统计
     */
    int Selectcount();
    /**
     * 一系列删、改、查操作
     * @param h
     * @return
     */
    
    
    List<Hetong> selectHetong(Hetong h);
    
    int updateByHetong(Hetong h);
    
    int deleteByHetong(Integer id);
}