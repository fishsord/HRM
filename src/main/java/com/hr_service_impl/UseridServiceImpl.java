package com.hr_service_impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hr_mapper.UserMapper;
import com.hr_pojo.Dangan;
import com.hr_pojo.Hetong;
import com.hr_pojo.Message;
import com.hr_pojo.User;
import com.hr_service.UseridService;

@Service
public class UseridServiceImpl implements UseridService {
	
	@Autowired
	UserMapper um;

	

	@Override
	public User selectUserid(String username) {
		
		return um.getUserName(username);
	}

	@Override
	public int insertMessage(Message m) {
		return 0;
	}

	@Override
	public int insertDangan(Dangan d) {
		return 0;
	}

	@Override
	public int insertHetong(Hetong ht) {
		return 0;
	}


}
