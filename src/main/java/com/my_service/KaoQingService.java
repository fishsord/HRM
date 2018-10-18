package com.my_service;

import java.util.HashMap;	
import java.util.List;

import com.hr_pojo.KaoQing;
import com.hr_pojo.TrainPerson;

public interface KaoQingService {
	/**
	 * 分页查询
	 * @param k
	 * @return
	 */
	HashMap<String, Object> searchKaoQingByPage(KaoQing k);
	/**
	 * 连接查询
	 * @return
	 */
	List<KaoQing> selectKaoQing();
	/**
	 * 删除培训记录
	 * @return
	 */
	int deleteKaoQing(Integer id);
	/**
	 * 添加信息
	 * @return
	 */
	
	int addKaoQing(KaoQing k);
	
	/**
	 * 修改培训信息
	 */
	int updateKaoQing(KaoQing k);
	List<KaoQing> selectJf(Integer userid);
}
