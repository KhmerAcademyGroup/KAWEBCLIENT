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
				<h2><strong>Khmer Academy is built by young & ambitious Khmer.</strong></h2>
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
				  <li class="active">People</li>
				  <li><a href="${pageContext.request.contextPath}/about/supporter">Supporter</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/volunteer">Volunteer</a></li>
				</ol>
			<h4 class="page-title">People</h4>
			</div><!-- /.container -->
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div><!-- /.border-bottom -->
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
					<div class="the-box no-border">
						<div class="magnific-popup-wrap">
							<div class="row">
								<div class="col-xs-6 col-md-3">
<!-- 									<a class="zooming" href="assets/img/photo/medium/img-1.jpg" title="Image title here"> -->
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
<!-- 									</a> -->
								    <div class="card-info" style="display:none; z-index:99999;position:absolute;background:white">
						                <h2 class="pulls">John</h2>
						                <h3>Frontend Inventor</h3>
						                <p>
						                    John invents tools and platforms for Khan Academy, like our programming environment,
						                    exercise framework, and internationalization framework.
						                </p>
						                <p>
						                    John is the creator of the jQuery JavaScript library, amongst a number of other Open Source projects, and the author of two books on JavaScript development.
						                </p>
						                <p class="contact-links">
						                    <a href="http://twitter.com/jeresig" class="contact-twitter"></a>
						                    <a href="http://ejohn.org" class="contact-blog"></a>
						                </p>
						            </div>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-2.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
								    </a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-3.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-3.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-4.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-4.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-5.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-5.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-6.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-6.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-7.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-8.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-8.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-1.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-2.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-2.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-3.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-3.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-4.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-4.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-5.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-5.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-6.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-6.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-7.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
								<div class="col-xs-6 col-md-3">
									<a class="zooming" href="assets/img/photo/medium/img-8.jpg" title="Image title here">
									<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-8.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									</a>
								</div><!-- /.col-xs-6 .col-md-3 -->
							</div><!-- /row -->
						</div><!-- /.magnific-popup-wrap -->
					</div>
				</div><!-- /.row -->
			</div><!-- .container -->
		</div>
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
	
    	
    <script>
    	$(function(){
    		$(".first").hover(function(){
    			$(this).hide();
    			$(this).next().show();
    			$(this).next().next().show();
//     			$(".magnific-popup-wrap").css("background-color","red");
    		});
    		
    		$(".second").mouseout(function(){
    			$(this).hide();
    			$(this).prev().show();
    			$(this).next().hide();
    		});
    		
    	});
    </script>
    	
				
	</body>
</html>
							
