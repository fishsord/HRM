package com.hr_service;

import java.util.List;

import com.hr_pojo.XiuId;
import com.hr_pojo.personExchange;
import com.hr_pojo.userAdmin;

public interface PersonnelService {
	
	List<personExchange> selectPersonnel();
	
	int updatePersonnel(personExchange pe);
	
	int userAdmin(XiuId ua);
	
	int insertPersonnel(personExchange pe);
	
	userAdmin selectAdminPersonnel(userAdmin ua);
	
	List<userAdmin> selectAdminPersonnelall(userAdmin ua);

	List<userAdmin> selectUshen();
}
