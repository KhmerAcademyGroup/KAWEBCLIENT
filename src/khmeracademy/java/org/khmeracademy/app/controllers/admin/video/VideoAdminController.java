package org.khmeracademy.app.controllers.admin.video;

import java.util.Map;

import org.khmeracademy.app.entities.User;
import org.khmeracademy.app.entities.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/admin/rest")
public class VideoAdminController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/list/video", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getVideoList(
    		@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam(value="item", required=false, defaultValue="10") int item){
		
//		String userid = "";
//		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
//		if(!authentication.getPrincipal().equals("anonymousUser")){
//			User user = (User) authentication.getPrincipal();
//			userid = user.getUserId();
//		}else{
//			System.out.println(authentication.getPrincipal());
//		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/list/all?page=" + page + "&item=" + item, HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	@RequestMapping(value="/search/video/{name}", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getVideoSearch(
    		@PathVariable("name") String name,
    		@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam(value="item", required=false, defaultValue="10") int item){
		
//		String userid = "";
//		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
//		if(!authentication.getPrincipal().equals("anonymousUser")){
//			User user = (User) authentication.getPrincipal();
//			userid = user.getUserId();
//		}else{
//			System.out.println(authentication.getPrincipal());
//		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/list/all/"+ name + "?page=" + page + "&item=" + item, HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	@RequestMapping(value="/list/category", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getCategory(){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/category/listall", HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	@RequestMapping(value="/toggle/video", method= RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> toggle(@RequestParam("vid") String vid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/enable/v/" + vid, HttpMethod.PUT , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	@RequestMapping(value="/delete/video", method= RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> delete(@RequestParam("vid") String vid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/" + vid, HttpMethod.DELETE , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	@RequestMapping(value="/insert/video", method= RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> insert(@RequestBody Video video){
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
			System.out.println(authentication.getPrincipal());
		}
		video.setUserId(userid);
		
		HttpEntity<Object> request = new HttpEntity<Object>(video, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video", HttpMethod.POST , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	@RequestMapping(value="/update/video", method= RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> update(@RequestBody Video video){
		
		HttpEntity<Object> request = new HttpEntity<Object>(video, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video", HttpMethod.PUT , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	@RequestMapping(value="/getvideo", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getVideo(@RequestParam("vid") String vid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/v/" + vid + "?view=false", HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	

}
