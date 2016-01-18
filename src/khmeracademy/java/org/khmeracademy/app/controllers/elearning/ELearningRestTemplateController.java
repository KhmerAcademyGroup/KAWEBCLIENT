package org.khmeracademy.app.controllers.elearning;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class ELearningRestTemplateController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/elearning/index" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> index(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/listMainCategoryAndPlaylist", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/playvideo" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> playVideo( 
			@RequestParam(value="playlist", required=false) String pid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/playvideo?playlist=" + pid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/getplayvideo" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getPlayVideo( 
			@RequestParam(value="v", required=false) String vid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/getplayvideo?v=" + vid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
}
