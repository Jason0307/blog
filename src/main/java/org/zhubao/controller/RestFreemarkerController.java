package org.zhubao.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zhubao.model.User;

@Controller
public class RestFreemarkerController {
 @RequestMapping(value = "/show", method = RequestMethod.GET)
	public String upload(Model model) {
	   List<User> users = Arrays.asList(new User(1,"Jason"),new User(2,"Zhubao"));
	   model.addAttribute("users", users);
	   return "selectHtml";
	}
	
	
}
	 
