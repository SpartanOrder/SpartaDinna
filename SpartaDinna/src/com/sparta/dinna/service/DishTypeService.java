package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.DishType;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DishTypeService extends BaseService<DishType>
{
	@Override
	@Resource(name="dishTypeDao")
	public void setBaseDao(BaseDao<DishType> baseDao)
	{
		this.baseDao = baseDao;
	}
}
