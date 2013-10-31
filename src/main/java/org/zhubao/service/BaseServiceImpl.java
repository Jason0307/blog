/**
 * 
 */
package org.zhubao.service;

import java.io.Serializable;
import java.util.List;

import org.zhubao.dao.BaseDao;

/**
 * @author Jason.Zhu
 * @date   2013-7-2上午9:26:33
 * @email jasonzhu@augmentum.com.cn
 */
public class BaseServiceImpl<T> implements BaseService<T> {

	protected BaseDao<T> baseDao;
	/* (non-Javadoc)
	 * @see org.zhubao.service.BaseService#save(java.lang.Object)
	 */
	public void save(T t) throws Exception {
		baseDao.save(t);
		
	}

	/* (non-Javadoc)
	 * @see org.zhubao.service.BaseService#update(java.lang.Object)
	 */
	public void update(T t) throws Exception {
		baseDao.update(t);
		
	}

	/* (non-Javadoc)
	 * @see org.zhubao.service.BaseService#delete(java.lang.Object)
	 */
	public void delete(T t) throws Exception {
		baseDao.delete(t);
		
	}

	/* (non-Javadoc)
	 * @see org.zhubao.service.BaseService#findById(java.io.Serializable)
	 */
	public T findById(Serializable id) throws Exception {
		return baseDao.findById(id);
	}

	/* (non-Javadoc)
	 * @see org.zhubao.service.BaseService#findAll()
	 */
	public List<T> findAll() throws Exception {
		return baseDao.findAll();
	}

	/* (non-Javadoc)
	 * @see org.zhubao.service.BaseService#findByExample(java.lang.Object)
	 */
	public List<T> findByExample(T t) throws Exception {
		return baseDao.findByExample(t);
	}

	public BaseDao<T> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<T> baseDao) {
		this.baseDao = baseDao;
	}

	
}
