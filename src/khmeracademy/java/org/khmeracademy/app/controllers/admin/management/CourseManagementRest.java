package org.khmeracademy.app.controllers.admin.management;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmUpdateForumCategory;
import org.khmeracademy.app.entities.input.FrmUpdatePlaylist;
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
@RequestMapping("/admin")
public class CourseManagementRest {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/courses/{mainCategory}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> courses(@PathVariable("mainCategory") String mainCategory
										, @RequestParam(value = "playlistName", required = false , defaultValue="") String playlistName 
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/courses/"+mainCategory+"?page="+page+"&item="+item+"&playlistName="+playlistName, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/courses/maincategories" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> mainCategories(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/maincategory/listmaincategory", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/course/{courseId}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> course(@PathVariable("courseId") String courseId){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/courses/course/"+courseId, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/course" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateCourse(@RequestBody FrmUpdatePlaylist p){
		HttpEntity<Object> request = new HttpEntity<Object>(p,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/courses", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/course/status/{courseid}/{value}" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateCourseStatus(@PathVariable("courseid") String courseId,@PathVariable("value") boolean value){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/courses/update_status/"+courseId+"/"+value, HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
		
}
