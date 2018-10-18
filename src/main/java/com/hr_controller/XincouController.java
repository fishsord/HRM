package com.hr_controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.tools.ant.types.resources.comparators.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hr_pojo.KaoQing;
import com.hr_pojo.Xincou;
import com.hr_service.XincouService;
import com.my_service.KaoQingService;
@Controller
public class XincouController {
		@Autowired
		XincouService service;
		@Autowired
		KaoQingService kaoQingService;
		
		/**
		 * 跳转到单表查询页面
		 * 
		 * @return
		 */
		@RequestMapping( value = "Xincou.action")
		public String Xincou() {
			return "Xincou";
		}

		/**
		 * 跳转到多表查询页面
		 * 
		 * @return
		 */
		@RequestMapping( value = "XincouType.action")
		public String XincouType() {

			return "XincouType";
		}

		/*
		 * 单表查询
		 */
		@RequestMapping( value = "selectXincouByte.action")
		@ResponseBody
		public HashMap<String, Object> selectXincouByte(Xincou x) {
			List<Xincou> list = service.selectuserid(1);
			for (int i = 0; i < list.size(); i++) {
				Float float1 = service.selectPrice(list.get(i).getUserid());
				List<KaoQing> list2 = kaoQingService.selectJf(list.get(i).getUserid());
				Float float2=0f;
				for(int j=0;j<list2.size();j++) {
					float2=float2+list2.get(j).getPrice();
				}
				Xincou x1 = new Xincou();
				x1.setUserid(list.get(i).getUserid());
				x1.setJiben(float1);
				float1 = float2+float1;
				
				x1.setReward(float2);
				x1.setPrice(float1);
				service.updateXincouByPage1(x1);
			}			
			
			return service.searchXincouByPage(x);
		}
		/**
		 * 多表联查
		 * 
		 * @param
		 * @return
		 */
		@RequestMapping( value = "selectXincouType.action")
		@ResponseBody
		public List<Xincou> selectXincouType(Xincou x) {

			return service.selectXincou();
		}

		/**
		 * 删除培训记录
		 */
		@RequestMapping( value = "deleteXincou.action")
		@ResponseBody
		public int deleteXincou(Integer id) {
			System.out.println(id);
			return service.deleteXincou(id);
		}
		@RequestMapping(value = "addXincou.action")
		@ResponseBody
		public boolean addXincou(Xincou x) {
			service.addXincou(x);
			return true;
		}
		/**
		 * 修改信息
		 * @param x
		 * @return
		 */
		@RequestMapping(value = "updateXincou.action")
		@ResponseBody
		public boolean updateXincou(Xincou x) {
			
			service.updateXincou(x);
			return true;
		}
		


}
