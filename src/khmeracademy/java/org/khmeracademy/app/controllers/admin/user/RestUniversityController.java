package org.khmeracademy.app.controllers.admin.user;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddUniversity;
import org.khmeracademy.app.entities.input.FrmUpdateDepartment;
import org.khmeracademy.app.entities.input.FrmUpdateUniversity;
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
public class RestUniversityController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/log/university" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listDepartment(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "university/list?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/log/university" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateDepartment(@RequestBody FrmUpdateUniversity university){
		HttpEntity<Object> request = new HttpEntity<Object>(university,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "university/update", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/log/university" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> insertDepartment(@RequestBody FrmAddUniversity university){
		HttpEntity<Object> request = new HttpEntity<Object>(university,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "university/insert", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/log/university/{id}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deleteDepartment(@PathVariable("id") String id){
		HttpEntity<Object> request = new HttpEntity<Object>(header);		
		ResponseEntity<Map> response = rest.exchange(WSURL + "university/delete/"+id, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}	
}
