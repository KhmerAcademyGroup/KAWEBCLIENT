package org.khmeracademy.app.controllers.user;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/")
public class UserRestController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/signup" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> addUser(@RequestBody FrmAddUser user){
		HttpEntity<Object> request = new HttpEntity<Object>(user,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/user", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}

}
