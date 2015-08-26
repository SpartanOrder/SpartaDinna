package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.MemberType;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberTypeService extends BaseService<MemberType>
{
	@Override
	@Resource(name="memberTypeDao")
	public void setBaseDao(BaseDao<MemberType> baseDao)
	{
		this.baseDao = baseDao;
	}
}
