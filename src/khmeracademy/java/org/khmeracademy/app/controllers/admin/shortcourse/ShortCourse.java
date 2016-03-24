package org.khmeracademy.app.controllers.admin.shortcourse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class ShortCourse {

	@Autowired
	private String WebURL;
	
	@Autowired
	private String KEY;
	
	@Autowired
	private String WSURL;
	
	@Autowired
	private String IMGURL;
	
	@RequestMapping(value="/shortcourse" , method = RequestMethod.GET)
	public String  mainPage(ModelMap m){
		m.addAttribute("msg","ShortCourse Page");
		return "/admin/shortcourse/shortcourse";
	}	
	
	
}
