package com.sparta.dinna.service;

import javax.annotation.Resource;

import com.sparta.dinna.entity.TempCarteContent;
import org.slave4j.orm.hibernate.BaseDao;
import org.slave4j.orm.hibernate.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TempendCarteContentService extends BaseService<TempCarteContent>
{
	@Override
	@Resource(name="tempendCarteContentDao")
	public void setBaseDao(BaseDao<TempCarteContent> baseDao)
	{
		this.baseDao = baseDao;
	}
}
