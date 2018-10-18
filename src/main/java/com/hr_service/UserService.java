package com.hr_service;

import com.hr_pojo.Student;
import com.hr_pojo.User;

import java.util.List;

import com.hr_pojo.userAdmin;
import com.hr_pojo.yingPin;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public interface UserService {

    int insertUser(User user);
    
    String login(User user, RedirectAttributes re);

    List<Student> selectUser();
    List<yingPin> selectRecord();
    List<userAdmin> selectRecruit();
    int insertRecord(yingPin yingpin);
    int updateRecord(yingPin yingpin );
    int deleteRecuit(int uId);
    int updateRecuit(userAdmin userAdmin);
}


