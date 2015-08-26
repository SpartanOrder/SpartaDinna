package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.RoleDao;
import com.sparta.dinna.entity.Role;

@Repository
public class RoleDaoImpl extends BaseDaoHibernate4<Role> implements RoleDao {

}
