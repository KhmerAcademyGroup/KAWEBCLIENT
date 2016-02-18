package org.khmeracademy.app.controllers.elearning;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class SearchPlaylistController {

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

	@RequestMapping(value="/rest/elearning/searchplaylist/{searchkey}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchPlaylist(@PathVariable("searchkey") String key,
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);		
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/searchplaylist/"+key, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}

}
