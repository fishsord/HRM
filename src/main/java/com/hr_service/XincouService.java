package com.hr_service;

import java.util.HashMap;
import java.util.List;

import com.hr_pojo.Xincou;

public interface XincouService {
	
	

	/**
	 * 
	 * @param 分页查询培训信息
	 * @return
	 */
	
	HashMap<String, Object> searchXincouByPage(Xincou x);
	
	/**
	 * 连接查询
	 * @return
	 */
	List<Xincou> selectXincou();
	/**
	 * 删除培训记录
	 * @return
	 */
	int deleteXincou(Integer id);
	/**
	 * 添加信息
	 * @return
	 */
	
	void addXincou(Xincou x);
	
	/**
	 * 修改培训信息
	 */
	int updateXincou(Xincou x);
	/**
	 * 
	 * @param userid
	 * @return
	 */
	List<Xincou> selectuserid(Integer userid);
	
	Float selectPrice(Integer userid);
	int updateXincouByPage1(Xincou x);
} 
