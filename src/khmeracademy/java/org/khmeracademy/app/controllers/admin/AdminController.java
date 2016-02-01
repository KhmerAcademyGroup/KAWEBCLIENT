package org.khmeracademy.app.controllers.admin;

import org.khmeracademy.app.entities.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping(value={"/",""} , method = RequestMethod.GET)
	public String  mainPage(ModelMap m){
		m.addAttribute("msg","Main Page");
		return "/admin/dashboard";
	}
	
	@RequestMapping(value="/log/department",method=RequestMethod.GET)
	public String logDepartment(){
		
		return "admin/logdepartment";
	}
	
	@RequestMapping(value="/log/university",method=RequestMethod.GET)
	public String logUniversity(){
		
		return "admin/loguniversity";
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
			System.out.println(authentication.getPrincipal());
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
	public String videoplaylist(){
		
		return "admin/videoplaylist";
	}	
	
	@RequestMapping(value="/user",method=RequestMethod.GET)
	public String user(){
		
		return "admin/user";
	}	
	
}
