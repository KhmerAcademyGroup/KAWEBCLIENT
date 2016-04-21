package org.khmeracademy.app.controllers.admin.management;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.khmeracademy.app.entities.FrmStudentDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import net.sf.jxls.transformer.XLSTransformer;

@RestController()
@RequestMapping("/admin/kshrd")
public class KSHRDStudentManagementRest {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@Autowired
    private ServletContext context;
	
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> courses(@RequestBody FrmStudentDetail d
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(d,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "admin/kshrd?page="+page+"&item="+item, HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value = "/export", method = RequestMethod.GET)
    public String export(HttpServletRequest request, HttpServletResponse response) {
        try {
            // set output header
            ServletOutputStream os = response.getOutputStream();
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename=\"myexcel.xls\"");
             
            String reportLocation = context.getRealPath("WEB-INF");
 
            Map beans = new HashMap();
            beans.put("name", "Edwin");
            beans.put("address", "Jakarta, Indonesia");
            XLSTransformer transformer = new XLSTransformer();
 
            Workbook workbook = transformer.transformXLS(new FileInputStream(reportLocation + "/myexcel.xls"), beans);
            workbook.write(os);
            os.flush();
 
            return null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }   

}
