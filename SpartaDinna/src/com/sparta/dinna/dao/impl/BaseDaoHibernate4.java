package com.sparta.dinna.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.sparta.dinna.dao.BaseDao;

@SuppressWarnings("unchecked")
@Repository
public class BaseDaoHibernate4<T> implements BaseDao<T> {

	// DAO组件进行持久化操作底层所依赖的SessionFactory组件
	// 依赖注入SessionFactory所需的setter方法
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	// 根据ID加载实体
	@Override
	public T get(Class<T> entityClazz, Serializable id) {
		// TODO Auto-generated method stub
		return (T) getSessionFactory().getCurrentSession().get(entityClazz, id);
	}

	// 保存实体
	@Override
	public Serializable save(T entity) {
		// TODO Auto-generated method stub
		return getSessionFactory().getCurrentSession().save(entity);
	}

	// 更新实体
	@Override
	public void update(T entity) {
		// TODO Auto-generated method stub
		getSessionFactory().getCurrentSession().saveOrUpdate(entity);
	}

	// 删除实体
	@Override
	public void delete(T entity) {
		// TODO Auto-generated method stub
		getSessionFactory().getCurrentSession().delete(entity);
	}

	// 根据ID删除实体
	@Override
	public int delete(Class<T> entityClazz, Serializable id) {
		// TODO Auto-generated method stub
		return getSessionFactory()
				.getCurrentSession()
				.createQuery(
						"delete " + entityClazz.getSimpleName()
								+ " en where en.id=?0").setParameter("0", id)
				.executeUpdate();
	}

	// 获取所有实体
	@Override
	public List<T> findAll(Class<T> entityClazz) {
		// TODO Auto-generated method stub
		return find("select en from " + entityClazz.getSimpleName() + " en");
	}

	// 获取实体总数
	@Override
	public long findCount(Class<T> entityClazz) {
		// TODO Auto-generated method stub
		// 此处返回的是只有一个元素（总计数）的List
		List<?> l = find("select count(*) from" + entityClazz.getSimpleName());
		// 返回查询得到的实体总数
		if (l != null && l.size() == 1) {
			return (Long) l.get(0);
		}
		return 0;
	}

	// 根据HQL语句查询List集合实体
	protected List<T> find(String hql) {
		return (List<T>) getSessionFactory().getCurrentSession()
				.createQuery(hql).list();
	}

	// 根据带占位符参数的HQL语句查询实体
	protected List<T> find(String hql, Object... params) {
		// 创建查询
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		// 为包含占位符的HQL语句设置参数
		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(i + "", params[i]);
		}
		return (List<T>) query.list();
	}

	/**
	 * 使用HQL语句执行分页查询操作
	 * @param hql 需要查询的hql语句
	 * @param pageNo 查询第pageNo页的记录
	 * @param pageSize 每页需要显示的记录数
	 * @return 当前页的所有记录
	 */
	protected List<T> findByPage(String hql, int pageNo, int pageSize) {
		// 创建查询
		return getSessionFactory().getCurrentSession().createQuery(hql)
				.setFirstResult((pageNo - 1) * pageSize)// 执行分页
				.setMaxResults(pageSize).list();
	}

	/**
	 * 使用HQL语句执行分页查询操作
	 * @param hql 需要查询的hql语句
	 * @param pageNo 查询第pageNo页的记录
	 * @param pageSize 每页需要显示的记录数
	 * @param params 如果hql带占位符参数，params用于传入占位符参数
	 * @return 当前页的所有记录
	 */
	protected List<T> findByPage(String hql, int pageNo, int pageSize,
			Object... params) {
		// 创建查询
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		// 为包含占位符的hql语句设置参数
		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(i + "", params[i]);
		}
		// 执行分页查询，返回查询结果
		return query.setFirstResult((pageNo - 1) * pageSize)// 执行分页
				.setMaxResults(pageSize).list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
