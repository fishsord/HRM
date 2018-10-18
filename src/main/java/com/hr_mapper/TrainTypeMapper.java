package com.hr_mapper;

import com.hr_pojo.TrainType;

public interface TrainTypeMapper {
    int insert(TrainType record);

    int insertSelective(TrainType record);
}