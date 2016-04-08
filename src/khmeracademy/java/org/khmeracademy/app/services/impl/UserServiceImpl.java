package org.khmeracademy.app.services.impl;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.khmeracademy.app.entities.User;
import org.khmeracademy.app.entities.UserRole;
import org.khmeracademy.app.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

@Repository
public class UserServiceImpl implements UserService{

	@Autowired
	private HttpHeaders header;
//	
//	@Autowired
//	private RestTemplate restTemplate;
//	
	@Autowired
	private String WSURL;
	
	@Override
	public User findUserByEmail(String email) {
		try{
//			HttpEntity<String> request = new HttpEntity<String>(email, header);
//			ResponseEntity<Map> responseEntity = restTemplate.exchange(WSURL+"/authentication/weblogin", HttpMethod.POST, request, Map.class);
//			Map<String, Object> map = (HashMap<String, Object>)responseEntity.getBody();

			RestTemplate restTemplate = new RestTemplate();
			restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
			restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
			User user = new User(); user.setEmail(email);
	        HttpEntity<Object> request = new HttpEntity<Object>(user,header);
			//ResponseEntity<Map> response = restTemplate.exchange("http://api.khmeracademy.org/api/authentication/weblogin", HttpMethod.POST , request , Map.class) ;
	        ResponseEntity<Map> response = restTemplate.exchange(WSURL+"/authentication/weblogin", HttpMethod.POST , request , Map.class);
	        Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		
//			System.out.println(map.get("USER"));
			if(map.get("USER") != null){
				Map<String , Object> userMap = (HashMap<String , Object>) map.get("USER");
				User u = new User();
				u.setUserId((String)userMap.get("userId"));
				u.setUsername((String)userMap.get("username"));
				u.setEmail((String)userMap.get("email"));
				u.setPassword((String)userMap.get("password"));
				u.setGender((String)userMap.get("gender"));
				if(userMap.get("dateOfBirth")!=null){
					u.setDateOfBirth(java.sql.Date.valueOf((String) userMap.get("dateOfBirth")));
				}
				if(userMap.get("registerDate")!=null){
					u.setRegisterDate(java.sql.Date.valueOf((String) userMap.get("registerDate")));
				}
				u.setPhoneNumber((String)userMap.get("phoneNumber"));
				u.setUserImageUrl((String)userMap.get("userImageUrl"));
				u.setUserTypeId((String)userMap.get("userTypeId"));
				u.setUserTypeName((String)userMap.get("userTypeName"));
				u.setPoint((Integer)userMap.get("point"));
				u.setUniversityId((String)userMap.get("universityId"));
				u.setDepartmentId((String)userMap.get("departmentId"));
				u.setUniversityName((String)userMap.get("universityName"));
				u.setDepartmentName((String)userMap.get("departmentName"));
				u.setCoverphoto((String)userMap.get("coverphotourl"));
				u.setCountComments((Integer)userMap.get("countComments"));
				u.setCountPlaylists((Integer)userMap.get("countPlaylists"));
				u.setCountVideos((Integer)userMap.get("countVideos"));
				u.setUserStatus(true);
				u.setConfirmed((boolean)userMap.get("confirmed"));
				List<UserRole> roles = new ArrayList<UserRole>();
				UserRole role = new UserRole();
				role.setRoleId((String)userMap.get("userTypeId"));
				role.setRoleName("ROLE_"+(String)userMap.get("userTypeName"));
				roles.add(role);
				u.setRoles(roles);
//				System.out.println("Password " +u.getPassword());
				return u;
			}
		}catch(Exception e){
			e.printStackTrace();
		};
		return null;
	}
	
	/*public static void main(String[] args) {
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON);
			headers.set("Authorization", "Basic S0FBUEkhQCMkOiFAIyRLQUFQSQ==");
			RestTemplate restTemplate = new RestTemplate();
			restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
			restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
	        User user = new User();
	        user.setEmail("string9999");
	        HttpEntity<Object> request = new HttpEntity<Object>(user,headers);
			ResponseEntity<Map> response = restTemplate.exchange("http://api.khmeracademy.org/api/authentication/weblogin", HttpMethod.POST , request , Map.class) ;
			Map<String, Object> map = (HashMap<String, Object>)response.getBody();
	        System.out.println(map.get("USER"));
	}*/

}
