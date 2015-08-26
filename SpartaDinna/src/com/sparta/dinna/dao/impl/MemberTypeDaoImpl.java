package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.MemberTypeDao;
import com.sparta.dinna.entity.MemberType;

@Repository
public class MemberTypeDaoImpl extends BaseDaoHibernate4<MemberType> implements
		MemberTypeDao {

}
