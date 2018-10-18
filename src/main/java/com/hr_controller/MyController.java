package com.hr_controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hr_pojo.TrainPerson;
import com.hr_service.PersonService;

@Controller
public class MyController {
	@Autowired
	PersonService service;

	/**
	 * 跳转到单表查询页面
	 * 
	 * @return
	 */
	@RequestMapping( value = "trainPerson.action")
	public String trainPerson() {
		return "trainPerson";
	}

	/**
	 * 跳转到多表查询页面
	 * 
	 * @return
	 */
	@RequestMapping( value = "personType.action")
	public String personType() {

		return "personType";
	}

	/*
	 * 单表查询
	 */
	@RequestMapping( value = "selectTrainPersonByte.action")
	@ResponseBody
	public HashMap<String, Object> selectTrainPersonByte(TrainPerson t) {

		return service.searchTrainPersonByPage(t);
	}
	/**
	 * 多表联查
	 * 
	 * @param s
	 * @return
	 */
	@RequestMapping( value = "selectPersonType.action")
	@ResponseBody
	public List<TrainPerson> selectPersonType(TrainPerson t) {

		return service.selectTrainPerson();
	}

	/**
	 * 删除培训记录
	 */
	@RequestMapping( value = "deleteTrainPerson.action")
	@ResponseBody
	public int deleteTrainPerson(Integer id) {
		System.out.println(id);
		return service.deleteTrainPerson(id);
	}
	@RequestMapping(value = "addTrainPerson.action")
	@ResponseBody
	public boolean addTrainPerson(TrainPerson t) {
		service.addTrainPerson(t);
		return true;
	}
	@RequestMapping(value = "updateTrainPerson.action")
	@ResponseBody
	public boolean updateTrainPerson(TrainPerson t) {
		service.updateTrainPerson(t);
		return true;
	}


}
