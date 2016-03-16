package org.khmeracademy.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/shortcourse")
public class ShortCourseController {

	@RequestMapping(value={"", "/index"} , method = RequestMethod.GET)
	public String home(ModelMap m){
		return "shortcourse/home";
	}
	
}
	