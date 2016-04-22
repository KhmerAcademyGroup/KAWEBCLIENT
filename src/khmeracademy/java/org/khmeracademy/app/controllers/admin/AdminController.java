package org.khmeracademy.app.controllers.admin;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private String WebURL;
	
	@Autowired
	private String KEY;
	
	@Autowired
	private String WSURL;
	
	@Autowired
	private String IMGURL;
	
	@RequestMapping(value={"/",""} , method = RequestMethod.GET)
	public String  mainPage(ModelMap m){
		m.addAttribute("msg","Main Page");
		return "/admin/dashboard";
	}	
	
	@RequestMapping(value="/department",method=RequestMethod.GET)
	public String logDepartment(){
		
		return "admin/department";
	}
	
	@RequestMapping(value="/university",method=RequestMethod.GET)
	public String logUniversity(){
		
		return "admin/university";
	}
	
	@RequestMapping(value="/report/university",method=RequestMethod.GET)
	public String reportUniversity(){
		
		return "admin/reportuniversity";
	}
	
	@RequestMapping(value="/report/category",method=RequestMethod.GET)
	public String reportCategory(){
		
		return "admin/reportcategory";
	}
	
	@RequestMapping(value="/report/precourse",method=RequestMethod.GET)
	public String reportprecourse(){
		
		return "admin/reportprecourse";
	}
	
	@RequestMapping(value="/tutorial",method=RequestMethod.GET)
	public String TutorialPage(ModelMap model){
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			model.addAttribute("userId", user.getUserId());
			//System.out.println("MainController " + user.getUsername() + " Userid " + user.getUserId());
		}else{
//			System.out.println(authentication.getPrincipal());
		}
		return "admin/tutorial";
	}
	
	@RequestMapping(value="/forum/category",method=RequestMethod.GET)
	public String forumcategory(){
		
		return "admin/forumcategory";
	}
	
	@RequestMapping(value="/forum/comment",method=RequestMethod.GET)
	public String forumcomment(){
		
		return "admin/forumcomment";
	}
	
	@RequestMapping(value="/forum/tag",method=RequestMethod.GET)
	public String forumTag(){
		
		return "admin/forumtag";
	}
	
	@RequestMapping(value="/elearning/category",method=RequestMethod.GET)
	public String videoCategory(){
		
		return "admin/videocategory";
	}
	
	@RequestMapping(value="/elearning/maincategory",method=RequestMethod.GET)
	public String mainCategory(){
		
		return "admin/maincategory";
	}
	
	@RequestMapping(value="/elearning/comment",method=RequestMethod.GET)
	public String videoComment(){
		
		return "admin/videocomment";
	}
	
	@RequestMapping(value="/elearning/video",method=RequestMethod.GET)
	public String videoList(){
		
		return "admin/videolist";
	}
	
	@RequestMapping(value="/elearning/playlist",method=RequestMethod.GET)
	public String videoplaylist(ModelMap m){
		
	    m.addAttribute("api",IMGURL);
	    m.addAttribute("api_url",WSURL);
	    m.addAttribute("key",KEY);
		
		return "admin/videoplaylist";
	}
	
	@RequestMapping(value="/elearning/playlistdetail/{pid}",method=RequestMethod.GET)
	public String videoplaylistdetail(ModelMap m, @PathVariable("pid") String pid){
		
	    m.addAttribute("api",IMGURL);
	    m.addAttribute("api_url",WSURL);
	    m.addAttribute("key",KEY);
	    m.addAttribute("pid",pid);
		return "admin/videoplaylistdetail";
	}
	
	
	
	@RequestMapping(value="/user",method=RequestMethod.GET)
	public String user(){
		
		return "admin/user";
	}
	
	@RequestMapping(value="/usertype",method=RequestMethod.GET)
	public String userType(){
		
		return "admin/usertype";
	}	
	
	@RequestMapping(value="/courses",method=RequestMethod.GET)
	public String courseManagement(ModelMap m){
		 m.addAttribute("WS",WSURL);
		 m.addAttribute("KEY",KEY);
		return "admin/courses_management";
	}	
	
	@RequestMapping(value="/course/getvideos/{playlistid}",method=RequestMethod.GET)
	public String listVideosInCourse(ModelMap m, @PathVariable("playlistid") String playlistid){
		m.addAttribute("playlistid",playlistid);
		return "admin/course_videos_mg";
	}	
	
}
