
package org.khmeracademy.app.controllers.elearning;

import java.util.Map;

import org.khmeracademy.app.entities.Video;
import org.khmeracademy.app.entities.input.FrmChangePassword;
import org.khmeracademy.app.entities.input.FrmCreatePlaylist;
import org.khmeracademy.app.entities.input.FrmUpdatePlaylist;
import org.khmeracademy.app.entities.input.FrmUpdateUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class UserRestTemplateController {
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/user/profile/listMainCategoryAndPlaylist" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> userProfile(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/video/listMainCategoryAndPlaylist", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/countuserhistory/{uid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> countUserHistory(@PathVariable("uid") String uid){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/countuserhistory/"+uid, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/listuserhistory/{uid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listUserHistory(@PathVariable("uid") String uid
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/listuserhistory/"+uid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/searchuserhistory/{uid}/{videoname}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchUserHistory(@PathVariable("uid") String uid
										,@PathVariable("videoname") String vname
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/searchhistory/"+uid+"/"+vname+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/user/profile/removefromhistory/{hid}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> removeFromHistory(@PathVariable("hid") String hid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/deletehistory/"+hid, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/removeallhistory/{uid}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> removeAllHistory(@PathVariable("uid") String uid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/history/deleteallhistory/"+uid, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	//////////////////video
	@RequestMapping(value="/rest/user/profile/listuservideo/{uid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listUserVideo(@PathVariable("uid") String uid
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/video/user/u/"+uid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/searchuserhvideo/{uid}/{videoname}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchUserVideo(@PathVariable("uid") String uid
										,@PathVariable("videoname") String vname
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/video/user/u/"+uid+"/name/"+vname+"?page="+page+"&item="+item+"&status=true", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/user/profile/disablevideo/{vid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> disablevideo(@PathVariable("vid") String vid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video/enable/v/"+vid, HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	
	//playlist
	@RequestMapping(value="/rest/user/profile/deletevideofromplaylist/{pid}/{vid}" , method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deletevideofromplaylist(@PathVariable("pid") String pid,
																		@PathVariable("vid") String vid){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/deletevideofromplaylistdetail/"+pid+"/"+vid, HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/rest/user/profile/listvideoinplaylist/{pid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listvideoinplaylist(
										@PathVariable("pid") String pid,
										 @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/listVideoInPlaylist/"+pid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/togglePlaylist/{pid}" , method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> togglePlayList( @PathVariable("pid") String pid
										){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/togglePlaylist/"+pid, HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	
	@RequestMapping(value="/rest/user/profile/searchPlaylist/{key}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> searchPlayList(
										@PathVariable("key") String key
										, @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/searchplaylist/"+key+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/user/profile/listallplaylist" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> listAllPlaylist(
										 @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/listallplaylist?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
		@RequestMapping(value="/rest/user/profile/listuserplaylist/{uid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listUserPlaylist(@PathVariable("uid") String uid
											, @RequestParam(value = "page", required = false , defaultValue="1") int page 
										    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/userplaylist/"+uid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/viewplaylist/{pid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> viewPlaylist(@PathVariable("pid") String pid){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/playlist/getplaylistbyplaylistid/"+pid, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/searchplaylist/{uid}/{playlistname}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> searchPlaylist(@PathVariable("uid") String uid
											,@PathVariable("playlistname") String pname
											, @RequestParam(value = "page", required = false , defaultValue="1") int page 
										    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/listplayList/"+uid+"/"+pname+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/listcategory" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listCategory(){
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/maincategory/listmaincategory", HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		
		@RequestMapping(value="/rest/user/profile/deleteplaylist/{pid}" , method = RequestMethod.DELETE)
		public ResponseEntity<Map<String , Object>> deletePlaylist(@PathVariable("pid") String pid){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/deleteplaylist/"+pid, HttpMethod.DELETE , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		@RequestMapping(value="/rest/user/profile/createplaylist" , method = RequestMethod.POST)
		public ResponseEntity<Map<String , Object>> createplaylist(@RequestBody FrmCreatePlaylist playlist){
			HttpEntity<Object> request = new HttpEntity<Object>(playlist,header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/createplaylist", HttpMethod.POST , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		

		@RequestMapping(value="/rest/user/profile/updateplaylist" , method = RequestMethod.PUT)
		public ResponseEntity<Map<String , Object>> updatePlayList(@RequestBody FrmUpdatePlaylist user){
			HttpEntity<Object> request = new HttpEntity<Object>(user,header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/elearning/playlist/updatePlayList", HttpMethod.PUT , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		
		///////////////profile                                                                           
		@RequestMapping(value="/rest/user/profile/userprofile/{uid}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> userProfile(@PathVariable("uid") String uid){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/user/"+uid, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/listdepartment/{did}" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listDepartment(@PathVariable("did") String did){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/department/list/"+did, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/listdepartment/" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listallDepartment(
										 @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/department/?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/listuniversity" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listUniversity(
										 @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/university/list?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		@RequestMapping(value="/rest/user/profile/changepassword" , method = RequestMethod.POST)
		public ResponseEntity<Map<String , Object>> changePassword(@RequestBody FrmChangePassword changepass){
			HttpEntity<Object> request = new HttpEntity<Object>(changepass,header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/user/changepassword", HttpMethod.POST , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/updateprofile" , method = RequestMethod.PUT)
		public ResponseEntity<Map<String , Object>> updateProfile(@RequestBody FrmUpdateUser user){
			HttpEntity<Object> request = new HttpEntity<Object>(user,header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/user", HttpMethod.PUT , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/uploadvideo" , method = RequestMethod.POST)
		public ResponseEntity<Map<String , Object>> uploadvideo(@RequestBody Video video){
			
			HttpEntity<Object> request = new HttpEntity<Object>(video,header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/video", HttpMethod.POST , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		@RequestMapping(value="/rest/user/profile/listallmaincategory" , method = RequestMethod.GET)
		public ResponseEntity<Map<String , Object>> listallmainplaylist(
										 ){
			
			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "elearning/maincategory/listmaincategory", HttpMethod.GET , request , Map.class) ;
			return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
		}
		
		
		@RequestMapping(value="/rest/user/profile/imageupload/{parth}" , method = RequestMethod.POST)
		public ResponseEntity<Map<String , Object>> imageUpload(
													//@RequestBody FrmCreatePlaylist playlist,
													@RequestParam(value = "file", required = false) MultipartFile file,
													@PathVariable("parth") String path){
			//System.out.println("===================="+path);
			//header.add("Content-Type", "multipart/form-data");			
			header.setContentType(MediaType.MULTIPART_FORM_DATA);
			System.err.println("FFFFFFFFFFFFFFFFFFFFFFFFFFFF "+file.getOriginalFilename());
			MultiValueMap<String, Object> mvm = new LinkedMultiValueMap<String, Object>();
//		    mvmc.add("file", file); // MultipartFile
			HttpEntity<MultiValueMap<String, Object>> request = new HttpEntity<MultiValueMap<String, Object>>(mvm,header);
			
//			HttpEntity<Object> request = new HttpEntity<Object>(header);
			ResponseEntity<Map> response = rest.exchange(WSURL + "/uploadfile/upload?url="+path, HttpMethod.POST , request , Map.class) ;
			
			return new ResponseEntity<Map<String , Object>>(HttpStatus.OK);
		}
		
	
	
	
	
}
