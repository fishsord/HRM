package com.hr_service_impl;

import java.util.List;

import com.hr_pojo.XiuId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hr_mapper.personExchangeMapper;
import com.hr_mapper.userAdminMapper;
import com.hr_pojo.personExchange;
import com.hr_pojo.userAdmin;
import com.hr_service.PersonnelService;

@Service
public class PersonnelSerivceImpl implements PersonnelService {
	@Autowired
	personExchangeMapper pem;
	
	@Autowired
	userAdminMapper uam;
	

	@Override
	public List<personExchange> selectPersonnel() {
		
		return pem.selectExchangUser();
	}

	@Override
	public int updatePersonnel(personExchange pe) {
		
		return pem.updateByPrimaryKeySelective(pe);
	}

	@Override
	public int userAdmin(XiuId ua) {
		return uam.updateByPrimaryKeySelective(ua);

	}

	@Override
	public int insertPersonnel(personExchange pe) {
		
		return pem.insert(pe);
	}

	@Override
	public userAdmin selectAdminPersonnel(userAdmin ua) {
		
		return uam.selectUAP(ua.getuId());
	}

	@Override
	public List<userAdmin> selectAdminPersonnelall(userAdmin ua) {
		
		return uam.selectall();
	}

	@Override
	public List<userAdmin> selectUshen() {
		return uam.selectUshen();
	}

}
