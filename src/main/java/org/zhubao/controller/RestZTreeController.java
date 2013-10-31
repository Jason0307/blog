package org.zhubao.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zhubao.model.Category;
import org.zhubao.service.CategoryService;
import org.zhubao.vo.CategoryVo;

import com.alibaba.fastjson.JSON;

/**
 * 
 * @author Jason.Zhu
 * @date   2013-7-1下午4:14:26
 * @email jasonzhu@augmentum.com.cn
 */
@Controller
public class RestZTreeController {
	
	@Autowired
	private CategoryService categoryServiceImpl;
 @RequestMapping(value = "/ztree", method = RequestMethod.GET)
	public String upload(Model model) {
	 
		return "ztree";
	}
	
 /**
  * go to the crud tree pager
  * @param model
  * @return
  */
 @RequestMapping(value = "/crudZtree", method = RequestMethod.GET)
	public String crudZtree(Model model) {
	 
		return "ztreecrud";
	}
 /**
  * generate the ztree by ajax
  * @param model
  * @return
  * @throws Exception
  */
 @RequestMapping(value = "/getTree", method = RequestMethod.GET)
	public @ResponseBody String getTree(Model model) throws Exception {
	 List<CategoryVo> categoryVos = new ArrayList<CategoryVo>();
	 List<Category> categories = categoryServiceImpl.findAll();
	 if(!categories.isEmpty()){
		 for(Category category : categories){
			 CategoryVo categoryVo = new CategoryVo();
			 if(null != category.getParent()){
				 categoryVo.setPid(category.getParent().getId());
			 }
			 categoryVo.setId(category.getId());
			 categoryVo.setName(category.getName());
			 categoryVos.add(categoryVo);
		 }
	 }
	 System.out.println(JSON.toJSONString(categoryVos));
	 return JSON.toJSONString(categoryVos);
	}
 /**
  * get the crud tree
  * @param model
  * @return
  * @throws Exception
  */
  @RequestMapping(value = "/getCrudTree", method = RequestMethod.GET)
	public @ResponseBody String getCrudTree(Model model) throws Exception {
	 List<CategoryVo> categoryVos = new ArrayList<CategoryVo>();
	 List<Category> categories = categoryServiceImpl.findAll();
	 if(!categories.isEmpty()){
		 for(Category category : categories){
			 CategoryVo categoryVo = new CategoryVo();
			 if(null != category.getParent()){
				 categoryVo.setPid(category.getParent().getId());
			 }
			 categoryVo.setId(category.getId());
			 categoryVo.setName(category.getName());
			 categoryVos.add(categoryVo);
		 }
	 }
	 System.out.println(JSON.toJSONString(categoryVos));
	 return JSON.toJSONString(categoryVos);
	}
	
 @RequestMapping(value = "/updateTree", method = RequestMethod.GET)
	public @ResponseBody String updateTree(int childId,int parentId) throws Exception {
	 
	 Category child = categoryServiceImpl.findById(childId);
	 Category parent = categoryServiceImpl.findById(parentId);
	 child.setParent(parent);
	 categoryServiceImpl.update(child);
	 
	 List<CategoryVo> categoryVos = new ArrayList<CategoryVo>();
	 List<Category> categories = categoryServiceImpl.findAll();
	 if(!categories.isEmpty()){
		 for(Category category : categories){
			 CategoryVo categoryVo = new CategoryVo();
			 if(null != category.getParent()){
				 categoryVo.setPid(category.getParent().getId());
			 }
			 categoryVo.setId(category.getId());
			 categoryVo.setName(category.getName());
			 categoryVos.add(categoryVo);
		 }
	 }
	 return JSON.toJSONString(categoryVos);
	}
}
	 
