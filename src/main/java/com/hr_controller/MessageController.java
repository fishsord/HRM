package com.hr_controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hr_pojo.Dangan;
import com.hr_pojo.Hetong;
import com.hr_pojo.Message;
import com.hr_service.StaffService;

@Controller
public class MessageController {
	
	@Autowired
    StaffService ss;
   // 对人员信息操作	
	@RequestMapping(value="selectStaff.action")
	public @ResponseBody HashMap<String,Object> selectStaff(Message m) {
		System.out.println(m.getStart());
    	return ss.showStaff(m);	
    }
	@RequestMapping(value="delectStaff.action")
	public @ResponseBody String delectStaff(Message m) {
		System.out.println("欢迎来到这里");
		
		return ss.delectStaff(m);
		
	}
	@RequestMapping("/showStaffAll.action")
	public String showStaffAll(HttpServletRequest req,Integer staffId) {
		req.setAttribute("Message", ss.showStaffAll(staffId));
		return "/staffAll.jsp";
		
	}
	@RequestMapping("/updateStaff.action")
	public String updateStaff(Message m) {
		System.out.println(m.toString());
		ss.updateStaff(m);
		return "showStaffAll.action?staffId="+m.getId();
		
	}
    //	对档案进行操作
	@RequestMapping(value="selectDangan.action")
	public @ResponseBody HashMap<String,Object> selectDangan(Message m) {
		
		return ss.showDangan(m);
		
	}
	@RequestMapping(value="deleteDangan.action")
	public @ResponseBody String deleteDangan(Message m) {
		System.out.println(m.getId());
		return ss.deleteDangan(m);
	}
	@RequestMapping(value="updateDangan.action")
	public @ResponseBody int updateDangan(Message m) {
		
		return ss.updateDangan(m);
		
	}
   //对合同进行操作
	@RequestMapping(value="selectHetong.action")
	public @ResponseBody HashMap<String,Object> selectHetong(Hetong h) {
		
		return ss.showHetong(h);
	}
	@RequestMapping(value="deleteHetong.action")
	public @ResponseBody String deleteHeong(Hetong h) {
		return ss.deleteHetong(h);
	}
	@RequestMapping(value="updateHetong.action")
	public @ResponseBody int updateHetong(Hetong h) {
		
		return ss.updateHetong(h);
	}	
}
