package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.Dish;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DishService extends BaseService<Dish>
{
	@Override
	@Resource(name="dishDao")
	public void setBaseDao(BaseDao<Dish> baseDao)
	{
		this.baseDao = baseDao;
	}
}
