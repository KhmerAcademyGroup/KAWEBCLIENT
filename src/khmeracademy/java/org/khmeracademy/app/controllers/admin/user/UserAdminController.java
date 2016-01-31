package org.khmeracademy.app.controllers.admin.user;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddUniversity;
import org.khmeracademy.app.entities.input.FrmAddUser;
import org.khmeracademy.app.entities.input.FrmUpdateUniversity;
import org.khmeracademy.app.entities.input.FrmUpdateUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class UserAdminController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/user" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listUser(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "user/?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/search" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchUser(
			@RequestParam(value = "username", required = false , defaultValue="") String username,
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "user/search?page="+page+"&item="+item+"&username="+username, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateUser(
			@RequestParam(value = "userid", required = true) String uid,
			@RequestParam(value = "usertype", required = true) String utype){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "user/updatetype?userid="+uid+"&usertype="+utype, HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> insertDepartment(@RequestBody FrmAddUser user){
		HttpEntity<Object> request = new HttpEntity<Object>(user,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "user", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/user/{id}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deleteUser(@PathVariable("id") String id){
		HttpEntity<Object> request = new HttpEntity<Object>(header);		
		ResponseEntity<Map> response = rest.exchange(WSURL + "user/"+id, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
}
