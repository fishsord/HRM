package com.hr_controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hr_pojo.KaoQing;
import com.hr_pojo.TrainPerson;
import com.my_service.KaoQingService;

@Controller
public class KaoQingcontroller {
	@Autowired
	KaoQingService service;
	/**
	 * 跳转到单表查询页面
	 * 
	 * @return
	 */
	@RequestMapping( value = "KaoQing.action")
	public String KaoQing() {
		return "KaoQing";
	}

	/**
	 * 跳转到多表查询页面
	 * 
	 * @return
	 */
	@RequestMapping( value = "KaoQingCheck.action")
	public String KaoQingCheck() {

		return "KaoQingCheck";
	}

	/*
	 * 单表查询
	 */
	@RequestMapping( value = "selectKaoQingByte.action")
	@ResponseBody
	public HashMap<String, Object> selectKaoQingByte(KaoQing k) {

		return service.searchKaoQingByPage(k);
	}

	/**
	 * 多表联查
	 * 
	 * @param s
	 * @return
	 */
	@RequestMapping( value = "selectKaoQingType.action")
	@ResponseBody
	public List<KaoQing> selectKaoQingType(KaoQing k) {

		return service.selectKaoQing();
	}
	/**
	 * 删除培训记录
	 */
	@RequestMapping( value = "deleteKaoQing.action")
	@ResponseBody
	public int deleteKaoQing(Integer id) {
		System.out.println(id);
		return service.deleteKaoQing(id);
	}
	/**
	 * 添加
	 * @param t
	 * @return
	 */
	@RequestMapping(value = "addKaoQing.action")
	@ResponseBody
	public int addKaoQing(KaoQing k) {
		
		return service.addKaoQing(k);
	}
	/**
	 * 修改
	 * @param t
	 * @return
	 */
	@RequestMapping(value = "updateKaoQing.action")
	@ResponseBody
	public boolean updateKaoQing(KaoQing k) {
		service.updateKaoQing(k);
		return true;
	}


}
