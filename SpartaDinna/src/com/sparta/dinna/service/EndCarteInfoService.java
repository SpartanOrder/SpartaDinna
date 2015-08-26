package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.EndCarteInfo;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EndCarteInfoService extends BaseService<EndCarteInfo>
{
	@Override
	@Resource(name="endCarteInfoDao")
	public void setBaseDao(BaseDao<EndCarteInfo> baseDao)
	{
		this.baseDao = baseDao;
	}
}
