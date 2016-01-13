package org.khmeracademy.app.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping(value="/" , method = RequestMethod.GET)
	public String  mainPage(ModelMap m){
		m.addAttribute("msg","Main Page");
		return "/admin/dashboard";
	}
}
