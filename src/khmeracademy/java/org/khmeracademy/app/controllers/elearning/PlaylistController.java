package org.khmeracademy.app.controllers.elearning;

import java.util.HashMap;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

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
}