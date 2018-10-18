package com.hr_service;

import java.util.HashMap;
import java.util.List;

import com.hr_pojo.Hetong;
import com.hr_pojo.Message;

public interface StaffService {
    HashMap<String,Object> showStaff(Message m);
    String delectStaff(Message m);
    List<Message> showStaffAll(Integer id);
    int updateStaff(Message m);
    
    HashMap<String,Object> showDangan(Message m);
    String deleteDangan(Message m);
    int updateDangan(Message m);
    
    HashMap<String,Object> showHetong(Hetong h);
    String deleteHetong(Hetong h);
    int updateHetong(Hetong h);

    
}
