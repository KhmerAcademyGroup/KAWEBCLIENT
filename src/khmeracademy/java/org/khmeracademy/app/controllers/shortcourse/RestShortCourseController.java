package org.khmeracademy.app.controllers.shortcourse;

import java.util.Map;

import javax.servlet.ServletContext;

import org.khmeracademy.app.entities.FrmStudentDetail;
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

@RestController()
@RequestMapping("/rest/kshrd")
public class RestShortCourseController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	
	/*@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> courses(@RequestBody FrmStudentDetail d
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(d,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/kshrd?page="+page+"&item="+item, HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="update_status" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateStudentStatus(@RequestBody FrmStudentDetail d){
		HttpEntity<Object> request = new HttpEntity<Object>(d,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/kshrd/update_student_status", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="update_ispaid"  , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateStudentIsPaid(@RequestBody FrmStudentDetail d){
		HttpEntity<Object> request = new HttpEntity<Object>(d,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/kshrd/update_student_ispaid", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}*/
	
	@RequestMapping(value="/shortcourse" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> courses(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "shortcourse/getcourseinfo", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/shortcourse/{id}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> delete(@PathVariable("id") int id){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "shortcourse/mycourse/"+ id, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
}
