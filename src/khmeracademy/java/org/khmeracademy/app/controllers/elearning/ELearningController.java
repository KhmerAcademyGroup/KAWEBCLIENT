package org.khmeracademy.app.controllers.elearning;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/elearning")
public class ELearningController {
	
	@Autowired
	private String WebURL;
	
	@Autowired
	private String IMGURL;

	@RequestMapping(value="" , method = RequestMethod.GET)
	public String  index(ModelMap m){
		final String uri = WebURL + "/rest/elearning/index";
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("title","E-Learning");
	    m.addAttribute("IMGURL", IMGURL);
	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));
		//return "/elearning/index";
	    Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userid", user.getUserId());
		}else{
			 m.addAttribute("userid", "null" );
		}
	    return "/elearning/index_new_3";
	}
	
	@RequestMapping(value="/playvideo" , method = RequestMethod.GET)
	public String  playVideo(ModelMap m,
			@RequestParam(value="v", required = false) String vid, 
			@RequestParam(value="playlist", required=false) String pid){
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
//			System.out.println(authentication.getPrincipal());
		}
		String playlistParam = "";
		if(pid!=null){
			playlistParam = "&playlist=" + pid;
		}
		final String uri1 = WebURL + "/rest/user/profile/listuserhistory/" + userid;
		final String uri = WebURL + "/rest/elearning/playvideo?v=" + vid + playlistParam;
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("title","E-Learning");
	    m.addAttribute("IMGURL", IMGURL);
	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));
	    m.addAttribute("data_user_history", restTemplate.getForObject(uri1, HashMap.class));
		return "/elearning/playvideo";
	}
	
	@RequestMapping(value="playvideo/error404" , method = RequestMethod.GET)
	public String  error404(ModelMap m){
	    m.addAttribute("msg","Video Not Found!");
		return "/errors/404";
	}
	
	@RequestMapping( value ="/search", method = RequestMethod.GET)
	public String searchPlaylist(ModelMap m, @RequestParam(value="keyword" , required = false) String coursename , HttpServletResponse response) { 
		System.out.println(coursename);
		m.addAttribute("keyword",coursename);
		return "/elearning/searchcourse";
	}
	
	
}
