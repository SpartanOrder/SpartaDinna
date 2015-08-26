package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.UserDao;
import com.sparta.dinna.entity.User;

@Repository
public class UserDaoImpl extends BaseDaoHibernate4<User> implements UserDao {

}
