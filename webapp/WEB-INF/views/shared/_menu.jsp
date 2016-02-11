<%@page import="org.khmeracademy.app.entities.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- BEGIN TOP NAVBAR -->

<div class="top-navbar" style="    background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0); z-index: 99000;">

	<div class="container">
	
		<!-- Begin logo -->
		<div class="logo">
			<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/assets/img/main_page/khmeracademy.png" alt="Logo"></a>
		</div><!-- /.logo -->
		<!-- End logo -->
		
		<!-- Begin button toggle nav -->
		<div class="btn-toggle-nav" id="btn-toggle-nav"><i class="fa fa-bars"></i></div>
		<div class="btn-toggle-search" id="btn-icon-search"><i class="fa fa-search"></i></div>
		<!-- <div class="btn-toggle-phone" id="btn-icon-phone"><i class="fa fa-phone"></i></div> -->
		<!-- End button toggle nav -->
		
		<!-- Begin visible phone and search nav -->
		<!-- <div id="phone-sub" class="nav-right-info">
			<i class="fa fa-times times-icon" id="close-phone-nav"></i>
			<p class="phone">Call us : <strong>+855 23 99 13 14</strong></p>
		</div> -->
		<div id="search-sub" class="nav-right-info">
			<i class="fa fa-times times-icon" id="close-search-nav"></i>
			<form role="form">
				<input type="text" class="form-control" placeholder="Search something...">
			</form>
		</div>
		<!-- End visible phone and search nav -->
		
		<!-- Begin nav menu -->
		<ul class="menus">
			<li class="parent">
				<a href="${pageContext.request.contextPath}/"><spring:message code="menu_home"/></a>
			</li>
			<li class="parent">
				<a href="${pageContext.request.contextPath}/elearning">E-Learning</a>
			</li>
			<li class="parent">
				<a href="${pageContext.request.contextPath}/tutorial"><spring:message code="tutorial"/></a>
			</li>
			<!-- <li class="parent">
				<a href="#">News</a>
			</li> -->
			<li class="parent">
				<a href="${pageContext.request.contextPath}/forum"><spring:message code="forum"/></a>
			</li>
			<li class="parent">
				<a href="http://oer.moeys.gov.kh" target="_blank">OER</a>
			</li>
			<li class="parent">
				<a href="http://krou.moeys.gov.kh" target="_blank">KROU</a>
			</li>
			<li class="parent" >
					 <a href="${pageContext.request.contextPath}/about">
						   About
					 </a>
					 <ul class="sub-menus">
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about">About us</a></li>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about/people">People</a></li>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about/supporter">Supporter</a></li>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/about/volunteer">Volunteer</a></li>
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
					 <a href="${pageContext.request.contextPath}/user/profile"  class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						    <img   style="height:140%"  src="<spring:message code="WSURL_IMG_URL"/><%= user.getUserImageUrl() %>" class="avatar img-circle" alt="Avatar">
						   <sec:authentication property="principal.username" />
					 </a>
					 <ul class="sub-menus">
						<!-- <li class="sub-list"><a href="portfolio-4-column.html">4 columns</a></li>
						<li class="sub-list"><a href="portfolio-3-column.html">3 columns</a></li>
						<li class="sub-list"><a href="portfolio-single.html">Portfolio single</a></li> -->
						<li class="sub-list"><a href="${pageContext.request.contextPath}/user/profile">Profile</a></li>
						<li class="sub-list"><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
					</ul>
				</li>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<li class="parent">
					<a href="#" class="btLogin"><spring:message code="login"/></a>
				</li>
				<%-- <li class="parent">
					<a href="#" class="btSignUp"><spring:message code="signup"/></a>
				</li> --%>
			</sec:authorize>
			<li class="parent" style="width: 53px;" >
				 <a href="?language=kh" style="    padding-left: 0px;padding-right: 0px;padding-bottom: 0px; height: auto;width: 25px;">
				 	<img  src="${pageContext.request.contextPath}/resources/assets/img/kh-flag.png"  alt="Khmer">
				 </a>
				 <a href="?language=en" style="padding: 0 0 0 0;height: auto;width: 25px;float: right;margin-top: -24px;">
				 	<img  src="${pageContext.request.contextPath}/resources/assets/img/en-flag.png"  alt="English">
				 </a>
				 <%-- <a href=""  class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><spring:message code="language"/></a>
				 <ul class="sub-menus">
					<li class="sub-list"><a href="?language=kh"><spring:message code="lang_khmer"/></a></li>
					<li class="sub-list"><a href="?language=en"><spring:message code="lang_english"/></a></li>
				</ul> --%>
			</li> 
			
			<li class="parent right-icon">
				<i class="fa fa-search" id="btSearch"></i>
			</li>
		</ul>
		<!-- End nav menu -->
	</div><!-- /.container -->
</div><!-- /.top-navbar -->
<!-- END TOP NAVBAR -->



		
		
		
		