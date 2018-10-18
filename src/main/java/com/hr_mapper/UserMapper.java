package com.hr_mapper;

import com.hr_pojo.Student;

import java.util.List;
import com.hr_pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	List<Student> selectUser();
	
	User getUserName(String username);
}
