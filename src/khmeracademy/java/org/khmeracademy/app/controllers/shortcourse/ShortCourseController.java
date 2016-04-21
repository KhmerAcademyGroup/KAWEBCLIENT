package org.khmeracademy.app.controllers.shortcourse;

import java.util.Map;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/kshrd/shortcourse")
public class ShortCourseController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value={"", "/index"} , method = RequestMethod.GET)
	public String home(ModelMap m){
		String page = "";
		
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userid", user.getUserId());
			m.addAttribute("isAdd", true);
			m.addAttribute("actionText", "Register");
			 
			page = "shortcourse/home";
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "shortcourse/isstudentexist/"+user.getUserId(), HttpMethod.GET , request , Map.class) ;
			boolean isExist =(boolean) response.getBody().get("STATUS");
			System.out.println(isExist);
			if(isExist){
				page = "shortcourse/list";
			}
			
		}else{
			 m.addAttribute("userid", "null" );
			 page = "login";
		}
		
		return page;
	}
	
	@RequestMapping(value="/register" , method = RequestMethod.GET)
	public String register(ModelMap m){
		String page = "";
		
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){	
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userid", user.getUserId());
			m.addAttribute("isAdd", false);
			m.addAttribute("formId", "frmAdd");
			m.addAttribute("formAction", "/add1");
			m.addAttribute("formMethod", "POST");
			m.addAttribute("actionText", "Register");
			
			page = "shortcourse/home";
		}else
			page = "login";
		
		return page;
	}
	
	@RequestMapping(value="/mycourse" , method = RequestMethod.GET)
	public String myCoursePage(ModelMap m){
		String page = "";
		
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){	
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userid", user.getUserId());
			page = "shortcourse/list";
		}else
			page = "login";
		
		return page;
	}
	@RequestMapping(value="/update/{id}" , method = RequestMethod.GET)
	public String updateCourse(ModelMap m, @PathVariable("id") int id){
		String page = "";
		
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){	
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userid", user.getUserId());
			m.addAttribute("isAdd", false);
			m.addAttribute("sdId", id);
			m.addAttribute("formMethod", "PUT");
			m.addAttribute("formAction", "/update");
			m.addAttribute("formId", "frmUpdate");
			
			m.addAttribute("actionText", "Update");
			page = "shortcourse/home";
		}else
			page = "login";
		
		return page;
	}
}
	