/**
 * 
 */
package org.zhubao.dao;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;

/**
 * @author Jason.Zhu
 * @date   2013-7-1下午1:58:14
 * @email jasonzhu@augmentum.com.cn
 */
public class TableCreate {

	@Test
	public void createtabel(){
		new SchemaExport(new Configuration().configure("hibernate.xml")).create(true,true);
	}
}
