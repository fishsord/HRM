package com.my_service_impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hr_pojo.KaoQing;
import com.my_mapper.KaoQingChecks;
import com.my_mapper.KaoQingMapper;
import com.my_service.KaoQingService;
@Service
public class KaoQingService_impl implements KaoQingService{
	
	@Autowired
	KaoQingMapper kqm;
	
	@Autowired
	KaoQingChecks kqc;
	
	

	@Override
	public HashMap<String, Object> searchKaoQingByPage(KaoQing k) {
		// 创建HashMap
				HashMap<String, Object> map = new HashMap<>();
				// 取出页码参数
				int page = k.getStart();
				// 计算出数据库的查询的起始参数
				int start = (page - 1) * k.getRow();

				k.setStart(start);
				// 分页查询出来的数据
				map.put("rows", kqm.selectKaoQingByPage(k));
				// 总条数
				map.put("total", kqm.selectCount());

				return map;
	}

	@Override
	public List<KaoQing> selectKaoQing() {
		// TODO Auto-generated method stub
		return kqc.selectKaoQing();
	}

	@Override
	public int deleteKaoQing(Integer id) {
		// TODO Auto-generated method stub
		return kqm.deleteKaoQingByPage(id);
	}

	@Override
	public int addKaoQing(KaoQing k) {
		return kqm.addKaoQingByPage(k);
		
	}

	@Override
	public int updateKaoQing(KaoQing k) {
		// TODO Auto-generated method stub
		return kqm.updateKaoQingByPage(k);
	}

	@Override
	public List<KaoQing> selectJf(Integer userid) {
		// TODO Auto-generated method stub
		return kqm.selectJf(userid);
	}

}
