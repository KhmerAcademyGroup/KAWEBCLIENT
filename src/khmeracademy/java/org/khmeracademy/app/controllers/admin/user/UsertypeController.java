package org.khmeracademy.app.controllers.admin.user;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddUser;
import org.khmeracademy.app.entities.input.FrmAddUserType;
import org.khmeracademy.app.entities.input.FrmUpdateUserType;
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
public class UsertypeController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/usertype" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listDepartment(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "usertype/list?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/usertype" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateDepartment(@RequestBody FrmUpdateUserType usertype){
		HttpEntity<Object> request = new HttpEntity<Object>(usertype,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "usertype/update", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/usertype" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> insertDepartment(@RequestBody FrmAddUserType usertype){
		HttpEntity<Object> request = new HttpEntity<Object>(usertype,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "usertype/insert", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/usertype/{id}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deleteDepartment(@PathVariable("id") String id){
		HttpEntity<Object> request = new HttpEntity<Object>(header);		
		ResponseEntity<Map> response = rest.exchange(WSURL + "usertype/"+id, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
}
