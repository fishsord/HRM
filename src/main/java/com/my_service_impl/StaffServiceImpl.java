package com.my_service_impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hr_Dao.HetongMapper;
import com.hr_Dao.MessageMapper;
import com.hr_pojo.Hetong;
import com.hr_pojo.Message;
import com.hr_service.StaffService;


@Service
public class StaffServiceImpl implements StaffService{
	private static final String success="success";
	private static final String error="error";
    @Autowired
	MessageMapper mapper;
    @Autowired
    HetongMapper hmapper;
	@Override
	public HashMap<String, Object> showStaff(Message m) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		int page = m.getStart();
		int start = (page-1)*m.getRows();
		m.setStart(start);
      // 取出数据并计算出总数，将其放入map集合中
		map.put("rows", mapper.selectStudentByPage(m));
		map.put("count", mapper.Selectcount());
		System.out.println(map.toString());
		return map;
	}
	@Override
	public String delectStaff(Message m) {
		try {
			return (mapper.deleteByPrimaryKey(m.getId())>0 && mapper.deleteById(m.getId())>0 && mapper.deleteByHetong(m.getId())>0)?success:error;
		} catch (Exception e) {
			return error;
		}
	}
	@Override
	public List<Message> showStaffAll(Integer id) {
		
		return mapper.StaffAll(id);
	}
	@Override
	public int updateStaff(Message m) {
		
		if(mapper.updateByStaff(m)>0 && mapper.updateByPrimaryKey(m)>0) {
			return 1;
		};
		return 0;
	}
   // 档案
	@Override
	public HashMap<String, Object> showDangan(Message m) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int page = m.getStart();
		int start = (page-1)*m.getRows();
		m.setStart(start);
      // 取出数据并计算出总数，将其放入map集合中
		map.put("rows", mapper.selectDanganByPage(m));
		map.put("count", mapper.Selectcount());
		System.out.println(map.toString());
		return map;
	}
	
	@Override
	public String deleteDangan(Message m) {
		
		return mapper.deleteByDangan(m.getId())>0?success:error;
	}
	@Override
	public int updateDangan(Message m) {
		
		return mapper.updateByDangan(m);
	}
   // 合同列表
	@Override
	public HashMap<String, Object> showHetong(Hetong h) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		int page = h.getStart();
		int start = (page-1)*h.getRows();
		h.setStart(start);
      // 取出数据并计算出总数，将其放入map集合中
		map.put("rows", hmapper.selectHetong(h));
		map.put("count", hmapper.Selectcount());
		System.out.println(map.toString());
		return map;       
	}
	@Override
	public String deleteHetong(Hetong h) {

		return hmapper.deleteByHetong(h.getUserid())>0?success:error;
	}
	@Override
	public int updateHetong(Hetong h) {
		
		return hmapper.updateByHetong(h);
	}

}
