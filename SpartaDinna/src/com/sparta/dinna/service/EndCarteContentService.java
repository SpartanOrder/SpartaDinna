package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.EndCarteContent;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EndCarteContentService extends BaseService<EndCarteContent>
{
	@Override
	@Resource(name="endCarteContentDao")
	public void setBaseDao(BaseDao<EndCarteContent> baseDao)
	{
		this.baseDao = baseDao;
	}
}
