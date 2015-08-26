package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.TempCarteInfo;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TempendCarteInfoService extends BaseService<TempCarteInfo>
{
	@Override
	@Resource(name="tempendCarteInfoDao")
	public void setBaseDao(BaseDao<TempCarteInfo> baseDao)
	{
		this.baseDao = baseDao;
	}
}
