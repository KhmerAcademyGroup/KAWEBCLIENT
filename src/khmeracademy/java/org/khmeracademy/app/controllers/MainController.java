package org.khmeracademy.app.controllers;

import java.util.HashMap;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/")
public class MainController {
	
	@Autowired
	private String WebURL;
	
	@RequestMapping(value="/" , method = RequestMethod.GET)
	public String  mainPage(ModelMap m){
		m.addAttribute("title","Main Page");
		final String uri = WebURL + "/rest/mainpage/countdata";
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));
		return "home_new_1";
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
	
	@RequestMapping(value="/reset" , method =  RequestMethod.GET)
	public String resetPassword(ModelMap m){
		
		return "reset";
	}

	@RequestMapping(value="/confirmemail" , method =  RequestMethod.GET)
	public String confrimEmail(ModelMap m){
		
		return "confirmemail";
	}
}
