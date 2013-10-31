/**
 * 
 */
package org.zhubao.service;

import java.io.Serializable;
import java.util.List;

/**
 * @author Jason.Zhu
 * @date   2013-7-2上午9:23:31
 * @email jasonzhu@augmentum.com.cn
 */
public interface BaseService<T> {

	/**
	 * save an entity
	 * @param t
	 * @throws Exception
	 */
	public void save(T t) throws Exception;
	/**
	 * update an entity
	 * @param t
	 * @throws Exception
	 */
	public void update(T t) throws Exception;
	/**
	 * delete an entity
	 * @param t
	 * @throws Exception
	 */
	public void delete(T t) throws Exception;
	/**
	 * find an entity by its pk id
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public T findById(Serializable id) throws Exception;
	/**
	 * get all the entities
	 * @return
	 * @throws Exception
	 */
	public List<T> findAll() throws Exception;
	/**
	 * find entities by example
	 * @param t
	 * @return
	 * @throws Exception
	 */
	public List<T> findByExample(T t) throws Exception;
}
