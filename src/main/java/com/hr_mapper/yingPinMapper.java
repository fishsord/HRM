package com.hr_mapper;

import java.util.List;

import com.hr_pojo.yingPin;

public interface yingPinMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(yingPin record);

    int insertSelective(yingPin record);

    yingPin selectByPrimaryKey(Integer id);
    
    int updateByPrimaryKeySelective(yingPin record);

    int updateByPrimaryKey(yingPin record);
    
    List<yingPin> selectRecord();

    
}