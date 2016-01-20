package org.khmeracademy.app.controllers;

import java.util.HashMap;
import java.util.Map;

import org.khmeracademy.app.entities.User;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuthenticationController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage( Model model) {
		return "login";
	}
	
	
	@RequestMapping(value="/isLogin" , method = RequestMethod.GET)
	public ResponseEntity<Map<String ,Object>> isUserLogin(){
		Map<String,Object> map = new HashMap<String,Object>();
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			System.out.println("MainController " + user.getUsername() + " Userid " + user.getUserId());
			map.put("USERID", user.getUserId());
			map.put("USERNAME" ,user.getUsername());
			map.put("EMAIL", user.getEmail());
			map.put("PROFILE_IMG_URL",user.getUserImageUrl());
			map.put("COVER_IMG_URL", user.getCoverphoto());
			map.put("STATUS", true);
		}else{
			System.out.println(authentication.getPrincipal());
			map.put("STATUS", false);
		}
		return new ResponseEntity<Map<String ,Object>>(map, HttpStatus.OK);
	}
	
	@RequestMapping(value="/isLogout" , method = RequestMethod.GET)
	public ResponseEntity<Map<String ,Object>> isUserLgout(){
		Map<String,Object> map = new HashMap<String,Object>();
		SecurityContextHolder.getContext().setAuthentication(null);
		map.put("STATUS", true);
		map.put("MESSAGE", "Logout successfully!");
		return new ResponseEntity<Map<String ,Object>>(map, HttpStatus.OK);
	}

}
