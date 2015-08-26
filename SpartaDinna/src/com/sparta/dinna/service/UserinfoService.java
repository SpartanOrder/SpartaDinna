package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.UserInfo;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserinfoService extends BaseService<UserInfo>
{
	@Override
	@Resource(name="userinfoDao")
	public void setBaseDao(BaseDao<UserInfo> baseDao)
	{
		this.baseDao = baseDao;
	}
}
