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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/precourse/rest")
public class PreCourseRESTController {
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	 /* GET */
	@RequestMapping(value="/checkprecourse/{userid}", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> checkPreCourse(@PathVariable("userid") String userId){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/checkprecourses/"+ userId, HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	 /* GET */
	@RequestMapping(value="/getprecoursestudent/{userid}", method= RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getprecoursestudent(@PathVariable("userid") String userId){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/getprecoursestudent/"+ userId, HttpMethod.GET , request , Map.class) ;
	    return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	/* POST */
	@RequestMapping(value="/addprecourse", method= RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addPrecourse(@RequestBody PreCourse precourse){
		HttpEntity<Object> request= new HttpEntity<Object>(precourse, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/addprecourse", HttpMethod.POST, request, Map.class);
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/* PUT */
	@RequestMapping(value="/editprecourse", method= RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> editPrecourse(@RequestBody PreCourse precourse){
		HttpEntity<Object> request= new HttpEntity<Object>(precourse, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "precourse/updateprecourse", HttpMethod.PUT, request, Map.class);
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
}
