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
	
	@RequestMapping(value="/", method= RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> getAKNScholarship(){
		System.out.println("AKN SCHOLARSHIP");
		HttpEntity<Object> request = new HttpEntity<Object>(aknHeaders);
		Map<String,Object> map = new HashMap<String , Object>();
		ResponseEntity<Map> all = rest.exchange(AKNURL + "api/article/1/8/0/0/0/", HttpMethod.GET , request , Map.class) ;
        map.put("ALL", all.getBody());
        ResponseEntity<Map> scholarship = rest.exchange(AKNURL + "api/article/1/8/50/0/0/", HttpMethod.GET , request , Map.class) ;
        map.put("SCHOLARSHIP", scholarship.getBody());
        ResponseEntity<Map> technology = rest.exchange(AKNURL + "api/article/1/8/4/0/0/", HttpMethod.GET , request , Map.class) ;
        map.put("TECHNOLOGY", technology.getBody());
        ResponseEntity<Map> national = rest.exchange(AKNURL + "api/article/1/8/43/0/0/", HttpMethod.GET , request , Map.class) ;
        map.put("NATIONAL", national.getBody());
        ResponseEntity<Map> international = rest.exchange(AKNURL + "api/article/15/8/4/0/0/", HttpMethod.GET , request , Map.class) ;
        map.put("INTERNATIONAL", international.getBody());
		return new ResponseEntity<Map<String , Object>>(map , HttpStatus.OK);
	}
}


