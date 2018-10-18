package com.hr_service;

import java.util.HashMap;	
import java.util.List;

import com.hr_pojo.TrainPerson;


public interface PersonService {
	/**
	 * 
	 * @param 分页查询培训信息
	 * @return
	 */
	
	HashMap<String, Object> searchTrainPersonByPage(TrainPerson t);
	
	/**
	 * 连接查询
	 * @return
	 */
	List<TrainPerson> selectTrainPerson();
	/**
	 * 删除培训记录
	 * @return
	 */
	int deleteTrainPerson(Integer id);
	/**
	 * 添加信息
	 * @return
	 */
	
	void addTrainPerson(TrainPerson t);
	
	/**
	 * 修改培训信息
	 */
	int updateTrainPerson(TrainPerson t);
	
	

}
