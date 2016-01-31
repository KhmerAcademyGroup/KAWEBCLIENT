package org.khmeracademy.app.controllers.forum;

import org.khmeracademy.app.entities.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userId", user.getUserId());
			m.addAttribute("username", user.getUsername());
		}
		return "forum/questiondetail";
	}
	
	@RequestMapping(value="/admin/forumcategory",method =  RequestMethod.GET)
	public String forumCategoryPage(){
		return "admin/forumcategory";
	}
	
	@RequestMapping(value="/forum/question/ask" , method =  RequestMethod.GET)
	public String askQuestionPage(ModelMap m){
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userId", user.getUserId());
			m.addAttribute("username", user.getUsername());
		}
		return "forum/askquestion";
	}
	
	
	
	
	
	
}
