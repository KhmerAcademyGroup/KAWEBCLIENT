<%@page import="org.khmeracademy.app.entities.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- BEGIN TOP NAVBAR -->

<div class="top-navbar" style="    background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0); z-index: 99000;">

	<div class="container">
	
		<!-- Begin logo -->
		<div class="logo">
			<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/assets/img/khmeracademy.png" alt="Khmer Academy"></a>
		</div><!-- /.logo -->
		<!-- End logo -->
		
		<!-- Begin button toggle nav -->
		<div class="btn-toggle-nav" id="btn-toggle-nav"><i class="fa fa-bars"></i></div>
		<div class="btn-toggle-search" id="btn-icon-search"><i class="fa fa-search"></i></div>
		<!-- <div class="btn-toggle-phone" id="btn-icon-phone"><i class="fa fa-phone"></i></div> -->
		<!-- End button toggle nav -->
		
		<!-- Begin visible phone and search nav -->
		<div id="search-sub" class="nav-right-info">
			<i class="fa fa-times times-icon" id="close-search-nav"></i>
			<form role="form" method="get" action="${pageContext.request.contextPath}/elearning/search">
				<input type="text" name="keyword" class="form-control" placeholder="<spring:message code="m_search"/>">
			</form>
		</div>
		<!-- End visible phone and search nav -->
		
		<!-- Begin nav menu -->
		<ul class="menus">
			<li class="parent">
				<a href="${pageContext.request.contextPath}/"><spring:message code="m_home"/></a>
			</li>
			<li class="parent">
				<a href="${pageContext.request.contextPath}/elearning"><spring:message code="m_e-learning"/></a>
			</li>
			<li class="parent">
				<a href="${pageContext.request.contextPath}/tutorial"><spring:message code="m_tutorial"/></a>
			</li>
			<li class="parent">
				<a href="${pageContext.request.contextPath}/forum"><spring:message code="m_forum"/></a>
			</li>
			<li class="parent">
				<a href="http://news.khmeracademy.org" target="_blank"><spring:message code="m_news"/></a>
			</li>
			
			<li class="parent">
				<a href="http://www.moeys.gov.kh" target="_blank"><spring:message code="m_moeys"/></a>
				<ul class="sub-menus">
					<li class="sub-list">
						<a href="http://oer.moeys.gov.kh" target="_blank"><spring:message code="m_ore"/></a>
					</li>
					<li class="sub-list">
						<a href="http://krou.moeys.gov.kh" target="_blank"><spring:message code="m_krou"/></a>
					</li>
				</ul>
			</li>
			
			<li class="parent" >
					 <a href="${pageContext.request.contextPath}/about">
						   <spring:message code="m_about"/>
					 </a>
					 <ul class="sub-menus">
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about"><spring:message code="m_about"/></a></li>
<%-- 						<li class="sub-list"><a href="${pageContext.request.contextPath}/about/people">People</a></li> --%>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about/supporter"><spring:message code="m_supporter"/></a></li>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about/partner"><spring:message code="m_partner"/></a></li>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about/contribute"><spring:message code="m_contribute"/></a></li>
					</ul>
			</li>
				
			<sec:authorize access="isAuthenticated()">
<!-- 				<li class="parent"> -->
<%-- 					<img style="padding-top: 12px;" width="50px" src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-1.jpg" class="avatar img-circle" alt="Avatar"> --%>
<!-- 				</li> -->
				<%
				Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
				User user= null;
				if(!authentication.getPrincipal().equals("anonymousUser")){
					 user = (User) authentication.getPrincipal();
				}
				%>
				
				<li class="parent" >
					 <a href="${pageContext.request.contextPath}/user/profile"  class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" title="<%= user.getUsername() %>">
						    <img   style="height:140%"  src="<%= user.getUserImageUrl() %>" class="avatar img-circle" alt="">
						   <%-- <sec:authentication property="principal.username" /> --%>
						   <% 
						   		if(user.getUsername().length() >= 5){
						   			out.print(user.getUsername().substring(0,5));
						   		}else{
						   			out.print(user.getUsername());
						   		}
						   	%>
					 </a>
					 <ul class="sub-menus">
					 	<li class="sub-list"><a href="${pageContext.request.contextPath}/user/profile"><spring:message code="m_profile"/></a></li>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/logout"><spring:message code="m_logout"/></a></li>
					</ul>
				</li>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<li class="parent">
					<a href="${pageContext.request.contextPath}/login" class="btLogin9999"><spring:message code="m_login"/></a>
				</li>
			</sec:authorize>
			<li class="parent" style="width: 53px;" >
			
<%-- 			 <c:set var="baseURL" value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" /> --%>
				
				 <a href="${pageContext.request.contextPath}?language=kh" style="    padding-left: 0px;padding-right: 0px;padding-bottom: 0px; height: auto;width: 25px;">
				 	<img  src="${pageContext.request.contextPath}/resources/assets/img/kh-flag.png"  alt="Khmer">
				 </a>
				 <a href="${pageContext.request.contextPath}?language=en" style="padding: 0 0 0 0;height: auto;width: 25px;float: right;margin-top: -24px;">
				 	<img  src="${pageContext.request.contextPath}/resources/assets/img/en-flag.png"  alt="English">
				 </a>
			</li> 
			<li class="parent right-icon" style="margin-right: -20px;">
						<i class="fa fa-search" id="nav-icon-search"></i>
			</li>
		</ul>
		<!-- End nav menu -->
	</div><!-- /.container -->
</div><!-- /.top-navbar -->
<!-- END TOP NAVBAR -->



		
		
		
		