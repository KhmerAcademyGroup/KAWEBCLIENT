package org.khmeracademy.app.controllers.admin.report;

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
public class CategoryRESTController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	
	 /* GET */
		@RequestMapping(value="/admin/report/rest/listcategory", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> ListCategories(){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "log/listcategory", HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/admin/report/rest/listuserbycategory/{id}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> ListUserByCategory(@PathVariable("id") String categoryId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "log/listuserbycate/"+categoryId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/admin/report/rest/listcatebyuser/{id}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> ListCategoryByUser(@PathVariable("id") String userId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "log/listcatebyuser/"+userId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/admin/report/rest/listuniversity", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> ListUniversities(){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "log/listuniversity", HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/admin/report/rest/listdepartment/{id}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> ListDepartments(@PathVariable("id") String departmentId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "log/listdepartment/"+ departmentId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
	/* GET */
		@RequestMapping(value="/admin/report/rest/listuserbydept/d/{depId}/u/{univerId}", method= RequestMethod.GET)
	    public ResponseEntity<Map<String, Object>> ListUserByDepartment(@PathVariable("depId") String departmentId, @PathVariable("univerId") String UniversityId){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "log/listuserbydept/d/"+departmentId+"/u/"+ UniversityId, HttpMethod.GET , request , Map.class) ;
	        return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	    }
}

