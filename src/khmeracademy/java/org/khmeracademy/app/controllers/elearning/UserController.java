package org.khmeracademy.app.controllers.elearning;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private String WebURL;
	
	@RequestMapping(value="/profile" , method =  RequestMethod.GET)
	public String playlistDetail(ModelMap m){
		
		final String uri = WebURL + "/rest/user/profile/listMainCategoryAndPlaylist";
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("title","User Profile");
	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));
		return "users/profile";
	}
}
