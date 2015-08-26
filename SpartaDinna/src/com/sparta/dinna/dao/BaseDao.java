/**
 * 
 */
package com.sparta.dinna.dao;

import java.io.Serializable;
import java.util.List;

/**
 * Description:Dao组件的基本接口<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月22日 下午6:19:30<br>
 * @author Wind
 * @version 1.0
 */
public interface BaseDao<T> {
	// 根据ID加载实体
	T get(Class<T> entityClazz, Serializable id);

	// 保存实体，返回的为实体的标识符/主键
	Serializable save(T entity);

	// 更新实体
	void update(T entity);

	// 删除实体
	void delete(T entity);

	// 根据ID删除尸体
	int delete(Class<T> entityClazz, Serializable id);

	// 获取所有实体
	List<T> findAll(Class<T> entityClazz);

	// 获取实体总数
	long findCount(Class<T> entityClazz);

}
