package org.khmeracademy.app.controllers.admin.video;

import java.util.Map;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
    public ResponseEntity<Map<String, Object>> getDashboard(
    		@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam(value="item", required=false, defaultValue="10") int item){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/user/all/u/" + userid + "?page=" + page + "&item=" + item, HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }

}
