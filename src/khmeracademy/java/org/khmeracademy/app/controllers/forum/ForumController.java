package org.khmeracademy.app.controllers.forum;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ForumController {
	
	@RequestMapping(value={"/forum","/forum/questions"} , method =  RequestMethod.GET)
	public String indexPage( ModelMap m, @RequestParam(value="tag", required = false) String tag){
		m.addAttribute("tag" , tag);
		return "forum/index";
	}
	
	@RequestMapping(value="/forum/question/{qid}" , method =  RequestMethod.GET)
	public String questionDetailPage(@PathVariable("qid") String qid , ModelMap m){
		m.addAttribute("qid", qid);
		return "forum/questiondetail";
	}
	
	@RequestMapping(value="/admin/forumcategory",method =  RequestMethod.GET)
	public String forumCategoryPage(){
		return "admin/forumcategory";
	}
	
	
	
	
	
	
	
	
}
