package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.Region;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RegionService extends BaseService<Region>
{
	@Override
	@Resource(name="regionDao")
	public void setBaseDao(BaseDao<Region> baseDao)
	{
		this.baseDao = baseDao;
	}
}
