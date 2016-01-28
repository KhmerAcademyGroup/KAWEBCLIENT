package org.khmeracademy.app.controllers.video;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddCategory;
import org.khmeracademy.app.entities.input.FrmAddForumCategory;
import org.khmeracademy.app.entities.input.FrmUpdateCategory;
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
@RequestMapping("/")
public class VideoRestController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="rest/video/category" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listCategory(
			@RequestParam(value = "page", required = false , defaultValue="1") int page 
		    , @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/category?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="rest/video/category/{id}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deleteDepartment(@PathVariable("id") String id){
		HttpEntity<Object> request = new HttpEntity<Object>(header);		
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/category/"+id, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
		
	@RequestMapping(value="rest/video/category" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> insertCategory(@RequestBody FrmAddCategory category){
		HttpEntity<Object> request = new HttpEntity<Object>(category,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/category", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="rest/video/category" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateCategory(@RequestBody FrmUpdateCategory category){
		HttpEntity<Object> request = new HttpEntity<Object>(category,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/category", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	
}
