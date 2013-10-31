/**
 * 
 */
package org.zhubao.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;

/**
 * @author Jason.Zhu
 * @date   2013-7-1 3:04:38
 * @email jasonzhu@augmentum.com.cn
 */
public interface BaseDao<T> {

	/**
	 * save the entity
	 * @param t
	 * @throws Exception
	 */
	void save(T t)  throws Exception;
	/**
	 * update the entity
	 * @param t
	 * @throws Exception
	 */
	void update(T t)  throws Exception;
	/**
	 * delete the entity
	 * @param t
	 * @throws Exception
	 */
	void delete(T t)  throws Exception;
	/**
	 * find by id
	 * @param id
	 * @return
	 * @throws Exception
	 */
	T findById(Serializable id)  throws Exception;
	/**
	 * find the list of the entity
	 * @return
	 * @throws Exception
	 */
	List<T> findAll()  throws Exception;
	/**
	 * get the entity count
	 * @return
	 * @throws Exception
	 */
	int findAllCount()  throws Exception;
	/**
	 * find entities by criteria
	 * @param criteria
	 * @return
	 * @throws Exception
	 */
	List<T> findByCriteria(Criteria criteria)  throws Exception;
	/**
	 * find the entities by example
	 * @param t
	 * @return
	 * @throws Exception
	 */
	List<T> findByExample(T t)  throws Exception;
	/**
	 * find entities by hql
	 * @param hql
	 * @param objects
	 * @return
	 * @throws Exception
	 */
	List<Object[]> findByHql(String hql, final Object... objects)  throws Exception;
	/**
	 * find the object by sql
	 * @param sql
	 * @param objects
	 * @return
	 */
	List<Object[]> findBySql(String sql, final Object... objects);
}
