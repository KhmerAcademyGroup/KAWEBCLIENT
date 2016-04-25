package org.khmeracademy.app.controllers;

import java.util.HashMap;
import java.util.Map;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
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

@Controller
@RequestMapping("/")
public class MainController {
	
	@Autowired
	private String WebURL;
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@Autowired
	@Qualifier("aknHeaders")
	private HttpHeaders aknHeaders;
	
	private String AKNURL = "http://akn.khmeracademy.org/";
	
	@RequestMapping(value="/" , method = RequestMethod.GET)
	public String  mainPage(ModelMap m){
		m.addAttribute("title","Main Page");
//		final String uri = WebURL + "/rest/mainpage/countdata";
//	    RestTemplate restTemplate = new RestTemplate();
//	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));
	    Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			m.addAttribute("userid", user.getUserId());
		}else{
			 m.addAttribute("userid", "null" );
		}
	    
		return "home_new_3";
	}
	
	@RequestMapping(value="/test" , method = RequestMethod.GET)
	public String  testPage(ModelMap m){
		m.addAttribute("msg","Main Page");
		

		/*Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			System.out.println("MainController " + user.getUsername() + " Userid " + user.getUserId());
		}else{
			System.out.println(authentication.getPrincipal());
		}*/
		
		
		return "test";
	}
	
	@RequestMapping(value="/reset" , method =  RequestMethod.GET)
	public String resetPassword(ModelMap m){
		
		return "reset";
	}

	@RequestMapping(value="/confirmemail" , method =  RequestMethod.GET)
	public String confrimEmail(ModelMap m){
		
		return "confirmemail";
	}
	
	@RequestMapping(value="/rest/elearning/main_page" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listPlaylistsByMainCategoryWithPagin(){
		Map<String,Object> map = new HashMap<String , Object>();
		try{
			HttpEntity<Object> requestAKN = new HttpEntity<Object>(aknHeaders);
			ResponseEntity<Map> all = rest.exchange(AKNURL + "api/article/1/12/0/0/0/", HttpMethod.GET , requestAKN , Map.class) ;
			map.put("NEWS", all.getBody());
	        map.put("KEY", "getAKN");
	        map.put("STATUS_AKN", true);
		}catch(Exception e){
			e.printStackTrace();
			map.put("MESSAGE_AKN", "Operation failed");
			map.put("STATUS_AKN", false);
		}
		try{
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/main_page", HttpMethod.GET , request , Map.class) ;
			map.put("KA", response.getBody());
		}catch(Exception e){
			e.printStackTrace();
			map.put("MESSAGE_KA", "Operation failed");
			map.put("STATUS_KA", false);
		}
		return new ResponseEntity<Map<String , Object>>(map , HttpStatus.OK);
		
	}
	
}
