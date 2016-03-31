
package org.khmeracademy.app.controllers.elearning;

import java.security.SecureRandom;
import java.util.Map;

import javax.websocket.server.PathParam;

import org.khmeracademy.app.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class PlaylistRestTemplateController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	/*@RequestMapping(value="/rest/elearning/index" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> playlistDetail(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/listMainCategoryAndPlaylist", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}*/
	
	@RequestMapping(value="/rest/elearning/playlistdetail/{pid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> playListDetail(@PathVariable(value="pid") String pid,
			@RequestParam(value = "page", required = false , defaultValue="1") int page 
			, @RequestParam(value="item" , required = false , defaultValue="10") int item
			){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/listVideoInPlaylist/" + pid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/listallvideo" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listVideoAddtoPlayList(
			@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam(value="item", required=false, defaultValue="10") int item
			){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/list/all?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/getplaylist/{pid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getPlaylist(@PathVariable(value="pid") String pid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/getplaylistbyplaylistid/"+pid , HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	 
	@RequestMapping(value="/rest/elearning/videotoplaylist/{pid}/{vid}" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> addVideoToPlaylist(@PathVariable(value="pid") String pid ,@PathVariable(value="vid") String vid){
		System.err.println(pid + "   " +vid);
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/addvideotoplaylistDetail/"+pid+"/"+vid , HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/elearning/deletevideofromplaylistdetail/{pid}/{vid}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deleteVideoFromPlaylist(@PathVariable(value="pid") String pid ,@PathVariable(value="vid") String vid){
		System.err.println(pid + "   " +vid);
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/deletevideofromplaylistdetail/"+pid+"/"+vid , HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	 
	@RequestMapping(value="/rest/elearning/deleteplaylistdetail/{pid}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deletePlaylist(@PathVariable(value="pid") String pid ){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/deleteplaylist/"+pid , HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
		@RequestMapping(value="/rest/elearning/listvideouser/{uid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listVideoUser(@PathVariable(value="uid") String uid ,
				@RequestParam(value="page", required=false, defaultValue="1") int page,
				@RequestParam(value="item", required=false, defaultValue="10") int item,
				@RequestParam(value="status", required=false, defaultValue="true") boolean status){			
			HttpEntity<Object> request = new HttpEntity<Object>(header);			
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/user/u/"+uid+"?page="+page+"&item="+item+"&status="+status , HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/elearning/search_allvideo/{vname}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> searchAllVideo(@PathVariable(value="vname") String vname ,
				@RequestParam(value="page", required=false, defaultValue="1") int page,
				@RequestParam(value="item", required=false, defaultValue="10") int item,
				@RequestParam(value="status", required=false, defaultValue="true") boolean status){			
			HttpEntity<Object> request = new HttpEntity<Object>(header);			
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/list/all/"+vname+"?page="+page+"&item="+item+"&status="+status , HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		@RequestMapping(value="/rest/elearning/search_uservideo/{uid}/{vname}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> searchVideoUser(@PathVariable(value="uid") String uid,@PathVariable(value="vname") String vname ,
				@RequestParam(value="page", required=false, defaultValue="1") int page,
				@RequestParam(value="item", required=false, defaultValue="10") int item,
				@RequestParam(value="status", required=false, defaultValue="true") boolean status){			
			HttpEntity<Object> request = new HttpEntity<Object>(header);			
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/user/u/" + uid + "/name/"+ vname + "?page="+page+"&item="+item+"&status="+status , HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		
		@RequestMapping(value="/rest/elearning/searchcourse" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listCategory(
				  @RequestParam(value = "page", required = false , defaultValue="1") int page 
				, @RequestParam(value="item" , required = false , defaultValue="20") int item
				, @RequestParam(value="keyword" , required = false , defaultValue="") String keyword){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/searchcourse?keyword="+keyword+"&page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
	
		@RequestMapping(value="/rest/elearning/recent/{userid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listrecent(@PathVariable String userid){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/playlists/recents/"+ userid, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/elearning/recommend/{userid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> recommendedVideosAndCourses(@PathVariable String userid){
			User user = null;
			Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
			if(!authentication.getPrincipal().equals("anonymousUser")){
				user = (User) authentication.getPrincipal();
			}
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/recommend/"+user.getUserId(), HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/elearning/index_new_1/{userid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listPlaylistByMainCategory(@PathVariable String userid){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/playlists/index_new_1/"+ userid, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/elearning/index_new_1/get/{maincategoryid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listCourseByMainCategoryId(@PathVariable String maincategoryid){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/list_playlist_by_maincategoryid/"+ maincategoryid, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		@RequestMapping(value="/rest/elearning/plalylistByMainCateogryWithPagin/{maincategoryid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listPlaylistsByMainCategoryWithPagin(
				@PathVariable String maincategoryid,
				@RequestParam(value = "page", required = false , defaultValue="1") int page 
			   ,@RequestParam(value="item" , required = false , defaultValue="10") int item){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/byMainCategoryWithPagin/"+ maincategoryid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
	
}
