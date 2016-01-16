<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
	<head>

		<jsp:include page="shared/_header.jsp" />

	</head>
 
	<body class="tooltips no-padding">
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="shared/_menu.jsp" />	
		<!-- END TOP NAVBAR -->
		
		
		
		<!-- BEGIN HEADER FULL IMAGE SLIDE -->
		<div class="full-slide-image" id="full-img-slide">
			<div class="slide-inner more-padding">
				<div class="slide-text-content">
					<div class="container-fluid">
						<h1>BOOTSTRAP TEMPLATE SPECIALIST</h1>
						<div class="clear"></div>
						<h3>
						Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet<br />
						doming id quod mazim placerat facer possim assum.
						</h3>
						<div class="clear"></div>
						<button class="btn btn-lg btn-warning btn-learn-more btn-border-only">LEARN MORE</button>
						<a href="http://goo.gl/V32dLM" target="_blank" class="btn btn-lg btn-success btn-learn-more">PURCHASE NOW</a>
					</div><!-- /.container -->
				</div><!-- /.slide-text-content -->
			</div><!-- /.slide-inner -->
		</div><!-- /.full-slide-image -->
		<!-- END HEADER FULL IMAGE SLIDE -->
		
		
		
		<!-- BEGIN TEXT SECTION -->
		<div class="section">
			<div class="container">
			<p class="text-center text-slogan">
			Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.<br />
			Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem.<br />
			Investigationes demonstraverunt lectores legere me lius quod
			</p>
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END TEXT SECTION -->
		
		
		
		<!-- BEGIN FEATURE SECTION -->
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="the-box bg-danger no-border box-feature text-center">
							<h4 class="heading">RESPONSIVE</h4>
							<i class="fa fa-css3 icon-lg"></i>
							<div class="p-wrap">
								<p>
									Duis autem vel eum iriure dolor in
									hendrerit in vulputate velit esse
									molestie consequat
								</p>
							</div><!-- /.p-wrap -->
							<div class="btn-wrap">
								<button class="btn btn-danger btn-learn-more">LEARN MORE</button>
							</div><!-- /.btn-wrap -->
						</div><!-- /.the-box bg-danger no-border box-feature text-center -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="the-box bg-warning no-border box-feature text-center">
							<h4 class="heading">RETINA READY</h4>
							<i class="fa fa-female icon-lg"></i>
							<p>
								Duis autem vel eum iriure dolor in
								hendrerit in vulputate velit esse
								molestie consequat
							</p>
							<div class="btn-wrap">
								<button class="btn btn-warning btn-learn-more">LEARN MORE</button>
							</div><!-- /.btn-wrap -->
						</div><!-- /.the-box bg-warning no-border box-feature text-center -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="the-box bg-success no-border box-feature text-center">
							<h4 class="heading">FLAT DESIGN</h4>
							<i class="fa fa-circle-o-notch icon-lg"></i>
							<p>
								Duis autem vel eum iriure dolor in
								hendrerit in vulputate velit esse
								molestie consequat
							</p>
							<div class="btn-wrap">
								<button class="btn btn-success btn-learn-more">LEARN MORE</button>
							</div><!-- /.btn-wrap -->
						</div><!-- /.the-box bg-success no-border box-feature text-center -->
					</div><!-- /.col-sm-3 -->
					<div class="col-sm-3">
						<div class="the-box bg-info no-border box-feature text-center">
							<h4 class="heading">CLEAN CODE</h4>
							<i class="fa fa-code icon-lg"></i>
							<p>
								Duis autem vel eum iriure dolor in
								hendrerit in vulputate velit esse
								molestie consequat
							</p>
							<div class="btn-wrap">
								<button class="btn btn-info btn-learn-more">LEARN MORE</button>
							</div><!-- /.btn-wrap -->
						</div><!-- /.the-box bg-info no-border box-feature text-center -->
					</div><!-- /.col-sm-3 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END FEATURE SECTION -->
		
		
		
		<!-- BEGIN TOP FEATURE SECTION -->
		<div class="section bg-info section-top-features">
			<div class="container">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3>TOP FEATURES</h3>
				</div><!-- /.section-heading -->
				<div class="row">
					<div class="col-sm-6">
						<img src="${pageContext.request.contextPath}/resources/assets/img/devices.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<h5 class="text-heading">Compatible on all devices, it means responsive design</h5>
						<p class="lh-24">
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
						quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
						consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
						consequat, vel illum dolore eu feugiat nulla facilisis at vero eros.
						</p>
						<p><button class="btn btn-warning btn-lg-text-xs">LEARN MORE</button></p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.section -->
		<div class="section bg-info section-top-features">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h5 class="text-heading">Bootstrap based, clean code and easy to custom to suit your need</h5>
						<p class="lh-24">
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
						quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
						consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
						consequat, vel illum dolore eu feugiat nulla facilisis at vero eros.
						</p>
						<p><button class="btn btn-warning btn-lg-text-xs">LEARN MORE</button></p>
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<img src="${pageContext.request.contextPath}/resources/assets/img/circle-code.png" class="img-responsive" alt="Section image">
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END TOP FEATURE SECTION -->
		
		
		
		<!-- BEGIN LATEST WORK SECTION -->
		<div class="section work-section">
			<div class="container">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3>LATEST WORK</h3>
				</div><!-- /.section-heading -->
				<ul class="work-category-wrap">
					<li class="filter" data-filter="all">ALL</li>
					<li class="filter" data-filter="template">TEMPLATE</li>
					<li class="filter" data-filter="web_design">WEB DESIGN</li>
					<li class="filter" data-filter="mobile_apps">MOBILE APPS</li>
					<li class="filter" data-filter="printing">PRINTING</li>
					<li class="filter" data-filter="other">OTHER</li>
				</ul>
				
				<div id="work-mixitup" class="work-content">
					<div class="row">
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix printing">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/1.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">PRINTING</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix template">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/2.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">TEMPLATE</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix web_design">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/3.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">WEB DESIGN</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix mobile_apps">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/4.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">MOBILE APPS</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix template">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/5.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">TEMPLATE</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix mobile_apps">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/6.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">MOBILE APPS</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix printing">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/7.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">PRINTING</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix other">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="portfolio-single.html">
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/resources/assets/img/work/8.jpg" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">Awesome project name</p>
									<p class="project-category">OTHER</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
						
					</div><!-- /.row -->
				</div><!-- /#work-mixitup -->
				
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END LATEST WORK SECTION -->
		
		
		
		<!-- BEGIN HAPPY CLIENT SECTION -->
		<div class="section bg-light">
			<div class="container">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3>HAPPY CLIENT</h3>
				</div><!-- /.section-heading -->
				
				<div id="owl-testimonial" class="owl-carousel testimonial">
					<div class="item">
						<p class="text-testi">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
							Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Duis autem vel eum iriure
							dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et 
							iusto odio dignissim qui blandit praesent
						</p>
						<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/small/avatar-25.jpg" class="avatar img-circle" alt="Avatar">
						<p class="client-name">Karen Wallace</p>
						<p class="client-home text-danger">CEO - Yogyakarta, Indonesia</p>
					</div><!-- /.item -->
					<div class="item">
						<p class="text-testi">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
							Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Duis autem vel eum iriure
							dolor in hendrerit in vulputate velit esse molestie consequat
						</p>
						<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/small/avatar-24.jpg" class="avatar img-circle" alt="Avatar">
						<p class="client-name">Phillip Lucas</p>
						<p class="client-home text-danger">CEO - Yogyakarta, Indonesia</p>
					</div><!-- /.item -->
					<div class="item">
						<p class="text-testi">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
							Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.Duis autem vel eum iriure
						</p>
						<img src="${pageContext.request.contextPath}/resources/assets/img/avatar/small/avatar-23.jpg" class="avatar img-circle" alt="Avatar">
						<p class="client-name">Sandra Myers</p>
						<p class="client-home text-danger">CEO - Yogyakarta, Indonesia</p>
					</div><!-- /.item -->
				</div><!-- /#owl-testimonial -->
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END HAPPY CLIENT SECTION -->
		
		
		
		<!-- BEGIN CLIENT LOGO SECTION -->
		<div class="section">
			<div class="container">
				<div id="owl-client-logo" class="owl-carousel client-logo">
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/graphicriver.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/photodune.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/themeforest.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/codecanyon.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/3docean.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/graphicriver.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/photodune.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/themeforest.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/codecanyon.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/3docean.png" alt="Client logo">
					</div><!-- /.item -->
				</div><!-- /#owl-client-logo -->
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END CLIENT LOGO SECTION -->
		
		
		
		<!-- BEGIN FOOTER -->
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-4">
						<h4>ABOUT SENTIR AGENCY</h4>
						<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed 
						diam nonummy nibh euismod tincidunt ut laoreet dolore 
						magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
						quis nostrud exerci tation ullamcorper suscipit lobortis 
						</p>
						<p>
							<a href="#fakelink"><i data-toggle="tooltip" title="Facebook" class="fa fa-facebook icon-sm icon-rounded icon-social-footer icon-facebook"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="Twitter" class="fa fa-twitter icon-sm icon-rounded icon-social-footer icon-twitter"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="Google plus" class="fa fa-google-plus icon-sm icon-rounded icon-social-footer icon-google-plus"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="Dribbble" class="fa fa-dribbble icon-sm icon-rounded icon-social-footer icon-dribbble"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="Pinterest" class="fa fa-pinterest icon-sm icon-rounded icon-social-footer icon-pinterest"></i></a>
							<a href="#fakelink"><i data-toggle="tooltip" title="Github" class="fa fa-github icon-sm icon-rounded icon-social-footer icon-github"></i></a>
						</p>
					</div><!-- /.col-sm-4 -->
					<div class="col-sm-6 col-md-3">
						<h4>CONTACT</h4>
						<div class="media media-contact">
						  <span class="pull-left">
							<i class="fa fa-map-marker media-object"></i>
						  </span>
						  <div class="media-body">
							<address>
							  Twitter, Inc.<br>
							  795 Folsom Ave, Suite 600<br>
							  San Francisco, CA 94107<br>
							  <abbr title="Phone">P:</abbr> (123) 456-7890
							</address>
						  </div><!-- /.media-body -->
						</div><!-- /.media -->
						<div class="media media-contact">
						  <span class="pull-left">
							<i class="fa fa-envelope media-object"></i>
						  </span>
						  <div class="media-body">
							<address>
							  Full Name<br>
							  <a href="mailto:#">first.last@example.com</a>
							</address>
						  </div><!-- /.media-body -->
						</div><!-- /.media -->
					</div><!-- /.col-sm-3 -->
					<div class="clearfix visible-sm"></div>
					<div class="col-sm-6 col-md-2">
						<h4>NAVIGATION</h4>
						<ul class="list">
							<li><a href="index.html">Home</a></li>
							<li><a href="index.html">About us</a></li>
							<li><a href="index.html">Our services</a></li>
							<li><a href="index.html">Portfolio</a></li>
							<li><a href="index.html">Pricing</a></li>
							<li><a href="index.html">Blog</a></li>
						</ul>
					</div><!-- /.col-sm-2 -->
					<div class="col-sm-6 col-md-3">
						<h4>SIGN UP NEWSLETTER</h4>
						<p>
						Laritas est etiam processus dynamicus, qui
						sequitur mutationem consuetudium
						lectorum. Mirum est notare quam littera.
						</p>
						<form role="form">
							<div class="input-group subscribe">
							  <input type="text" class="form-control" placeholder="Enter email address">
							  <span class="input-group-btn">
								<button class="btn btn-info" type="button"><i class="fa fa-chevron-right"></i></button>
							  </span>
							</div><!-- /input-group -->
						</form>
					</div><!-- /.col-sm-3 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</footer><!-- /.section -->
		
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-5">
						Copyright &copy; 2014 <a href="#fakelink">Your company</a>
					</div><!-- /.col-sm-5 -->
					<div class="col-sm-7 text-right">
						<ul class="list-inline">
						  <li><a href="#fakelink">Terms and condition</a></li>
						  <li><a href="#fakelink">Privacy policy</a></li>
						  <li><a href="#fakelink">FAQ</a></li>
						</ul>
					</div><!-- /.col-sm-7 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div><!-- /.footer -->
		<!-- END FOOTER -->
		
		
		
		<!-- BEGIN BACK TO TOP BUTTON -->
		<div id="back-top">
			<i class="fa fa-chevron-up"></i>
		</div>
		<!-- END BACK TO TOP -->
		
		<!--
		===========================================================
		END PAGE
		===========================================================
		-->
		
		
		
		<!--
		===========================================================
		Placed at the end of the document so the pages load faster
		===========================================================
		-->
		<!-- MAIN JAVASRCIPT (REQUIRED ALL PAGE)-->
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/retina/retina.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/mixitup/jquery.mixitup.js"></script>
		<script>
			$("#full-img-slide").backstretch([
			  "${pageContext.request.contextPath}/resources/sources/images/temp/slider-intro-image.jpg"
			  /* "${pageContext.request.contextPath}/resources/sources/images/temp/slider-intro-image2.jpg" */
			  ], {
				fade: 750,
				duration: 6000
			});
		</script>
		<script>
			$(document).ready(function(){
				$(function(){
				 var shrinkHeader = 250;
				  $(window).scroll(function() {
					var scroll = getCurrentScroll();
					  if ( scroll >= shrinkHeader ) {
						   $('.top-navbar').addClass('shrink-nav');
						   $('.top-navbar').addClass('dark-color');
						}
						else {
						   $('.top-navbar').removeClass('shrink-nav');
						   $('.top-navbar').removeClass('dark-color');
						}
				  });
					function getCurrentScroll() {
						return window.pageYOffset || document.documentElement.scrollTop;
					}
				});
			})
		</script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>
	</body>
</html>