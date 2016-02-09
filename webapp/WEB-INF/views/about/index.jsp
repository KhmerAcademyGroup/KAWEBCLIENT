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
		
		
		
		
		
		<%-- <div class="section">
			<div class="container ka-container" >
				
				<div class="col-sm-12">
								<div id="bs-carousel-2" class="carousel slide" data-ride="carousel">
								  <!-- Indicators -->
								  <ol class="carousel-indicators">
									<li data-target="#bs-carousel-2" data-slide-to="0" class=""></li>
									<li data-target="#bs-carousel-2" data-slide-to="1" class="active"></li>
									<li data-target="#bs-carousel-2" data-slide-to="2"></li>
								  </ol>

								  <!-- Wrapper for slides -->
								  <div class="carousel-inner">
									<div class="item">
									  <img src="${pageContext.request.contextPath}/resources/assets/img/photo/medium/img-4.jpg" style="width: 100%; height: 400px;" alt="Image slide">
									  <div class="carousel-caption dark-bg" style="background:rgba(1,1,1,.5);width:100%;left:0;right:0;">
										<h1>Our mission is to provide a free, world‑class education for anyone, anywhere.</h1>
										
									  </div><!-- /.carousel-caption -->
									</div><!-- /.item -->
									<div class="item active">
									  <img src="${pageContext.request.contextPath}/resources/assets/img/photo/medium/img-5.jpg" style="width: 100%; height: 400px;" alt="Image slide">
									  <div class="carousel-caption dark-bg" style="background:rgba(1,1,1,.5);width:100%;left:0;right:0;">
										<h1>Our mission is to provide a free, world‑class education for anyone, anywhere.</h1>
										
									  </div><!-- /.carousel-caption -->
									</div><!-- /.item -->
									<div class="item">
									  <img src="${pageContext.request.contextPath}/resources/assets/img/photo/medium/img-6.jpg" style="width: 100%; height: 400px;" alt="Image slide">
									  <div class="carousel-caption dark-bg" style="background:rgba(1,1,1,.5);width:100%;left:0;right:0;">
										<h1>Our mission is to provide a free, world‑class education for anyone, anywhere.</h1>
										
									  </div><!-- /.carousel-caption -->
									</div><!-- /.item -->
								  </div><!-- /.carousel-inner -->

								  <!-- Controls -->
								  <a class="left carousel-control" href="#bs-carousel-2" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
								  </a>
								  <a class="right carousel-control" href="#bs-carousel-2" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
								  </a>
								</div>
							</div>
				
			
			
			
			
			
			
			</div><!-- /.container -->
			
		</div> --%>
		
		
		
		
		
		<div class="section">
			<div class="container text-center ka-container">
				<h2><strong>Khmer Academy</strong></h2>
				<h4 class="light-font line-height-28 margin-top-50">
				Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.<br>
				Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem.<br>
				Investigationes demonstraverunt lectores legere me lius quod<br>
				</h4>
			</div><!-- /.container -->
		</div>
		
		
		<!-- <div class="">
			<div class="container">
				<ol class="breadcrumb" style="background: #4b5462;">
				  <li><a style="color: white;"  href="index.html">About</a></li>
				  <li><a style="color: white;" href="#fakelink">Team</a></li>
				  <li><a style="color: white;" href="#fakelink">Supporter</a></li>
				</ol>
			</div>/.container
		</div> -->
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>E-Learning</strong> </h3>
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
						<img src="${pageContext.request.contextPath}/resources/assets/img/elearning.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section bg-primary text-center">
			<div class="container">
				<h4 class="margin-bottom-30">START E-ELEARNING WITH KHMER ACADEMY</h4>
				<div class="row">
					<div class="col-sm-3">
						<h1 class="number-fact">5872</h1>
						<p class="content-fact">Users</p>
					</div><!-- /.col-sm-4 -->
					<div class="col-sm-3">
						<h1 class="number-fact">717</h1>
						<p class="content-fact">Videos</p>
					</div><!-- /.col-sm-4 -->
					<div class="col-sm-3">
						<h1 class="number-fact">31</h1>
						<p class="content-fact">Courses</p>
					</div><!-- /.col-sm-4 -->
					<div class="col-sm-3">
						<h1 class="number-fact">29</h1>
						<p class="content-fact">Categories</p>
					</div><!-- /.col-sm-4 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<img src="${pageContext.request.contextPath}/resources/assets/img/tutorial.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Tutorials</strong> </h3>
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
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Forum</strong> </h3>
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
							<img src="${pageContext.request.contextPath}/resources/assets/img/forum.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;">
							Twitter Bootstrap 85%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
							PHP MySQL 70%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
							Web Design 90%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
							UI and UX Design 80%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
							Wordpress 60%
						  </div>
						</div>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>All Khmer News</strong> </h3>
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
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Memo</strong> </h3>
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
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;">
							Twitter Bootstrap 85%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
							PHP MySQL 70%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
							Web Design 90%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
							UI and UX Design 80%
						  </div>
						</div>
						<div class="progress no-rounded progress-md">
						  <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
							Wordpress 60%
						  </div>
						</div>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		 
		<div class="section bg-light">
			<div class="container">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3>History</h3>
				</div><!-- /.section-heading -->
				
				<div id="owl-testimonial" class="owl-carousel testimonial owl-theme" style="opacity: 1; display: block;">
					<div class="owl-wrapper-outer autoHeight" style="height: 150px;"><div class="owl-wrapper" style="width: 2280px; left: 0px; display: block;"><div class="owl-item" style="width: 1140px;">
					<div class="item">
						<p class="text-testi">
							The whole idea of Khmer academy has been conceived and developed by alumni of Korea HRD center. Korea HRD center is an educational NGO based in Korea,and it trains Cambodian IT students as an outstanding programmers.
						</p>
					</div></div></div></div><!-- /.item -->
					
			</div><!-- /.container -->
		</div>
		
		</div>
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
	
    	
    			
    	
				
	</body>
</html>
							
