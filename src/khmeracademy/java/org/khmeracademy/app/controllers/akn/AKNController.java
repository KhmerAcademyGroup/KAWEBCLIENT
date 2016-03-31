package org.khmeracademy.app.controllers.akn;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
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
@RequestMapping("/akn/scholarship")
public class AKNController {
	
	@Autowired
	@Qualifier("aknHeaders")
	private HttpHeaders aknHeaders;
	
	@Autowired
	private RestTemplate rest;
	
	private String AKNURL = "http://akn.khmeracademy.org/";
	
	@RequestMapping(value="/{key}", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getAKNScholarship(@PathVariable String key){
		System.out.println("AKN SCHOLARSHIP");
		HttpEntity<Object> request = new HttpEntity<Object>(aknHeaders);
		Map<String,Object> map = new HashMap<String , Object>();
		if(key.equals("getAKN")){
			ResponseEntity<Map> all = rest.exchange(AKNURL + "api/article/1/12/0/0/0/", HttpMethod.GET , request , Map.class) ;
        	map.put("NEWS", all.getBody());
        	map.put("KEY", key);
		}
		if(key.equals("getAKNScholarship")){
	        ResponseEntity<Map> scholarship = rest.exchange(AKNURL + "api/article/1/12/50/0/0/", HttpMethod.GET , request , Map.class) ;
	        map.put("NEWS", scholarship.getBody());
        	map.put("KEY", key);
		}
		if(key.equals("getAKNTechnology")){
	        ResponseEntity<Map> technology = rest.exchange(AKNURL + "api/article/1/12/4/0/0/", HttpMethod.GET , request , Map.class) ;
	        map.put("NEWS", technology.getBody());
        	map.put("KEY", key);
		}
		if(key.equals("getAKNNational")){
			ResponseEntity<Map> national = rest.exchange(AKNURL + "api/article/1/12/43/0/0/", HttpMethod.GET , request , Map.class) ;
			map.put("NEWS", national.getBody());
			map.put("KEY", key);
		}
		if(key.equals("getAKNInternational")){
	        ResponseEntity<Map> international = rest.exchange(AKNURL + "api/article/15/12/4/0/0/", HttpMethod.GET , request , Map.class) ;
			map.put("NEWS", international.getBody());
			map.put("KEY", key);
		}
		if(key.equals("getAKNLife")){
	        ResponseEntity<Map> international = rest.exchange(AKNURL + "api/article/15/12/7/0/0/", HttpMethod.GET , request , Map.class) ;
			map.put("NEWS", international.getBody());
			map.put("KEY", key);
		}
		if(key.equals("getAKNSport")){
	        ResponseEntity<Map> international = rest.exchange(AKNURL + "api/article/15/12/9/0/0/", HttpMethod.GET , request , Map.class) ;
			map.put("NEWS", international.getBody());
			map.put("KEY", key);
		}
		return new ResponseEntity<Map<String , Object>>(map , HttpStatus.OK);
	}
}


