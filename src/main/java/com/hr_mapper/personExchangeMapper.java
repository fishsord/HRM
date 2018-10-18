package com.hr_mapper;

import java.util.List;

import com.hr_pojo.XiuId;
import com.hr_pojo.personExchange;

public interface personExchangeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(personExchange record);

    int insertSelective(personExchange record);

    personExchange selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(personExchange record);

    int updateByPrimaryKey(personExchange record);
    
    List<personExchange> selectExchangUser();
}