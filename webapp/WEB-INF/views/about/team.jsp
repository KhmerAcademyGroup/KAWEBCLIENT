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
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3>Khmer Academy Developers</h3>
				</div><!-- /.section-heading -->
				<div class="row">
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
				</div><!-- /.row -->
			</div><!-- .container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3>Khmer Academy Developers</h3>
				</div><!-- /.section-heading -->
				<div class="row">
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="team-item info">
							<h4 class="name">Randy Gibson</h4>
							<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/avatar-24.jpg" alt="Avatar" class="img-circle avatar">
							<p class="position">ART DIRECTOR</p>
							<p class="about">
							Nam liber tempor cum soluta
							nobis eleifend option congue
							nihil imperdiet doming id
							quod mazim placerat facer
							</p>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-facebook icons" data-original-title="Facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-twitter icons" data-original-title="Twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-google-plus icons" data-original-title="Google plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-dribbble icons" data-original-title="Dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-pinterest icons" data-original-title="Pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="" class="fa fa-github icons" data-original-title="Github"></i></a>
						</div><!-- /.team-item -->
					</div><!-- /.col-sm-3 -->
				</div><!-- /.row -->
			</div><!-- .container -->
		</div>
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
	
    	
    			
    	
				
	</body>
</html>
							
