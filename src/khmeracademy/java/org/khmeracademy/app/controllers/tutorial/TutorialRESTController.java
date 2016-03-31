
package org.khmeracademy.app.controllers.tutorial;

import java.util.Map;

import org.khmeracademy.app.entities.Tutorial;
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
public class TutorialRESTController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	 /* GET */
	@RequestMapping(value="/tutorial/rest/listcategory", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getListCategory(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/listcategory", HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	 /* GET */
		@RequestMapping(value="/tutorial/rest/listtitles/{categoryid}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getListTitle(@PathVariable("categoryid") String categoryId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/listtitle/"+ categoryId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
		
	/* GET */
		@RequestMapping(value="/tutorial/rest/getfirstdetail/{categoryid}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getFirstDetail(@PathVariable("categoryid") String categoryId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/getdefault/"+ categoryId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/tutorial/rest/getdetail/{id}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getDetail(@PathVariable("id") String Id){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/"+ Id, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/admin/tutorial/rest/getList/{userid}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getTutorialList(@PathVariable("userid") String userId,
	    		 @RequestParam(value = "page", required = false , defaultValue="1") int page 
	 			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/list/"+ userId+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/admin/tutorial/rest/getCategory", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getCategoryList(){			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/category/listall", HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* POST */
		@RequestMapping(value="/admin/tutorial/rest/tutorial", method= RequestMethod.POST)
	    public ResponseEntity<Map<String, Object>> addTutorial(@RequestBody Tutorial tutorial){			
			HttpEntity<Object> request = new HttpEntity<Object>(tutorial, header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/", HttpMethod.POST , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* PUT */
		@RequestMapping(value="/admin/tutorial/rest/tutorial", method= RequestMethod.PUT)
	    public ResponseEntity<Map<String, Object>> updateTutorial(@RequestBody Tutorial tutorial){			
			HttpEntity<Object> request = new HttpEntity<Object>(tutorial, header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/", HttpMethod.PUT , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* PUT */
		@RequestMapping(value="/admin/tutorial/rest/deleteTutorial/{id}", method= RequestMethod.DELETE)
	    public ResponseEntity<Map<String, Object>> deleteTutorial(@PathVariable("id") String tutorialId){			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/" + tutorialId, HttpMethod.DELETE , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
		
		
		@RequestMapping(value="/tutorial/rest/list_tutorial", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> listTutorial( 
	    			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
	 		    	, @RequestParam(value="item" , required = false , defaultValue="20") int item){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/list_tutorial?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
}
