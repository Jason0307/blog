/**
 * 
 */
package org.zhubao.dao;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Repository;
import org.zhubao.model.Category;

/**
 * @author Jason.Zhu
 * @date   2013-7-1下午2:16:35
 * @email jasonzhu@augmentum.com.cn
 */
@Repository
public class CategoryDaoImpl extends BaseDaoImpl<Category> implements CategoryDao{

	@PostConstruct
	public void init(){
		
		System.out.println("1234");
	}
}
