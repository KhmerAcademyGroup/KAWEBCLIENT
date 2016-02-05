package org.khmeracademy.app.controllers.admin.user;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmUpdateDepartment;
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
public class RestDepartmentController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/log/department" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listDepartment(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "department/?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/log/department" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateDepartment(@RequestBody FrmUpdateDepartment department){
		HttpEntity<Object> request = new HttpEntity<Object>(department,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "department/", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/log/department" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> insertDepartment(@RequestBody FrmUpdateDepartment department){
		HttpEntity<Object> request = new HttpEntity<Object>(department,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "department/", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/log/department/{id}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deleteDepartment(@PathVariable("id") String id){
		HttpEntity<Object> request = new HttpEntity<Object>(header);		
		ResponseEntity<Map> response = rest.exchange(WSURL + "department/"+id, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}	
}
