<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>About Khmer Academy</title>
		<jsp:include page="../shared/_header.jsp" />
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css" rel="stylesheet">
	</head>
 
	<body class="tooltips no-padding">
		
		
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="../shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		
		
		
		
		
		
		
		<!-- <div class="section" style="min-height: 320px;">
			<div class="container text-center ka-container">
				<h2><strong>First e-learning platform for khmer</strong></h2>
				<h4 class="light-font line-height-28 margin-top-50">
				Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.<br>
				Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem.<br>
				Investigationes demonstraverunt lectores legere me lius quod<br>
				</h4>
			</div>/.container
		</div> -->
		
		<div class="section bg-primary text-center" style="margin-top:100px">
			<div class="container">
				<h4 class="margin-bottom-30"><spring:message code="bp_first_platform_for_kh"/></h4>
				<div class="row">
					<div class="col-sm-4">
						<h1 class="number-fact">${data.COUNTUSER }</h1>
						<p class="content-fact"><spring:message code="bp_users"/></p>
					</div><!-- /.col-sm-4 -->
					<div class="col-sm-4">
						<h1 class="number-fact">${data.COUNTVIDEO }</h1>
						<p class="content-fact"><spring:message code="bp_videos"/></p>
					</div><!-- /.col-sm-4 -->
					<div class="col-sm-4">
						<h1 class="number-fact">${data.COUNTCOURSE }</h1>
						<p class="content-fact"><spring:message code="bp_courses"/></p>
					</div><!-- /.col-sm-4 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
						
		<div class="page-title-wrap">
			<div class="container">
				<ol class="breadcrumb">
				  <li class="active"><spring:message code="m_about"/></li>
<%-- 				  <li><a href="${pageContext.request.contextPath}/about/people">People</a></li> --%>
				  <li><a href="${pageContext.request.contextPath}/about/supporter"><spring:message code="m_supporter"/></a></li>
				  <li><a href="${pageContext.request.contextPath}/about/partner"><spring:message code="m_partner"/></a></li>
				  <li><a href="${pageContext.request.contextPath}/about/contribute"><spring:message code="m_contribute"/></a></li>
				</ol>
			<h4 class="page-title"><spring:message code="m_about"/></h4>
			</div><!-- /.container -->
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div><!-- /.border-bottom -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="bp_our_goal"/></strong> </h3>
						<p>
						<spring:message code="bp_our_goal_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
					 <div class="col-sm-6">
<%-- 						<img src="${pageContext.request.contextPath}/resources/assets/img/elearning.png" class="img-responsive" alt="Section image"> --%>
					</div><!-- /.col-sm-6 --> 
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="bp_e-learning"/></strong> </h3>
						<p>
						<spring:message code="bp_e-learning_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
<%-- 						<img src="${pageContext.request.contextPath}/resources/assets/img/elearning.png" class="img-responsive" alt="Section image"> --%>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="bp_tutorial"/></strong> </h3>
						<p>
						<spring:message code="bp_tutorial_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
					
					<div class="col-sm-6">
<%-- 						<img src="${pageContext.request.contextPath}/resources/assets/img/tutorial.png" class="img-responsive" alt="Section image"> --%>
					</div><!-- /.col-sm-6 -->
					
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="bp_forum"/></strong> </h3>
						<p>
						<spring:message code="bp_Forum_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
<%-- 							<img src="${pageContext.request.contextPath}/resources/assets/img/forum.png" class="img-responsive" alt="Section image"> --%>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		
		<div class="section">
			<div class="container">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3><strong><spring:message code="bp_history"/></strong></h3>
				</div><!-- /.section-heading -->
				
				<div id="owl-testimonial" class="owl-carousel testimonial owl-theme" style="opacity: 1; display: block;">
					<div class="owl-wrapper-outer autoHeight" style="height: 150px;"><div class="owl-wrapper" style="width: 2280px; left: 0px; display: block;"><div class="owl-item" style="width: 1140px;">
					<div class="item">
						<p class="text-testi">
						<spring:message code="bp_history_detail"/>
						</p>
					</div></div></div></div><!-- /.item -->
					
				</div><!-- /.container -->
			</div>
			
			
	 
		
		
		
		
			
			
			  
		
		</div>
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
	
    	
    			
    	
				
	</body>
</html>
							
