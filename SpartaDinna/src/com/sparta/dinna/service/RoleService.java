package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.Role;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RoleService extends BaseService<Role>
{
	@Override
	@Resource(name="roleDao")
	public void setBaseDao(BaseDao<Role> baseDao)
	{
		this.baseDao = baseDao;
	}
}
