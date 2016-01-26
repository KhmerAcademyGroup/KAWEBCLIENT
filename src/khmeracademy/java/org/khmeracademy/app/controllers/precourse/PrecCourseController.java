package org.khmeracademy.app.controllers.precourse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class PrecCourseController {
	
	@RequestMapping(value="/precourse",method= RequestMethod.GET)
	public String indexPage(ModelMap m){
		m.addAttribute("title","Precourse | Khmer Academy");
		return "precourse/precourse";
	}
	
	@RequestMapping(value="/admin/precourse",method= RequestMethod.GET)
	public String preCoursePage(ModelMap m){
		m.addAttribute("msg","message");
		return "/admin/precourse";
	}
	
}