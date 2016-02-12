<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
	<head>
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
		
		
		
		
		
		
		
		
		
		<div class="section" style="min-height: 320px;">
			<div class="container text-center ka-container">
				<h2><strong>Let's build Cambida's future together</strong></h2>
				<!-- <h4 class="light-font line-height-28 margin-top-50">
				Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.<br>
				Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem.<br>
				Investigationes demonstraverunt lectores legere me lius quod<br>
				</h4> -->
			</div><!-- /.container -->
		</div>
		
		
						
		<div class="page-title-wrap">
			<div class="container">
				<ol class="breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/about">About</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/people">People</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/supporter">Supporter</a></li>
				  <li class="active">Volunteer</li>
				</ol>
			<h4 class="page-title">Volunteer</h4>
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
					<div class="col-sm-6">
<!-- 						<h3 class="margin-bottom-30"><strong>Korea Software HRD Center</strong> </h3> -->
						<p>
						We’re waiting for any kinds of ambition. You might be someone who gets stuck in the room and does coding for your own DIY game all day long. Or You might be that type of person who annoys your friends by posting thesis like movie review on facebook. Or maybe you are just curious about how your country will change and how your life will change with it. Come join us. Let's make future together.
						
						</p>
						
						<img src="${pageContext.request.contextPath}/resources/assets/img/about/volunteer/volunteer.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
						
							
							
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
							<div class="the-box">
							<h4 class="small-title">Join to improve Khmer Academy</h4>
								<form role="form">
								  <div class="form-group">
									<label>Full name</label>
									<input type="email" class="form-control" placeholder="Enter email">
								  </div>
								  <div class="form-group">
									<label>Email address</label>
									<input type="email" class="form-control" placeholder="Enter email">
								  </div>
								   <div class="form-group">
									<label>Phone</label>
									<input type="email" class="form-control" placeholder="Enter email">
								  </div>
								   <div class="form-group">
									<label>Explain us who you are, what you can do for Khmer academy(Either in Khmer or English)</label>
									<textarea class="form-control"></textarea>
								  </div>
								  <button type="submit" class="btn btn-success"><i class="fa fa-sign-in"></i> Submit</button>
								</form>
							</div><!-- /.the-box -->
							
					</div><!-- /.row -->
					
				</div>
			</div><!-- /.container -->
		</div>
		
		 
	
		
		
		
			
			
			  
		
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
	
    	
    			
    	
				
	</body>
</html>
							
