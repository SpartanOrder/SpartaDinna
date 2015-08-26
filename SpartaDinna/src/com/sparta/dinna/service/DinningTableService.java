package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.DinningTable;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DinningTableService extends BaseService<DinningTable>
{
	@Override
	@Resource(name="dinningTableDao")
	public void setBaseDao(BaseDao<DinningTable> baseDao)
	{
		this.baseDao = baseDao;
	}
}
