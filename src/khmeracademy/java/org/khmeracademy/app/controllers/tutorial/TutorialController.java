package org.khmeracademy.app.controllers.tutorial;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/tutorial")
public class TutorialController {
	
	@RequestMapping(value={"","/"}, method= RequestMethod.GET)
	public String indexPage(ModelMap model){
		model.addAttribute("title", "Tutorial | Khmer Academy");
		return "tutorial/dashboard";
	}
	
	@RequestMapping(value="detail/{categoryid}", method= RequestMethod.GET)
	public String detailPage(ModelMap model, @PathVariable("categoryid") String cid){
		model.addAttribute("title", "Tutorial Detail | Khmer Academy");
		model.addAttribute("cid", cid);
		return "tutorial/single_post";
	}
}