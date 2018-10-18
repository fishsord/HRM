package com.hr_controller;

import com.hr_pojo.*;
import com.hr_service.UserService;
import com.hr_service.UseridService;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @Autowired
    UseridService useridService;


    /**
     * 这是用户注册
     *
     * @param user
     * @return
     */
    @RequestMapping("/insert.action")
    public String insertUser(User user) {

        String username = user.getUsername();
        user.setUseradminid(2);
        userService.insertUser(user);

        //得到user的id;
        //添加message表占位
        int userid = useridService.selectUserid(username).getId();
        Message message = new Message();
        message.setUserid(userid);
        message.setBumen("3");
        message.setZhiwu("1");
        useridService.insertMessage(message);
        //添加dangan表占位
        Dangan d = new Dangan();
        d.setUserid(userid);
        useridService.insertDangan(d);
        //添加hetong表占位
        Hetong ht = new Hetong();
        ht.setUserid(userid);
        ht.setZhiwu(1);
        useridService.insertHetong(ht);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        token.setRememberMe(true);
        return "redirect:/index.jsp";
    }
    /**
     * 这是用户登陆
     */
    @RequestMapping(value = "/login.action")
    public String loginUser(User user, RedirectAttributes re) {

        return userService.login(user, re);
    }

    @RequestMapping("/user")
    public ModelAndView selectUser() {
        List<Student> students = userService.selectUser();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("students", students);
        modelAndView.setViewName("recruit/records.jsp");
        return modelAndView;
    }

    //后台应聘者信息查询主页
    @RequestMapping("/record.action")
    public ModelAndView selectRecord() {
        List<yingPin> pins = userService.selectRecord();
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("yingpinList", pins);
        modelAndView.setViewName("recruit/records.jsp");
        return modelAndView;

    }

    //后台添加招聘者
    @RequestMapping("/insertform.action")
    public ModelAndView insertRecord(yingPin yingpin) {
        userService.insertRecord(yingpin);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("record.action");
        return modelAndView;

    }


    //后台修改应聘者信息
    @RequestMapping("/updateform.action")
    public ModelAndView updateRecord(yingPin yingpin) {
        userService.updateRecord(yingpin);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("record.action");
        return modelAndView;

    }

    //后台发布职位查询主页面
    @RequestMapping("/recruitment.action")
    public ModelAndView selectRecruit() {
        List<userAdmin> zw = userService.selectRecruit();
        ModelAndView modelAndView = new ModelAndView();
        zw.remove(4);
        modelAndView.addObject("zhiweiList", zw);
        modelAndView.setViewName("recruit/recruitment.jsp");
        return modelAndView;
    }

    //后台删除某职位招聘
    @RequestMapping("/deleteform.action")
    public ModelAndView deleteRecruitment(int uId) {
        userService.deleteRecuit(uId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("recruitment.action");
        return modelAndView;
    }

    //后台修改某职位信息
    @RequestMapping("/updateRec.action")
    public ModelAndView updateRec(userAdmin userAdmin) {
        userService.updateRecuit(userAdmin);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("recruitment.action");
        return modelAndView;

    }

    //前台招聘主网页职位查询
    @RequestMapping("/insertformY.action")
    public ModelAndView insertRecordY(yingPin yingpin) {
        userService.insertRecord(yingpin);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("apply.action");
        return modelAndView;

    }

    //前台申请查询职位跳转写简历提交
    @RequestMapping("/apply.action")
    public ModelAndView selectApply() {
        List<userAdmin> zhiwei = userService.selectRecruit();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("applyList", zhiwei);
        modelAndView.setViewName("recruit/Apply.jsp");
        return modelAndView;
    }
}
