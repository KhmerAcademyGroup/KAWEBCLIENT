package org.khmeracademy.app.controllers.elearning;

import java.util.HashMap;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private String WebURL;
	
	@Autowired
	private String KEY;
	
	@Autowired
	private String WSURL;
	
	@Autowired
	private String IMGURL;
	
	@RequestMapping(value="/profile" , method =  RequestMethod.GET)
	public String playlistDetail(ModelMap m){
		
		String userid = "";
		String usertype = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
			usertype = user.getUserTypeName();
			//System.out.println("ELearningController " + user.getUsername() + " Userid " + user.getUserId());
		}else{
			//System.out.println(authentication.getPrincipal());
		}
		
		final String uri = WebURL + "/rest/user/profile/listMainCategoryAndPlaylist";
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("userid",userid);
	    m.addAttribute("usertype", usertype);
	    m.addAttribute("api",IMGURL);
	    m.addAttribute("api_url",WSURL);
	    m.addAttribute("key",KEY);
	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));
	   
	    
		return "users/profile";
	}
	
	
}
