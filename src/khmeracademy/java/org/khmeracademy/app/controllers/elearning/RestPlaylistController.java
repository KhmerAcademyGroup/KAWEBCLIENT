package org.khmeracademy.app.controllers.elearning;

import java.util.HashMap;
import java.util.Map;

import javax.websocket.server.PathParam;

import org.khmeracademy.app.entities.input.FrmUpdateDepartment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class RestPlaylistController {
	
	@Autowired
	private String WebURL;
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	/*@RequestMapping(value="/playlistdetail" , method =  RequestMethod.GET)
	public String playlistDetail(){
		return "elearning/playlistdetail";
	}
	
	@RequestMapping(value="/admin/forumcategory",method =  RequestMethod.GET)
	public String forumCategoryPage(){
		return "admin/forumcategory";
	}
	*/
	/*@RequestMapping(value="/playlistdetail" , method =  RequestMethod.GET)
	public String playlistDetail(){
		return "/elearning/playlistdetail";
	}*/
	
	
	

	@RequestMapping(value="/rest/elearning/playlist" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listDepartment(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/listallplaylist", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
/*	@RequestMapping(value="/rest/log/department" , method = RequestMethod.PUT)
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
	}*/
}