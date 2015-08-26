package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.MemberInfoDao;
import com.sparta.dinna.entity.MemberInfo;

@Repository
public class MemberInfoDaoImpl extends BaseDaoHibernate4<MemberInfo> implements
		MemberInfoDao {

}
