package org.khmeracademy.app.controllers.forum;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddAnswer;
import org.khmeracademy.app.entities.input.FrmAddQuestion;
import org.khmeracademy.app.entities.input.FrmSelectAnswer;
import org.khmeracademy.app.entities.input.FrmVote;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class ForumRestComment {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/forum/question" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listQuestion(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/listquestion?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/forum/questiondto" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listQuestionDTO(
			  @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/listquestiondto?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/forum/question/c/{cid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listQuestionByCate(
			  @PathVariable("cid") String cid
			, @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/listquestion/c/"+cid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/forum/question/t/{tag}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listQuestionByTag(
			  @PathVariable("tag") String tag
			, @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/listquestion/t/"+tag+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/forum/question/{qid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getQuestionByQuestionId(
			  @PathVariable("qid") String qid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/getquestionbyquestionid/"+qid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/forum/question/{qid}/answers" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listAnswerByQuestionId(
			  @PathVariable("qid") String qid
			, @RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="20") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/listanswerbyquestionid/"+qid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/forum/question/{qid}/selectedanswer" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getSelectedAnserByQuestionId(
			  @PathVariable("qid") String qid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/getselectedanswerbyquestionid/"+qid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/* Post Answer */
	@RequestMapping(value="/rest/forum/answer" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> postAnswer(@RequestBody FrmAddAnswer answer ){
		HttpEntity<Object> request = new HttpEntity<Object>(answer,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/addanswer" , HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/forum/question/listtagandcategory" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listTagAndCategory(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/listtagandcategory" , HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/* Post Question */
	@RequestMapping(value="/rest/forum/question/ask" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> postQuestion(@RequestBody FrmAddQuestion question ){
		HttpEntity<Object> request = new HttpEntity<Object>(question,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/comment/addquestion" , HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/* Vote */
	@RequestMapping(value="/rest/forum/vote/{type}" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> vote(@RequestBody FrmVote vote , @PathVariable("type") String type ){
		HttpEntity<Object> request = new HttpEntity<Object>(vote,header);
		String url = "";
		if(type.equalsIgnoreCase("LIKEQ")){
			url = "forum/vote/likequestion";
		}else if(type.equalsIgnoreCase("UNLIKEQ")){
			url = "forum/vote/unlikequestion";
		}else if(type.equalsIgnoreCase("LIKEA")){
			url = "forum/vote/likeanswer";
		}else if(type.equalsIgnoreCase("UNLIKEA")){
			url = "forum/vote/unlikeanswer";
		}
//		System.out.println(url);
		ResponseEntity<Map> response = rest.exchange(WSURL + url , HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/* Select */
	@RequestMapping(value="/rest/forum/selectanswer" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> selectAnswer(@RequestBody FrmSelectAnswer answer ){
		HttpEntity<Object> request = new HttpEntity<Object>(answer,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "forum/vote/selectanswer" , HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
}
