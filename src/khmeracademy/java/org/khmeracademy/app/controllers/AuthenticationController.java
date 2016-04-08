package org.khmeracademy.app.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;


@Controller
public class AuthenticationController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage( Model model) {
		return "login";
	}
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WebURL;
	
	@RequestMapping(value="/api/isLogin" , method = RequestMethod.GET)
	public ResponseEntity<Map<String ,Object>> isUserLogin(){
		Map<String,Object> map = new HashMap<String,Object>();
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
//			System.out.println("MainController " + user.getUsername() + " Userid " + user.getUserId());
			map.put("USERID", user.getUserId());
			map.put("USERNAME" ,user.getUsername());
			map.put("EMAIL", user.getEmail());
			map.put("PROFILE_IMG_URL",user.getUserImageUrl());
			map.put("COVER_IMG_URL", user.getCoverphoto());
			map.put("PASSWORD", user.getPassword());
			map.put("STATUS", true);
		}else{
//			System.out.println(authentication.getPrincipal());
			map.put("STATUS", false);
		}
		return new ResponseEntity<Map<String ,Object>>(map, HttpStatus.OK);
	}
	
	@RequestMapping(value="/api/logout" , method = RequestMethod.GET)
	public ResponseEntity<Map<String ,Object>> apiLogout(){
		Map<String,Object> map = new HashMap<String,Object>();
		SecurityContextHolder.getContext().setAuthentication(null);
		map.put("STATUS", true);
		map.put("MESSAGE", "Logout successfully!");
		return new ResponseEntity<Map<String ,Object>>(map, HttpStatus.OK);
	}
	
	@RequestMapping(value="/api/login" , method = RequestMethod.POST)
	public ResponseEntity<Map<String ,Object>> apiLogin(@RequestBody String login){
		System.out.println(login);
		// create request body
		JSONObject request = new JSONObject();
		request.put("ka_username", "admin@gmail.com");
		request.put("ka_password", "123");
//		System.out.println(request.toString());
		// set headers
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>(login, headers);
		ResponseEntity<String> response = rest.exchange(WebURL + "/login", HttpMethod.POST , entity , String.class) ;

		
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
			map.put("MESSAGE", "Login successfully!");
		}else{
//			System.out.println(authentication.getPrincipal());
			map.put("STATUS", false);
		}
		return new ResponseEntity<Map<String ,Object>>(map, HttpStatus.OK);
	}
	
	@RequestMapping(value="/logintest")
	public void login(HttpServletRequest request){

		String username ="admin@gmail.com";
		String password ="123";
	    UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(username, password);

	    // Authenticate the user
	    //Authentication authentication = authenticationManager.authenticate(authRequest);
	    SecurityContext securityContext = SecurityContextHolder.getContext();
	    securityContext.setAuthentication(authRequest);

	    // Create a new session and add the security context.
	    HttpSession session = request.getSession(true);
	    session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
//	    System.out.println("TESTING ONLY...");
	}
	
	@RequestMapping(value="/register")
	public String register(){
		return "register";
	}

}
