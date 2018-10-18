package com.hr_service;

import com.hr_pojo.Dangan;
import com.hr_pojo.Hetong;
import com.hr_pojo.Message;
import com.hr_pojo.User;

public interface UseridService {
	
	User selectUserid(String username);
	
	//添加message表占位(占 userid,bumen,zhiwu)
	int insertMessage(Message m);
	
	//添加dangan表占位(占userid)
	int insertDangan(Dangan d);
	
	//添加hetong表占位(占 userid , zhiwu)
	int insertHetong(Hetong ht);

}
