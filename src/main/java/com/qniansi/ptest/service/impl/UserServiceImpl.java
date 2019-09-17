package com.qniansi.ptest.service.impl;

import com.qniansi.ptest.dao.UserMapper;
import com.qniansi.ptest.model.User;
import com.qniansi.ptest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.REQUIRED,readOnly = false)
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
    public User getUserInfo(String userid) {
        return userMapper.getUserInfo(userid);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS,readOnly = false)
    public int saveUser(User user) {
        return userMapper.saveUser(user);
    }
}
