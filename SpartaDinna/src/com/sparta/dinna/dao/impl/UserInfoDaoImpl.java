package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.UserInfoDao;
import com.sparta.dinna.entity.UserInfo;

@Repository
public class UserInfoDaoImpl extends BaseDaoHibernate4<UserInfo> implements
		UserInfoDao {

}
