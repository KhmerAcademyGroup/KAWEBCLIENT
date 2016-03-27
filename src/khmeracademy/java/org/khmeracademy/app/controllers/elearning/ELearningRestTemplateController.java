
package org.khmeracademy.app.controllers.elearning;

import java.util.Map;

import org.khmeracademy.app.entities.Comment;
import org.khmeracademy.app.entities.User;
import org.khmeracademy.app.entities.input.FrmCreatePlaylist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class ELearningRestTemplateController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/elearning/index" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> index(){
		try{
		HttpEntity<Object> request = new HttpEntity<Object>(header);
//		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/listMainCategoryAndPlaylist", HttpMethod.GET , request , Map.class) ;
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/maincategory/listmaincategory", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	@RequestMapping(value="/rest/elearning/playvideo" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> playVideo( 
			@RequestParam(value="playlist", required=false) String pid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/playvideo?playlist=" + pid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/getplayvideo" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getPlayVideo( 
			@RequestParam(value="v", required=false) String vid){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
			System.out.println("MainController " + user.getUsername() + " Userid " + user.getUserId());
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/getplayvideo?v=" + vid + "&user=" + userid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/getuserplaylist" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getUserPlaylistName(){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
			System.out.println("MainController " + user.getUsername() + " Userid " + user.getUserId());
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/listuserplaylist/" + userid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/playlist/addvideotoplaylistdetail" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> addVideoToPlaylist(@RequestParam("pid") String playlistid, @RequestParam("vid") String vid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/addvideotoplaylistDetail/"+ playlistid +"/" + vid, HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/playlist/deletevideofromplaylistdetail" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> deleteVideoFromPlaylist(@RequestParam("pid") String playlistid, @RequestParam("vid") String vid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/deletevideofromplaylistdetail/"+ playlistid +"/" + vid, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/playlist/createplaylist" , method = RequestMethod.POST, headers = "Accept=application/json")
	public ResponseEntity<Map<String , Object>> createPlaylist(
			@RequestParam("playlistname") String playlistname,
			@RequestParam("description") String description,
			@RequestParam("publicview") boolean view){
		
		String userid="";
		String rolename = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
			rolename = user.getUserTypeName();
			
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		FrmCreatePlaylist playlist = new FrmCreatePlaylist();
		playlist.setPlaylistName(playlistname);
		playlist.setDescription(description);
		playlist.setPublicView(view);
		playlist.setThumbnailUrl("default.png");
		playlist.setUserId(userid);
		playlist.setMaincategory(null);
		playlist.setStatus(false);
		if(rolename.equalsIgnoreCase("admin")){
			playlist.setStatus(true);
		}else{
			playlist.setStatus(false);
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(playlist, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/createplaylist", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/video/vote" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> vote(@RequestParam("v") String vid){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/vote/u/" + userid + "/v/" + vid, HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/video/unvote" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> unVote(@RequestParam("v") String vid){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/vote/u/" + userid + "/v/" + vid, HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/video/getvote" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getVote(@RequestParam("v") String vid){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/vote/u/" + userid + "/v/" + vid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/video/comment" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getComment(
			@RequestParam("v") String vid,
			@RequestParam("page") String page,
			@RequestParam(value="item", required=false) String item){
		
		String items = "";
		if(item!="" && item!=null){
			items="&item="+item;
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/comment/reply/video/v/" + vid + "?page=" + page + items, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/video/addcomment" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> userComment(
			@RequestParam("commenttext") String text,
			@RequestParam("v") String vid){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
			System.out.println(authentication.getPrincipal());
		}
		Comment comment = new Comment();
		comment.setCommentText(text);
		comment.setVideoId(vid);
		comment.setUserId(userid);
		HttpEntity<Object> request = new HttpEntity<Object>(comment, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/comment", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/video/replycomment" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> userReplyComment(
			@RequestParam("commenttext") String text,
			@RequestParam("v") String vid,
			@RequestParam("rid") String replyId){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
		}else{
			System.out.println(authentication.getPrincipal());
		}
		Comment comment = new Comment();
		comment.setCommentText(text);
		comment.setVideoId(vid);
		comment.setUserId(userid);
		comment.setReplyId(replyId);
		HttpEntity<Object> request = new HttpEntity<Object>(comment, header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/comment/reply", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/stopwatch" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> stopWatch( 
			@RequestParam("logid") String logid){
		
		String userid = "";
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		if(!authentication.getPrincipal().equals("anonymousUser")){
			User user = (User) authentication.getPrincipal();
			userid = user.getUserId();
			System.out.println("ELearningController " + user.getUsername() + " Userid " + user.getUserId());
		}else{
			System.out.println(authentication.getPrincipal());
		}
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "log/stopwatch?logid=" + logid + "&userid=" + userid, HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/mainpage/countdata" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getMainPageCountData(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/mainpage/countdata", HttpMethod.GET, request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	
}
