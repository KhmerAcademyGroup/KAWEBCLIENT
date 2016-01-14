package org.khmeracademy.app.controllers.forum;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/forum")
public class ForumController {
	
	@RequestMapping(method =  RequestMethod.GET)
	public String indexPage(){
		return "forum/index";
	}
	

}
