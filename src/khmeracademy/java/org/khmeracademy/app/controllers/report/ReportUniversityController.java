package org.khmeracademy.app.controllers.report;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportUniversityController {

	@RequestMapping(value="/admin/report/university",method=RequestMethod.GET)
	public String reportUniversity(){
		
		return "admin/reportuniversity";
	}
}
