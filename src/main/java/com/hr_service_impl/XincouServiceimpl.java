package com.hr_service_impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hr_mapper.XincouMapper;
import com.hr_mapper.XincouType;
import com.hr_pojo.Xincou;
import com.hr_service.XincouService;


@Service
public class XincouServiceimpl implements XincouService{

	@Autowired
	XincouMapper xm;

	@Autowired
	XincouType xt;

	@Override
	public HashMap<String, Object> searchXincouByPage(Xincou x) {
		// 创建HashMap
		HashMap<String, Object> map = new HashMap<>();
		// 取出页码参数
		int page = x.getStart();
		// 计算出数据库的查询的起始参数
		int start = (page - 1) * x.getRow();

		x.setStart(start);
		// 分页查询出来的数据
		map.put("rows", xm.selectXincouByPage(x));
		// 总条数
		map.put("total", xm.selectCount());

		return map;
	}

	@Override
	public List<Xincou> selectXincou() {
		// TODO Auto-generated method stub
		return xt.selectXincou();
	}

	@Override
	public int deleteXincou(Integer id) {
		
		return xm.deleteXincouByPage(id);
	}

	@Override
	public void addXincou(Xincou x) {
		// TODO Auto-generated method stub
		xm.addXincouByPage(x);
		
	}

	@Override
	public int updateXincou(Xincou x) {
		// TODO Auto-generated method stub
		return xm.updateXincouByPage(x);
	}

	@Override
	public List<Xincou> selectuserid(Integer userid) {
		
		return xm.selectuserid(userid);
	}

	@Override
	public Float selectPrice(Integer userid) {
		// TODO Auto-generated method stub
		return xm.selectPrice(userid);
	}

	@Override
	public int updateXincouByPage1(Xincou x) {
		// TODO Auto-generated method stub
		return xm.updateXincouByPage1(x);
	}


}
