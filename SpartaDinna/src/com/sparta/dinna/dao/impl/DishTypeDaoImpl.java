package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.DishTypeDao;
import com.sparta.dinna.entity.DishType;

@Repository
public class DishTypeDaoImpl extends BaseDaoHibernate4<DishType> implements
		DishTypeDao {

}
