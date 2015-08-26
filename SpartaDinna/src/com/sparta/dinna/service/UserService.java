package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.User;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService extends BaseService<User>
{
	@Override
	@Resource(name="userDao")
	public void setBaseDao(BaseDao<User> baseDao)
	{
		this.baseDao = baseDao;
	}
}
