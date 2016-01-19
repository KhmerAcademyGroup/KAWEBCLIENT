package org.khmeracademy.app.controllers.log;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogUniversityController {

	@RequestMapping(value="/admin/log/university",method=RequestMethod.GET)
	public String logUniversity(){
		
		return "admin/loguniversity";
	}
}
