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
				  <li><a href="${pageContext.request.contextPath}/about/partner">Partner</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/contribute">Contribute</a></li>
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
				
				<div class="row">
					<div class="the-box no-border">
						<div class="magnific-popup-wrap">
							<div class="row">
								<div class="col-xs-6 col-md-3">
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
										<span class="first">
											<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-1.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">	
										</span>
										<span class="second" style="display:none">
									    	<img src="${pageContext.request.contextPath}/resources/assets/img/photo/small/img-7.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
									    </span>
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
    			$(".first").find("img").fadeTo(1, 0.5); //.css("opacity", "0.5");
    			$(this).hide();
    			$(this).next().show();
    			$(this).next().next().show();
//     			$(".magnific-popup-wrap").css("background-color","red");
    		});
    		
    		$(".second").mouseout(function(){
    			$(".first").find("img").fadeTo(1, 1); //.css("opacity", "1");
    			$(this).hide();
    			$(this).prev().show();
    			$(this).next().hide();
    		});
    		
    	});
    </script>
    	
				
	</body>
</html>
							
