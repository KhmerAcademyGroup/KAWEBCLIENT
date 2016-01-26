package org.khmeracademy.app.controllers.elearning;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class UserRestTemplateController {
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/user/profile/listMainCategoryAndPlaylist" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> userProfile(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/video/listMainCategoryAndPlaylist", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/countuserhistory/{uid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> countUserHistory(@PathVariable("uid") String uid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/countuserhistory/"+uid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/listuserhistory/{uid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listUserHistory(@PathVariable("uid") String uid
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/listuserhistory/"+uid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/searchuserhistory/{uid}/{videoname}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchUserHistory(@PathVariable("uid") String uid
										,@PathVariable("videoname") String vname
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/searchhistory/"+uid+"/"+vname+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/user/profile/removefromhistory/{hid}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> removeFromHistory(@PathVariable("hid") String hid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/deletehistory/"+hid, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/removeallhistory/{uid}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> removeAllHistory(@PathVariable("uid") String uid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/deleteallhistory/"+uid, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	//////////////////video
	@RequestMapping(value="/rest/user/profile/listuservideo/{uid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listUserVideo(@PathVariable("uid") String uid
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/video/user/u/"+uid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/searchuserhvideo/{uid}/{videoname}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchUserVideo(@PathVariable("uid") String uid
										,@PathVariable("videoname") String vname
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/video/user/u/"+uid+"/name/"+vname+"?page="+page+"&item="+item+"&status=true", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/user/profile/disablevideo/{vid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> disablevideo(@PathVariable("vid") String vid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/enable/v/"+vid, HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	
	//playlist
		@RequestMapping(value="/rest/user/profile/listuserplaylist/{uid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listUserPlaylist(@PathVariable("uid") String uid
											, @RequestParam(value = "page", required = false , defaultValue="1") int page 
										    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/userplaylist/"+uid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
	
	
	
	
}
