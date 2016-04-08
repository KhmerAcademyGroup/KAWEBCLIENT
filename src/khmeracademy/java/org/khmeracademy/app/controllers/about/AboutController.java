package org.khmeracademy.app.controllers.about;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/about")
public class AboutController {

	@Autowired
	private String WebURL;
	
	@RequestMapping(value={""})
	public String aboutPage(ModelMap m){
		final String uri = WebURL + "/rest/mainpage/countdata";
	    RestTemplate restTemplate = new RestTemplate();
	    m.addAttribute("data", restTemplate.getForObject(uri, HashMap.class));
		return "about/index";
	}
	
	
	@RequestMapping("/supporter")
	public String supporterPage(){
		return "about/supporter";
	}
	
	@RequestMapping("/people")
	public String peoplePage(){
		return "about/people";
	}
	
	@RequestMapping("/contribute")
	public String volunteer(){
		return "about/contribute";
	}
	
	@RequestMapping("/partner")
	public String partnerPage(){
		return "about/partner";
	}
}
