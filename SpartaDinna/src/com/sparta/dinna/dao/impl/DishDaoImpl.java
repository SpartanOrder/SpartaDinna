package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.DishDao;
import com.sparta.dinna.entity.Dish;

@Repository
public class DishDaoImpl extends BaseDaoHibernate4<Dish> implements DishDao {

}
