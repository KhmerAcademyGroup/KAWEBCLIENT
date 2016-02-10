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
				<h2><strong>Introduce our supporter</strong></h2>
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
				  <li class="active">Supporter</li>
				  <li><a href="${pageContext.request.contextPath}/about/volunteer">Volunteer</a></li>
				</ol>
			<h4 class="page-title">Supporter</h4>
			</div><!-- /.container -->
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div><!-- /.border-bottom -->
		</div>
		
		<div class="section">
			<div class="container text-center">
				<h4 class="light-font line-height-28 margin-top-50">
				We got many great supports from Cambodian people, students, institutes, universities 
				and especially Ministry of Education, Youth and Sport of Cambodia. 
				Therefore, we have made MoU with five universities and government <br>
				</h4>
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Korea Software HRD Center</strong> </h3>
						<p>
						Korea HRD center is an IT educational institute in Cambodia, which is built and funded by KOICA(Korea International Cooperation Agency)and Korea based `
						IT company WEBCASH. This center is the birthplace of Khmer academy and all the related services. 
						It has produced 3 generations of IT expert, approximately  200 of alumni, so far, and Khmer academy has been established by those 
						future IT leader of Cambodia. 
						</p>
					</div><!-- /.col-sm-6 -->
					
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Webcash</strong> </h3>
						<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
						quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo.
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		 <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>KOICA</strong> </h3>
						<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
						quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo.
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Chungbuk University, (CBNU) Korea </strong> </h3>
						<p>
						Khmer academy and Chungbuk University of South Korea signed MOU at 3 July, 2015. 
						We’ve agreed to share resources together including educational, research materials and human resources. 
						So far, lots of instructors of Khmer academy went to Chungbuk University for master degree and students
						of the university also annually comes to our organization for Volunteer work. 
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Ministry of Education, Youth and Sport Cambodia</strong> </h3>
						<p>
						Khmer academy and Ministry of Education, youth and sports, Kingdom of Cambodia signed MOU at 17 December, 2015. 
						Through this MOU, We agreed to share every content on Khmer academy with government-run website called OEU (Open Educational Resources). 
						Also, MoEYS agreed to encourage public schools to use contents in Khmer academy by means of conducting workshops nationwide. 
						We also are planning to collaborate on lots of long-term projects which will shape the future of Cambodia.
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		 <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Bright University (BBU) Cambodia</strong> </h3>
						<p>
						Khmer academy and Build Bright University of Cambodia signed MOU at 3 Jun, 2015.  
						We agreed to share academic materials
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
			
		 <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Asia Euro University (AEU) Cambodia</strong> </h3>
						<p>
						Khmer academy and Asia Euro University of Cambodia signed MOU at 30 June, 2015.
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>	
			  
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>University of Technology (IIC) Cambodia</strong> </h3>
						<p>
						Khmer academy and IIC University of Technology of Cambodia signed MOU at 1 July, 2015.
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>University of Management (NUM) Cambodia</strong> </h3>
						<p>
						Khmer academy and National University of Management of Cambodia signed MOU at 18 August, 2015.
						</p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		
		
		
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
	
    	
    			
    	
				
	</body>
</html>
							
