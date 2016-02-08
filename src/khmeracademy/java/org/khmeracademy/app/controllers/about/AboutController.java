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
	
	@RequestMapping("/team")
	public String teamPage(){
		return "about/team";
	}
}
