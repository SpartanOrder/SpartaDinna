package com.sparta.dinna.dao.impl;

import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.CustomerDao;
import com.sparta.dinna.entity.Customer;

@Repository
public class CustomerDaoImpl extends BaseDaoHibernate4<Customer> implements
		CustomerDao {

}
