package org.khmeracademy.app.controllers.forum;

import java.util.Map;

import javax.websocket.server.PathParam;

import org.khmeracademy.app.entities.input.FrmAddForumCategory;
import org.khmeracademy.app.entities.input.FrmUpdateForumCategory;
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
public class ForumCategoryRestController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/category" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listCategory(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/category?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/category/search" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchCategory(
			  @RequestParam(value = "categoryName", required = false , defaultValue="") String categoryName 
			, @RequestParam(value = "page", required = false , defaultValue="1") int page 
		    , @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/category?categoryName=categoryName&page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/admin/rest/category" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> listCategory(@RequestBody FrmAddForumCategory category){
		HttpEntity<Object> request = new HttpEntity<Object>(category,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/category", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/category/{cid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getCategory(@PathVariable("cid") String cid){
		HttpEntity<Object> request = new HttpEntity<Object>(cid,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/category/"+cid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/admin/rest/category" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateCategory(@RequestBody FrmUpdateForumCategory category){
		HttpEntity<Object> request = new HttpEntity<Object>(category,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/category", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}

	
}
