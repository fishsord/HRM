package com.hr_mapper;

import java.util.List;	

import com.hr_pojo.TrainPerson;

public interface PersonType {
	/**
	 * 分页查询
	 * @return
	 */
	
	List<TrainPerson> selectTrainPerson();

}
