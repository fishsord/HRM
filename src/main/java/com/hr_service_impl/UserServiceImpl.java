package com.hr_service_impl;

import com.hr_mapper.UserMapper;
import com.hr_mapper.userAdminMapper;
import com.hr_mapper.userAdminMapper1;
import com.hr_mapper.yingPinMapper;
import com.hr_pojo.Student;
import com.hr_pojo.User;
import com.hr_pojo.userAdmin;
import com.hr_pojo.yingPin;
import com.hr_service.UserService;
import com.hr_util.MD5;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
	@Autowired
	yingPinMapper yingpinMapper;
	@Autowired
	userAdminMapper1 useradminMapper;
    @Autowired
    MD5 md5;
    
    /**
     * 用户注册
     */
	@Override
	public int insertUser(User user) {
		String password = user.getPassword();
		String saltValue = "hrm";
		String mdpassword = md5.encrypt(password, saltValue)+"";
		user.setPassword(mdpassword);
		
		
		return userMapper.insertSelective(user);
	}
	
	/**
	 * 用户登陆验证
	 */
	@Override
	public String login(User user, RedirectAttributes re) {
		Subject subject = SecurityUtils.getSubject();

		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(),user.getPassword());
		if(!subject.isAuthenticated()){
			try {
				token.setRememberMe(true);
				subject.login(token);

			} catch (AuthenticationException ue) {
				System.err.println("不存在此账户" + ue.getMessage());
				re.addAttribute("error", "不存在此账户");
				return "redirect:login.jsp";
			}
		}

		
		
		return "redirect:index.jsp";
	}

	@Override
	public List<Student> selectUser() {
		return null;
	}

	@Override
	public List<yingPin> selectRecord()
	{
		return yingpinMapper.selectRecord();
	}
	//更改
	@Override
	public int updateRecord(yingPin yingpin)
	{
		return yingpinMapper.updateByPrimaryKey(yingpin);
	}
	//添加
	@Override
	public int insertRecord(yingPin yingpin)
	{
		return yingpinMapper.insert(yingpin);
	}
	//查询所有职位
	@Override
	public List<userAdmin> selectRecruit()
	{
		return useradminMapper.selectRecruit();
	}
	//删除职位
	@Override
	public int deleteRecuit(int uId)
	{
		return useradminMapper.deleteByPrimaryKey(uId);
	}
	//更改职位
	@Override
	public int updateRecuit(userAdmin userAdmin)
	{
		return useradminMapper.updateByPrimaryKey(userAdmin);
	}

}
