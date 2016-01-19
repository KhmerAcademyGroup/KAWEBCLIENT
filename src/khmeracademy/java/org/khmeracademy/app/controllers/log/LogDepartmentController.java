package org.khmeracademy.app.controllers.log;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogDepartmentController {

	@RequestMapping(value="/admin/log/department",method=RequestMethod.GET)
	public String logDepartment(){
		
		return "admin/logdepartment";
	}
}
