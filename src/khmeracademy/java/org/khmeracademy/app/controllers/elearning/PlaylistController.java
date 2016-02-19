package org.khmeracademy.app.controllers.elearning;

import java.util.HashMap;
import java.util.Map;

import javax.websocket.server.PathParam;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/elearning")
public class PlaylistController {
	
	@Autowired
	private String WebURL;
	/*@RequestMapping(value="/playlistdetail" , method =  RequestMethod.GET)
	public String playlistDetail(){
		return "elearning/playlistdetail";
	}
	
	@RequestMapping(value="/admin/forumcategory",method =  RequestMethod.GET)
	public String forumCategoryPage(){
		return "admin/forumcategory";
	}
	*/
	/*@RequestMapping(value="/playlistdetail" , method =  RequestMethod.GET)
	public String playlistDetail(){
		return "/elearning/playlistdetail";
	}*/
	
	
	

	@RequestMapping(value="/playlistdetail/{pid}" , method = RequestMethod.GET)
	public String  listPlaylistDetail(@PathVariable(value="pid") String pid,ModelMap m){		 
		
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
			
	    m.addAttribute("userid",userid);
	    m.addAttribute("usertype", usertype);	    		
		
	    m.addAttribute("title","E-Learning");
	    m.addAttribute("playlistid", pid);
		return "/elearning/playlistdetail";
	}
	@RequestMapping(value="/listallvideo" , method = RequestMethod.GET)
	public String  listVideoAddtoPlaylist( ModelMap m){
		final String uri = WebURL + "/rest/elearning/listallvideo" ;
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("title","E-Learning");
	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));		
		return "/elearning/playlistdetail";
	}
	
	@RequestMapping(value="/searchplaylist/{key}",method=RequestMethod.GET)
	public ModelAndView userType(@PathVariable("key") String key){
		
		System.out.println(111111111111L);
		//ResponseEntity<Map<String,Object>> plist = new SearchPlaylistController().searchPlaylist(key,1, 10);
		System.out.println(222222222222L);
		ModelAndView mav = new ModelAndView("/elearning/searchplaylist","searchkey",key);		
		return mav;
	}		
	
}