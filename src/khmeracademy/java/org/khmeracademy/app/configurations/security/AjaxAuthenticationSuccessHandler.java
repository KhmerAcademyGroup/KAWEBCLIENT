package org.khmeracademy.app.configurations.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.khmeracademy.app.entities.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;

@Component("ajaxAuthenticationSuccessHandler")
public class AjaxAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	private RequestCache requestCache = new HttpSessionRequestCache();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
	
//			Map<String , Object> map = new HashMap<String , Object>();
//			map.put("APIUser", getAPIUser());
//			map.put("targetUrl", determineTargetUrl(auth));
//			
//			String json = new Gson().toJson(map);
		
		
			
		
			SavedRequest savedRequest = requestCache.getRequest(request, response);
			String targetUrl = request.getContextPath()+"/";
			if (savedRequest != null) {
				targetUrl = savedRequest.getRedirectUrl();
			}
			Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
			User user = (User) authentication.getPrincipal();
//			System.out.println("ajaxAuthenticationSuccessHandler " + user.getUsername());
		
			if(user.isConfirmed()== false){
				targetUrl = "false";
				SecurityContextHolder.getContext().setAuthentication(null);
			}


			response.getWriter().print(targetUrl);
	        response.getWriter().flush();
	        
	}
	
	/*
	 * This method extracts the roles of currently logged-in user and returns
	 * appropriate URL according to his/her role.
	 */
	/*private String determineTargetUrl(Authentication authentication) {

		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

		List<String> roles = new ArrayList<String>();

		for (GrantedAuthority authority : authorities) {
			System.out.println("ROLE " + authority.getAuthority());
			roles.add(authority.getAuthority());
			System.out.println("Extract Role: " + authority.getAuthority());
		}
		if (roles.contains("ROLE_ADMIN")) {
			return "admin";
		}else if(roles.contains("ROLE_USER")){
			return "webserviceapi";
		}else{
			return "accessDenied";
		}

	}*/
	
	/*// Get API User from HttpSession
	private APIUser getAPIUser(){
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		APIUser user = (APIUser) authentication.getPrincipal();
		return user;
	}*/
	
	public void setRequestCache(RequestCache requestCache) {
		this.requestCache = requestCache;
	}

}
