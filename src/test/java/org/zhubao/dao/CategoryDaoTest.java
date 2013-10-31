package org.zhubao.dao;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zhubao.model.Category;
   
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = "classpath:applicationContext.xml")  
public class CategoryDaoTest {  
   
    @Autowired  
    private CategoryDao categoryDaoImpl;
      
    @Test  
    public void getCategoryList() throws Exception{ 
    	System.out.println(categoryDaoImpl);
    	List<Category> categories = categoryDaoImpl.findAll();
    	System.out.println(categories);
    }  
      
} 