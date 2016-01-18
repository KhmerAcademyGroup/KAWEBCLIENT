package org.khmeracademy.app.controllers.elearning;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/elearning")
public class PlaylistController {
	
	/*@RequestMapping(value="/playlistdetail" , method =  RequestMethod.GET)
	public String playlistDetail(){
		return "elearning/playlistdetail";
	}
	
	@RequestMapping(value="/admin/forumcategory",method =  RequestMethod.GET)
	public String forumCategoryPage(){
		return "admin/forumcategory";
	}
	*/
	@RequestMapping(value="/playlistdetail" , method =  RequestMethod.GET)
	public String playlistDetail(){
		return "elearning/playlistdetail";
	}
}
