/**
 * 
 */
package org.zhubao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zhubao.dao.CategoryDao;
import org.zhubao.model.Category;

/**
 * @author Jason.Zhu
 * @date   2013-7-2下午12:14:31
 * @email jasonzhu@augmentum.com.cn
 */
@Service
public class CategoryServiceImpl extends BaseServiceImpl<Category> implements CategoryService {

	
	private CategoryDao categoryDao;

	public CategoryDao getCategoryDao() {
		return categoryDao;
	}
	@Autowired
	public void setCategoryDao(CategoryDao categoryDao) {
		super.setBaseDao(categoryDao);
		this.categoryDao = categoryDao;
	}
	
	
}
