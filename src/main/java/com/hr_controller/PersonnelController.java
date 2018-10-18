package com.hr_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hr_pojo.XiuId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hr_pojo.personExchange;
import com.hr_pojo.userAdmin;
import com.hr_service.PersonnelService;

@Controller
public class PersonnelController {
	
	@Autowired
	PersonnelService ps;
	
	
	/**
	 * 人事调配查询
	 */
	@RequestMapping("/selectpersonnel.action")
	public String selectPersonnel(HttpServletRequest req,userAdmin ua){
		req.setAttribute("a", ps.selectAdminPersonnelall(ua));
		req.getSession().setAttribute("list",ps.selectUshen());

		return "/selectpersonnel.jsp";
	}
	
	
	@RequestMapping("/onlyselectpersonnel.action")
	public String onlyselectPersonnel(HttpServletRequest req){
		req.setAttribute("p", ps.selectPersonnel());
		return "/onlyselectpersonnel.jsp";
	}
	
	
	/**
	 * 人事调配记录修改
	 * @param pe
	 * @return
	 */
	@RequestMapping("/updatePersonnel.action")
	public String updatePersonnel(XiuId ua, HttpServletRequest req, personExchange pe) {
		ps.userAdmin(ua);
		userAdmin userAdmin = new userAdmin();
		userAdmin.setuId(ua.getId());
		req.setAttribute("ap", ps.selectAdminPersonnel(userAdmin));
		pe.setUserid(ua.getId());
		List<userAdmin> list = ps.selectUshen();
		String news = "";

		for(int i=0;i<list.size();i++){
			if(list.get(i).getuId()==ua.getUserAdminId()){
				news = list.get(i).getuShen();
			}
		}
		pe.setNews(news);
		ps.insertPersonnel(pe);
		return "/selectpersonnel.action";
	}
	
	/**
	 * 查询所有员工职务
	 */
}
