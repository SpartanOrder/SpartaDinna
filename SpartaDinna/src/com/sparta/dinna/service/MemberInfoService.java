package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.MemberInfo;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberInfoService extends BaseService<MemberInfo>
{
	@Override
	@Resource(name="memberInfoDao")
	public void setBaseDao(BaseDao<MemberInfo> baseDao)
	{
		this.baseDao = baseDao;
	}
}
