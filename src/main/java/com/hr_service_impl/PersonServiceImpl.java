package com.hr_service_impl;

import java.util.HashMap;		
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hr_mapper.PersonType;
import com.hr_mapper.TrainPersonMapper;
import com.hr_pojo.TrainPerson;
import com.hr_service.PersonService;

@Service
public class PersonServiceImpl implements PersonService {

	@Autowired
	TrainPersonMapper tpm;

	@Autowired
	PersonType pt;

	@Override
	public HashMap<String, Object> searchTrainPersonByPage(TrainPerson t) {
		// 创建HashMap
		HashMap<String, Object> map = new HashMap<>();
		// 取出页码参数
		int page = t.getStart();
		// 计算出数据库的查询的起始参数
		int start = (page - 1) * t.getRow();

		t.setStart(start);
		// 分页查询出来的数据
		map.put("rows", tpm.selectTrainPersonByPage(t));
		// 总条数
		map.put("total", tpm.selectCount());

		return map;
	}

	@Override
	public List<TrainPerson> selectTrainPerson() {
		// TODO Auto-generated method stub
		return pt.selectTrainPerson();
	}

	@Override
	public int deleteTrainPerson(Integer id) {
		
		return tpm.deleteTrainPersonByPage(id);
	}

	@Override
	public void addTrainPerson(TrainPerson t) {
		// TODO Auto-generated method stub
		tpm.addTrainPersonByPage(t);
		
	}

	@Override
	public int updateTrainPerson(TrainPerson t) {
		// TODO Auto-generated method stub
		return tpm.updateTrainPersonByPage(t);
	}

}
