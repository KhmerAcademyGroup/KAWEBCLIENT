package org.khmeracademy.app.controllers.forum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ForumController {
	
	@RequestMapping(value="/forum/" , method =  RequestMethod.GET)
	public String indexPage(){
		return "forum/index";
	}
	
	@RequestMapping(value="/admin/forumcategory",method =  RequestMethod.GET)
	public String forumCategoryPage(){
		return "admin/forumcategory";
	}
	
}
