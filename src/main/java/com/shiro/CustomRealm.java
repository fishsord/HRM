package com.shiro;

import com.hr_mapper.UserMapper;
import com.hr_pojo.User;
import com.hr_util.MD5;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CustomRealm extends AuthorizingRealm {
    @Autowired
    UserMapper userMapper;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
        //从token中获取到用户名和密码
        String userName = token.getUsername();
        String password = new String(token.getPassword());
        User user = userMapper.getUserName(userName);

        HashMap returnMap = null;
        String st = null;
        try {
            MD5 md5 = new MD5();
            st = md5.encrypt(password, "hrm").toString();


        } catch (Exception e) {
            e.printStackTrace();
        }

        //存在后返回一个对象，包含用户名和密码，对用户名和密码进行验证
        if (user.getPassword().equals(st)) {
            //如果存在该用户，则返回一个用户信息对象,此处用户主要信息传入为userName，凭证传入为password（可传任意对象）
            return new SimpleAuthenticationInfo(userName, password, getName());
        } else {
            //如果没有该用户，则抛出一个异常（此处必须抛出异常）
            throw new AuthenticationException();
        }
    }

    /**
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        // 获取身份信息
        String username = (String) principals.getPrimaryPrincipal();
        User user = userMapper.getUserName(username);
        // 根据身份信息从数据库中查询权限数据
        // 这里使用静态数据模拟
        List<String> permissions = new ArrayList<String>();
        permissions.add("user");


        // 将权限信息封闭为AuthorizationInfo
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        // 模拟数据，添加 manager 角色
        String role = "";
        if (user.getUseradminid() == 6) {
            role="admin";
        }

        if (user.getUseradminid() == 3) {
            role="user";
        }


        simpleAuthorizationInfo.addRole(role);

        for (String permission : permissions) {
            simpleAuthorizationInfo.addStringPermission(permission);
        }

        return simpleAuthorizationInfo;
    }
}
