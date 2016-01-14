package org.khmeracademy.app.controllers.elearning;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/elearning")
public class ELearningController {

	@RequestMapping(value="" , method = RequestMethod.GET)
	public String  index(ModelMap m){
		m.addAttribute("title","E-Learning");
		return "/elearning/index";
	}
	
	@RequestMapping(value="/playvideo" , method = RequestMethod.GET)
	public String  playVideo(ModelMap m){
		m.addAttribute("title","E-Learning");
		return "/elearning/playvideo";
	}
	
	
}
