package org.khmeracademy.app.controllers;

import org.khmeracademy.app.entities.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping(value="/" , method = RequestMethod.GET)
	public String  mainPage(ModelMap m){
		m.addAttribute("msg","Main Page");
		return "home";
	}
	
	@RequestMapping(value="/test" , method = RequestMethod.GET)
	public String  testPage(ModelMap m){
		m.addAttribute("msg","Main Page");
		

		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			System.out.println("MainController " + user.getUsername() + " Userid " + user.getUserId());
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		
		return "test";
	}
	


}
