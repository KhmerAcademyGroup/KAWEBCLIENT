package org.khmeracademy.app.controllers.tutorial;

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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;


@RestController
@RequestMapping("/tutorial/rest")
public class TutorialRESTController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	 /* GET */
	@RequestMapping(value="/listcategory", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getListCategory(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/listcategory", HttpMethod.GET , request , Map.class) ;
        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
    }
	
	 /* GET */
		@RequestMapping(value="/listtitles/{categoryid}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getListTitle(@PathVariable("categoryid") String categoryId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/listtitle/"+ categoryId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
		
	/* GET */
		@RequestMapping(value="/getfirstdetail/{categoryid}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getFirstDetail(@PathVariable("categoryid") String categoryId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/getdefault/"+ categoryId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/getdetail/{id}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> getDetail(@PathVariable("id") String Id){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "tutorial/"+ Id, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
}
