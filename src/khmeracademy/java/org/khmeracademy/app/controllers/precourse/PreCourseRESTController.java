package org.khmeracademy.app.controllers.precourse;

import java.util.Map;

import org.khmeracademy.app.entities.PreCourse;
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

public class PreCourseRESTController {
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	 /* GET */
	@RequestMapping(value="/precourse/rest/checkprecourse/{userid}", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> checkPreCourse(@PathVariable("userid") String userId){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/checkprecourses/"+ userId, HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	 /* GET */
	@RequestMapping(value="/precourse/rest/getprecoursestudent/{userid}", method= RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getprecoursestudent(@PathVariable("userid") String userId){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/getprecoursestudent/"+ userId, HttpMethod.GET , request , Map.class) ;
	    return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	/* POST */
	@RequestMapping(value="/precourse/rest/addprecourse", method= RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addPrecourse(@RequestBody PreCourse precourse){
		HttpEntity<Object> request= new HttpEntity<Object>(precourse, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/addprecourse", HttpMethod.POST, request, Map.class);
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/* PUT */
	@RequestMapping(value="/precourse/rest/editprecourse", method= RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> editPrecourse(@RequestBody PreCourse precourse){
		HttpEntity<Object> request= new HttpEntity<Object>(precourse, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/updateprecourse", HttpMethod.PUT, request, Map.class);
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/* GET */
	@RequestMapping(value="/admin/precourse/rest/getListPrecourse", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getListPreCourse(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/listall", HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	/* GET */
	@RequestMapping(value="/admin/precourse/rest/getPrecourse/{id}", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getPreCourse(@PathVariable("id") String precourseId){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/getprecourse/"+ precourseId, HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	/* PUT */
	@RequestMapping(value="/admin/precourse/rest/updateprecoursewithpayment", method= RequestMethod.PUT)
	public ResponseEntity<Map<String, Object>> updatePrecourseWithPayment(@RequestBody PreCourse precourse){
		HttpEntity<Object> request= new HttpEntity<Object>(precourse, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/updateprecoursewithpayment", HttpMethod.PUT, request, Map.class);
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
}
