package org.khmeracademy.app.controllers.video;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddMainCategory;
import org.khmeracademy.app.entities.input.FrmUpdateMainCategory;
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
	@RequestMapping("/")
	public class MainCategoryRestController {
		
		@Autowired
		private HttpHeaders header;
		
		@Autowired
		private RestTemplate rest;
		
		@Autowired
		private String WSURL;
		
		 /* GET */
		@RequestMapping(value="rest/video/maincategory", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> listMainCategory(){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/maincategory/listmaincategory", HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
		
		 /* DELETE */
		@RequestMapping(value="rest/video/maincategory/{id}" , method = RequestMethod.DELETE)
		public ResponseEntity<Map<String , Object>> deleteMainCategory(@PathVariable("id") String id){
			HttpEntity<Object> request = new HttpEntity<Object>(header);		
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/maincategory/getmaincategory/"+id, HttpMethod.DELETE , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		 /* INSERT */
		@RequestMapping(value="rest/video/maincategory" , method = RequestMethod.POST)
		public ResponseEntity<Map<String , Object>> insertMainCategory(@RequestBody FrmAddMainCategory category){
			HttpEntity<Object> request = new HttpEntity<Object>(category,header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/maincategory", HttpMethod.POST , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		 /* UPDATE */
		@RequestMapping(value="rest/video/maincategory" , method = RequestMethod.PUT)
		public ResponseEntity<Map<String , Object>> updateMainCategory(@RequestBody FrmUpdateMainCategory category){
			HttpEntity<Object> request = new HttpEntity<Object>(category,header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/maincategory", HttpMethod.PUT , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		
	}
