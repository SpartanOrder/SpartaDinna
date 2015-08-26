package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.RegionDao;
import com.sparta.dinna.entity.Region;

@Repository
public class RegionDaoImpl extends BaseDaoHibernate4<Region> implements
		RegionDao {

}
