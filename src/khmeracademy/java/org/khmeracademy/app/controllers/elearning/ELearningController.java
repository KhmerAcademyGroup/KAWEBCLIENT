package org.khmeracademy.app.controllers.elearning;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/elearning")
public class ELearningController {
	
	@Autowired
	private String WebURL;

	@RequestMapping(value="" , method = RequestMethod.GET)
	public String  index(ModelMap m){
		final String uri = WebURL + "/admin/rest/elearning/index";
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("title","E-Learning");
	    m.addAttribute("data", restTemplate.getForObject(uri, Map.class));
		return "/elearning/index";
	}
	
	@RequestMapping(value="/playvideo" , method = RequestMethod.GET)
	public String  playVideo(ModelMap m){
		m.addAttribute("title","E-Learning");
		return "/elearning/playvideo";
	}
	
	
}
