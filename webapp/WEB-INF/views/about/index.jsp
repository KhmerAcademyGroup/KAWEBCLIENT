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
				<h2><strong>First e-learning platform for khmer</strong></h2>
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
				  <li class="active">About</li>
				  <li><a href="${pageContext.request.contextPath}/about/people">People</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/supporter">Supporter</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/volunteer">Volunteer</a></li>
				</ol>
			<h4 class="page-title">About</h4>
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
						<h3 class="margin-bottom-30"><strong>Our goal</strong> </h3>
						<p>
						Khmer academy is the first e-learning platform for Khmer people. 
						It started out as providing cambodian students quality education material. 
						And that’s still our biggest and urgent goal to accomplish. But our final goal is beyond that. 
						We want to improve every cambodian’s life.  
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
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>E-Learning</strong> </h3>
						<p>
						We offer every course in Khmer language.
						If you’re new to programming, start with tutorial that touches very basic of computer. 
						Then, move to more advanced E-learning section. In between, 
						if  you have any questions come visit forum and post your curiosity.
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
					
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Tutorials</strong> </h3>
						<p>
						We provide our students with forum(link) where they can challenge what they are taught in video
					    and meet new friends who share the same dream with them. We are planning to add chatting function
					    so that students who shares the same interest can directly contact each other. 
					    This will be the first and the largest student community in Cambodia.
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
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Forum</strong> </h3>
						<p>
						We provide our students with forum(link) where they can challenge what they are taught in video
					    and meet new friends who share the same dream with them. We are planning to add chatting function
					    so that students who shares the same interest can directly contact each other. 
					    This will be the first and the largest student community in Cambodia.
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
				<div class="row">
					
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>All Khmer News</strong> </h3>
						<p>
						This is the first platform to integrate all the news in Cambodia. 
						News in Cambodia are still dispersed in individual websites so it’s hard for the
						users to choose particular site that will provide them with all the news they need.
						We’re gonna provide Cambodians with infinite sources of news of all types. 
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
<%-- 							<img src="${pageContext.request.contextPath}/resources/assets/img/elearning.png" class="img-responsive" alt="Section image"> --%>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Khmer Memo</strong> </h3>
						<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
						quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
						consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
						consequat, vel illum dolore eu feugiat nulla facilisis at vero eros.
						</p>
						<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
						quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo.
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
<%-- 							<img src="${pageContext.request.contextPath}/resources/assets/img/elearning.png" class="img-responsive" alt="Section image"> --%>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3><strong>History</strong></h3>
				</div><!-- /.section-heading -->
				
				<div id="owl-testimonial" class="owl-carousel testimonial owl-theme" style="opacity: 1; display: block;">
					<div class="owl-wrapper-outer autoHeight" style="height: 150px;"><div class="owl-wrapper" style="width: 2280px; left: 0px; display: block;"><div class="owl-item" style="width: 1140px;">
					<div class="item">
						<p class="text-testi">
						The whole idea of Khmer academy has been conceived and developed by alumni of Korea HRD center. 
						Korea HRD center is an educational NGO based in Korea,and it trains Cambodian 
						IT students as an outstanding programmers.						</p>
					</div></div></div></div><!-- /.item -->
					
				</div><!-- /.container -->
			</div>
			
			
		<div class="section bg-primary text-center">
			<div class="container">
				<h4 class="margin-bottom-30">START WITH KHMER ACADEMY</h4>
				<div class="row">
					<div class="col-sm-12 text-center">
						<h1 class="number-fact">5872</h1>
						<p class="content-fact">Users</p>
					</div><!-- /.col-sm-4 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		 
		
		
		
		
			
			
			  
		
		</div>
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
	
    	
    			
    	
				
	</body>
</html>
							
