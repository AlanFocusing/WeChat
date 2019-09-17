package com.qniansi.ptest.test;

import com.qniansi.ptest.model.User;
import com.qniansi.ptest.service.UserService;
import com.qniansi.ptest.utils.GetAccessToken;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class Test1 {

    @Autowired
    private UserService userService;
    @Test
    public  void t(){
        System.out.println(GetAccessToken.getAccessToken());
    }
    @Test
    public  void t2(){
        User newuser=new User();
        newuser.setUserid("userid");
        newuser.setName("name");
        newuser.setMobile("mobile");
        newuser.setAvatar("avatar");
        int result=userService.saveUser(newuser);
        System.out.println(result);
    }
}
