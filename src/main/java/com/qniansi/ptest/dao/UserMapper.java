package com.qniansi.ptest.dao;

import com.qniansi.ptest.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserMapper {
    User getUserInfo(String userid);
    int saveUser(User user);
}
