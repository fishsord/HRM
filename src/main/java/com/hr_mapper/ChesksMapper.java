package com.hr_mapper;

import com.hr_pojo.Checks;

public interface ChesksMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Checks record);

    int insertSelective(Checks record);

    Checks selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Checks record);

    int updateByPrimaryKey(Checks record);
}