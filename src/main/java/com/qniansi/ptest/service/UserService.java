package com.qniansi.ptest.service;

import com.qniansi.ptest.model.User;

public interface UserService {
    User getUserInfo(String userid);
    int saveUser(User user);
}
