package com.qniansi.ptest.controller;

import com.qniansi.ptest.model.User;
import com.qniansi.ptest.service.UserService;
import com.qniansi.ptest.utils.GetUser;
import com.qniansi.ptest.utils.Util;
import net.sf.json.JSONObject;
import org.apache.commons.collections.bag.SynchronizedSortedBag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class PageController {
    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public void index(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //获取授权code
        String code=request.getParameter("code");
        System.out.println(code);
        //获取用户信息
        String userinfo=GetUser.getUserInfo(code);
        if (userinfo!=null){
            //获取返回的用户信息
            JSONObject jsonObject=JSONObject.fromObject(userinfo);
            String userid=jsonObject.getString("userid");//成员UserID
            String name=jsonObject.getString("name");//成员名称
            String mobile=jsonObject.getString("mobile");//手机
            StringBuilder sbavatar=new StringBuilder(jsonObject.getString("avatar"));//头像链接
            String avatar=sbavatar.replace(sbavatar.length()-1,sbavatar.length(),"100").toString();
            User user=userService.getUserInfo(userid);
            if (user!=null){
                //更新用户信息
            }else {
                //添加用户
                user=new User();
                user.setUserid(userid);
                user.setName(name);
                user.setMobile(mobile);
                user.setAvatar(avatar);
                int result=userService.saveUser(user);
                System.out.println(result);
            }
            //本地保存用户信息
            Cookie userid_cookie=new Cookie("userid",user.getUserid());
            Cookie name_cookie=new Cookie("name",user.getName());
            Cookie avatar_cookie=new Cookie("avatar",user.getAvatar());
            response.addCookie(userid_cookie);
            response.addCookie(name_cookie);
            response.addCookie(avatar_cookie);
            //进入首页
            response.sendRedirect("/home");
        }
    }
    //首页
    @RequestMapping("/home")
    public  String home(HttpServletRequest request, HttpServletResponse response){
        return "home";
    }
    //个人页面
    @RequestMapping("/user")
    public  String user(HttpServletRequest request,HttpServletResponse response){
        return "user";
    }
}
