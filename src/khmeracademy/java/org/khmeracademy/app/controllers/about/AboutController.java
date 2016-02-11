package org.khmeracademy.app.controllers.about;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about")
public class AboutController {

	@RequestMapping(value={""})
	public String aboutPage(){
		return "about/index";
	}
	
	
	@RequestMapping("/supporter")
	public String supporterPage(){
		return "about/supporter";
	}
	
	@RequestMapping("/people")
	public String peoplePage(){
		return "about/people";
	}
	
	@RequestMapping("/volunteer")
	public String volunteer(){
		return "about/volunteer";
	}
}
