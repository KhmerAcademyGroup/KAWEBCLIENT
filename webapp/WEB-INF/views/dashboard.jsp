<%@page import="model.dto.User"%>
<%@page import="Controller.Common_method"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
	<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
	<meta name="author" content="Khmer Academy">
	<title>Khmer Academy | Main Page</title>
	<!-- <link rel="shortcut icon" type="image/x-icon" href=" sources/images/favicon.ico" /> -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic">
	<link rel="stylesheet" href=" sources/css/style.css" />
	
	<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
				ga('create', 'UA-58585702-1', 'auto');
				ga('send', 'pageview');
	</script>
	<style>
	  @media (max-width: 1023px) {
	  	.nav ul li a {
					color: #75737f;
				}
	 }
	</style>

</head>
<body>
<div class="wrapper">


<jsp:include page="header.jsp"></jsp:include>


	<div class="slider-intro">
		<div class="slider-clip">
			<ul class="slides owl-carousel">
				<li class="slide">
					<div class="slide-image fullscreener">
						<img src=" sources/images/temp/slider-intro-image.jpg" height="890" width="1800" alt="">
					</div><!-- /.slide-image -->

					<div class="slide-content">
						<div class="row">
							<div class="columns large-7">
								<h2 class="slide-title">Start Learning With Khmer Academy</h2><!-- /.slide-title -->

								<div class="slide-entry">
									<p>The first e-learning platform in Cambodia</p>
								</div><!-- /.slide-entry -->
							</div><!-- /.columns large-7 -->

							<div class="columns large-5">
								<div class="slide-aside">
									

									<div class="slide-progress">
										<div class="slide-raised">
											<span>Users</span>

											<strong><span id="countusers"></span></strong>
										</div><!-- /.slide-raised -->

										<div class="slide-to-go">
											<span>Videos</span>

											<strong><span id="countvideos"></span></strong>
										</div><!-- /.slide-to-go -->
									</div><!-- /.slide-progress -->

									<div class="slide-actions">
										<a href="#">Donate Now</a>
									</div><!-- /.slide-actions -->
								</div><!-- /.slide-aside -->
							</div><!-- /.columns large-5 -->
						</div><!-- /.row -->
					</div><!-- /.slide-content -->
				</li><!-- /.slide -->

				<li class="slide-alt">
					<div class="slide-image fullscreener">
						<img src=" sources/images/temp/slider-intro-image2.jpg" height="890" width="1800" alt="">
					</div><!-- /.slide-image -->

					<div class="slide-content">
						<div class="row">
							<div class="columns small-12" >
								<div class="slide-content-inner">
									<h2 class="slide-title">You can learn every thing with Khmer Academy</h2><!-- /.slide-title -->

									<p>Khmer Academy is the first website that provides you the e-learning in Khmer language</p>

									<div class="slide-actions">
										<a href="elearning/" class="button button-white">Learn More</a>
									</div><!-- /.slide-actions -->
								</div><!-- /.slide-content-inner -->
							</div><!-- /.columns small-12 -->
						</div><!-- /.row -->
					</div><!-- /.slide-content -->
				</li><!-- /.slide-alt --><!-- /.slide-alt -->
				<li class="slide-alt">
					<div class="slide-image fullscreener">
						<img src=" sources/images/temp/precourse.png" height="890" width="1800" alt="">
					</div><!-- /.slide-image -->

					<div class="slide-content">
						<div class="row">
							<div style="position-left: 25.07143em; padding-top: -50px; ">
								<div class="slide-content-inner">
									<h2 class="slide-title">KSHRD Pre-Course</h2><!-- /.slide-title -->

									<p>Korea software hrd center would like to announce that our center will open a course called “Pre-Course” for reviewing the topics for 4th generation recruitment entrance exam.</p>

									<div class="slide-actions">
										<a href="elearning/precourse.act" class="button button-white">Register</a>
									</div><!-- /.slide-actions -->
								</div><!-- /.slide-content-inner -->
							</div><!-- /.columns small-12 -->
						</div><!-- /.row -->
					</div><!-- /.slide-content -->
				</li><!-- /.slide-alt --><!-- /.slide-alt -->
			</ul><!-- /.slides -->
		</div><!-- /.slider-clip -->
		
		<div class="slider-actions"></div><!-- /.slider-actions -->
	</div><!-- /.slider-intro -->

	<section class="section-featured">
		<div class="row">
			<div class="columns small-12">
				<header class="section-head">
					<h2 class="section-title"><%= Common_method.getBundleValue(request, "lang", "services") %></h2><!-- /.section-title -->	
			
					<div class="section-image">
						<img src=" sources/images/temp/ico-droplet.png" height="22" width="14" alt="">
					</div><!-- /.section-image -->
			
					<p>
						We have three main services are reading , watching and discussing. 
					</p>
				</header><!-- /.section-head -->
			
				<div class="section-body">
					<div class="slider-featured">
						<div class="slider-clip">
						
							<div class="row">
								<div class="columns large-4 medium-12">
									<div class="slide-image">
									<img src=" sources/images/temp/featured-1.jpg" height="175" width="270" alt="">
			
										<div class="slide-overlay">
											<div class="slide-overlay-inner">
												<a href="elearning/" class="button button-white">See More</a>
											</div>
										</div>
									</div>
			
									<div class="slide-content">
										<a href="elearning/"><h3>E-Learning Videos</h3></a>
										
										<p><%= Common_method.getBundleValue(request, "lang", "elearningtext") %> </p>
									</div>
								</div><!-- /.columns large-3 medium-12 -->
								
								<div class="columns large-4 medium-12">
									<div class="slide-image">
										<img src=" sources/images/temp/featured-3.jpg" height="175" width="269" alt="">
			
										<div class="slide-overlay">
											<div class="slide-overlay-inner">
												<a href="tutorials/" class="button button-white">See More</a>
											</div>
										</div>
									</div>
			
									<div class="slide-content">
										<a href="tutorials/"><h3>Tutorials</h3></a>
										<p><%= Common_method.getBundleValue(request, "lang", "tutorialtext") %> </p>
		
									</div>
								</div><!-- /.columns large-3 medium-12 -->
								
								<div class="columns large-4 medium-12">
									<div class="slide-image">
										<img src=" sources/images/temp/featured-2.jpg" height="175" width="269" alt="">
			
										<div class="slide-overlay">
											<div class="slide-overlay-inner">
												<a href="forum/" class="button button-white">See More</a>
											</div>
										</div>
									</div>
			
									<div class="slide-content">
										<a href="forum/"><h3>Forum Discussion</h3></a>
											<p><%= Common_method.getBundleValue(request, "lang", "forumtext") %> </p>
									</div>
								</div><!-- /.columns large-3 medium-12 -->
							</div><!-- /.row -->
						
						
						
						
							<!-- <ul class="slides owl-carousel">
								
								<li class="slide">
									<div class="slide-image">
										<img src=" sources/images/temp/featured-1.jpg" height="175" width="270" alt="">
			
										<div class="slide-overlay">
											<div class="slide-overlay-inner">
												<a href="#" class="button button-white">See More</a>
											</div>/.slide-overlay-inner
										</div>/.slide-overlay
									</div>/.slide-image
			
									<div class="slide-content">
										<h3>E-Learning Videos</h3>
										
										<p>Khmer Academy will help you to have many advantages with our learning contents such as saving your time and your money. We have many interesting e-learning contents in Khmer language that explain clearly and easy to understand. </p>
									</div>/.slide-content
			
									
								</li>/.slide
							
								<li class="slide">
									<div class="slide-image">
										<img src=" sources/images/temp/featured-3.jpg" height="175" width="269" alt="">
			
										<div class="slide-overlay">
											<div class="slide-overlay-inner">
												<a href="#" class="button button-white">See More</a>
											</div>/.slide-overlay-inner
										</div>/.slide-overlay
									</div>/.slide-image
			
									<div class="slide-content">
										<h3>Tutorials</h3>
										
										<p>Khmer Academy forum is a section of our website that allows visitors to communicate with each other by posting and answering questions. Our forum is available for all kinds of topics especially related to IT. </p>
									</div>/.slide-content
			
									
								</li>/.slide
							
								<li class="slide">
									<div class="slide-image">
										<img src=" sources/images/temp/featured-2.jpg" height="175" width="269" alt="">
			
										<div class="slide-overlay">
											<div class="slide-overlay-inner">
												<a href="#" class="button button-white">See More</a>
											</div>/.slide-overlay-inner
										</div>/.slide-overlay
									</div>/.slide-image
			
									<div class="slide-content">
										<h3>Forum Discussion</h3>
										
										<p>Khmer Academy provides you all tutorials learning with all programming languages. You can study easily with all tutorial contents in Khmer. We categorize the lessons and make simple lessons, sample source codes that make you easy to understand. </p>
									</div>/.slide-content
			
									
								</li>/.slide
								
								<li class="slide">
									<div class="slide-image">
										<img src=" sources/images/temp/featured-4.jpg" height="175" width="269" alt="">
			
										<div class="slide-overlay">
											<div class="slide-overlay-inner">
												<a href="#" class="button button-white">See More</a>
											</div>/.slide-overlay-inner
										</div>/.slide-overlay
									</div>/.slide-image
			
									<div class="slide-content">
										<h3>Scholarship Opputunity</h3>
										
										<p>Khmer Academy will try to find scholarship announcements to post in our website, it will take easy for students that looking for scholarship. </p>
									</div>/.slide-content
			
									
								</li> --><!-- /.slide
							
								
							</ul> --><!-- /.slides -->
						</div><!-- /.slider-clip -->
						
						<div class="slider-actions"></div><!-- /.slider-actions -->
					</div><!-- /.slider-featured -->
				</div><!-- /.section-body -->
			</div><!-- /.columns small-12 -->
		</div><!-- /.row -->
	</section><!-- /.section-featured -->

	<section class="section-sponsor">
		<div class="slider-sponsor">
			<div class="slider-clip">
				<ul class="slides owl-carousel">
					<li class="slide">
						<div class="slide-image fullscreener">
							<img src=" sources/images/temp/sponsor-image2.jpg" height="526" width="899" alt="">
						</div><!-- /.slide-image -->
					</li><!-- /.slide -->
				
					<li class="slide">
						<div class="slide-image fullscreener">
							<img src=" sources/images/temp/sponsor-image.jpg" height="526" width="899" alt="">
						</div><!-- /.slide-image -->
					</li><!-- /.slide -->
				</ul><!-- /.slides -->
			</div><!-- /.slider-clip -->
			
			<div class="slider-actions"></div><!-- /.slider-actions -->
		</div><!-- /.slider-sponsor -->
		<div class="row">
			<div class="columns large-6 large-push-6">
				<div class="section-inner">
					<header class="section-head">
						<h4>Khmer Academy Archivement</h4>
					
						<h2 class="section-title">The Best website for e-learning</h2><!-- /.section-title -->
					
						<p>Khmer Academy got an appriciation from HE. Hang Chuon Naron and many universities</p>
					</header><!-- /.section-head -->
					
					<div class="section-body">
						<p>Korea Software HRD Center has signed MOU between many universities to share the contents in Khmer Academy for the curriculum in the signed university.</p>
					</div><!-- /.section-body -->
					
					<div class="section-foot">
						<a href="#" class="button">Learn More</a>
					
						<span class="section-foot-separator">Or</span>
					
						<div class="section-foot-contacts">
							<span>Email Us At</span>
					
							<a href="#">khmeracademy.org@gmail.com</a>
						</div><!-- /.section-foot-contacts -->
					</div><!-- /.section-foot -->
				</div><!-- /.section-inner -->
			</div><!-- /.columns large-6 large-push-6 -->
		</div><!-- /.row -->
	</section><!-- /.section-sponsor -->

<!-- 	<section class="section-updates">
		<div class="row">
			<div class="columns large-6">
				<section class="section-news">
					<header class="section-head">
						<h3 class="section-title">Scholarship News</h3>/.section-title
					</header>/.section-head
		
					<div class="section-body">
						<div class="slider-news">
							<div class="slider-clip">
								<ul class="slides owl-carousel">
									<li class="slide">
										<div class="slide-image">
											<img src=" sources/images/temp/news-image.jpg" height="178" width="269" alt="">
		
											<div class="slide-bar">
												<span>
													<i class="fa fa-folder-open"></i> International
												</span>
												
												<span>
													<i class="fa fa-calendar"></i> May 7, 2015
												</span>
											</div>/.slide-bar
										</div>/.slide-image
		
										<div class="slide-content">
											<h4>
												<a href="#">Organized Food Camp for Children</a>
											</h4>
		
											<p>In over under beast seed He. Thing Second stars green there gathering living. Without greater image moving living signs fruit above heaven. Hath, behold isn't Day.</p>
										</div>/.slide-content
									</li>/.slide
								
									<li class="slide">
										<div class="slide-image">
											<img src=" sources/images/temp/news-image.jpg" height="178" width="269" alt="">
		
											<div class="slide-bar">
												<span>
													<i class="fa fa-folder-open"></i> International
												</span>
												
												<span>
													<i class="fa fa-calendar"></i> May 7, 2015
												</span>
											</div>/.slide-bar
										</div>/.slide-image
		
										<div class="slide-content">
											<h4>
												<a href="#">Organized Food Camp for Children</a>
											</h4>
		
											<p>Tree image fly upon earth a let had, divided don't dominion isn't replenish him good under divide unto divide firmament, fowl gathered our. Under them his.</p>
										</div>/.slide-content
									</li>/.slide
								</ul>/.slides
							</div>/.slider-clip
							
							<div class="slider-actions"></div>/.slider-actions
						</div>/.slider-news
					</div>/.section-body
		
					<div class="section-foot">
						<h4 class="section-foot-title">
							<span>Latest news</span>
						</h4>/.section-foot-title
		
						<ul class="latest-news-items medium-block-grid-2 small-block-grid-1">
							<li class="latest-news-item">
								<div class="latest-news-item-image">
									<a href="#">
										<img src=" sources/images/temp/latest-news-1.jpg" height="66" width="80" alt="">
									</a>
								</div>/.latest-news-item-image
								
								<div class="latest-news-item-content">
									<h4>
										<a href="#">Pizza Treat Given to Children</a>
									</h4>
									
									<p>May 7, 2015</p>
								</div>/.latest-news-item-content
							</li>
							
							<li class="latest-news-item">
								<div class="latest-news-item-image">
									<a href="#">
										<img src=" sources/images/temp/latest-news-2.jpg" height="66" width="80" alt="">
									</a>
								</div>/.latest-news-item-image
								
								<div class="latest-news-item-content">
									<h4>
										<a href="#">Day With Childs from Africa</a>
									</h4>
									
									<p>May 7, 2015</p>
								</div>/.latest-news-item-content
							</li>
							
							<li class="latest-news-item">
								<div class="latest-news-item-image">
									<a href="#">
										<img src=" sources/images/temp/latest-news-3.jpg" height="66" width="80" alt="">
									</a>
								</div>/.latest-news-item-image
								
								<div class="latest-news-item-content">
									<h4>
										<a href="#">Visit To Graps Farm at Indonesia</a>
									</h4>
									
									<p>May 7, 2015</p>
								</div>/.latest-news-item-content
							</li>
							
							<li class="latest-news-item">
								<div class="latest-news-item-image">
									<a href="#">
										<img src=" sources/images/temp/latest-news-3.jpg" height="66" width="80" alt="">
									</a>
								</div>/.latest-news-item-image
								
								<div class="latest-news-item-content">
									<h4>
										<a href="#">We Love To Make child Smile</a>
									</h4>
									
									<p>May 7, 2015</p>
								</div>/.latest-news-item-content
							</li>
						</ul>/.latest-news-items medium-block-grid-2 small-block-grid-1
					</div>/.section-foot
				</section>/.section-news
			</div>/.columns large-6
			
			<div class="columns large-6">
				<section class="section-upcoming-event">
					<header class="section-head">
						<h3 class="section-title">Upcoming Event</h3>/.section-title
		
						<div class="section-head-actions">
							<a href="#" class="button button-facebook">
								<i class="fa fa-facebook"></i> Facebook Page
							</a>
						</div>/.section-head-actions
					</header>/.section-head
		
					<div class="section-body">
						<div class="event-alt" itemscope itemtype="https://schema.org/Event">
							<div class="event-image">
								<a href="#">
									<img src=" sources/images/temp/upcoming-event.jpg" height="293" width="528" alt="" itemprop="image">
								</a>
							</div>/.event-image
		
							<h4 class="event-title">
								<a href="#" itemprop="name">Organizing Music Event To Get Good Donation</a>
							</h4>/.event-title
		
							<div class="event-meta">
								<span>
									<i class="fa fa-user"></i> Admin
								</span>
								
								<span>
									<i class="fa fa-calendar"></i> May 7, 2015 at 2:00 PM
								</span>
								
								<span>
									<i class="fa fa-map-marker"></i> Montreal, QC.
								</span>
							</div>/.event-meta
		
							<div class="event-entry" itemprop="description">
								<p>Donec varius ultrices purus. Nullam sit amet sapien tortor. Aenean tincidunt inte rdum felis, vel placerat purus porta nec.</p>
							</div>/.event-entry
						</div>/.event-alt
					</div>/.section-body
				</section>/.section-upcoming-event
			</div>/.columns large-6
		</div>/.row
	</section> --><!-- /.section-updates -->

<!-- 	<section class="section-our-staff">
		<div class="row">
			<div class="columns small-12">
				<header class="section-head">
					<h3 class="section-title">Our Developers</h3>/.section-title
				</header>/.section-head
			
				<div class="section-body">
					<div class="slider-staff">
						<div class="slider-clip">
							<ul class="slides owl-carousel">
								<li class="slide">
									<ul class="staff-items large-block-grid-2">
										<li class="staff-item" itemscope itemtype="https://schema.org/Person">
											<div class="staff-item-image">
												<img src=" sources/images/temp/staff-image-1.jpg" height="248" width="285" alt="" itemprop="image">
											</div>/.staff-item-image
											
											<div class="staff-item-content">
												<div class="staff-item-content-inner">
													<h4 itemprop="image">Chheang Vuthea</h4>
													
													<p>He is an IT Instructor at Korea Software HRD Center. He like sharing knowledge.</p>
													
													<div class="staff-item-actions">
														<ul>
															<li>
																<a href="#">
																	<i class="fa fa-facebook"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-twitter"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-linkedin"></i>
																</a>
															</li>
														</ul>
													</div>/.staff-item-actions
												</div>/.staff-item-content-inner
											</div>/.staff-item-content
										</li>/.staff-item
										
										<li class="staff-item" itemscope itemtype="https://schema.org/Person">
											<div class="staff-item-image">
												<img src=" sources/images/temp/staff-image-2.jpg" height="248" width="285" alt="" itemprop="image">
											</div>/.staff-item-image
											
											<div class="staff-item-content">
												<div class="staff-item-content-inner">
													<h4 itemprop="image">Heak Menghok</h4>
													
													<p>He is an IT Instructor at Korea Software HRD Center. He gratuated from BBU.</p>
													
													<div class="staff-item-actions">
														<ul>
															<li>
																<a href="#">
																	<i class="fa fa-facebook"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-twitter"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-linkedin"></i>
																</a>
															</li>
														</ul>
													</div>/.staff-item-actions
												</div>/.staff-item-content-inner
											</div>/.staff-item-content
										</li>/.staff-item
										
										<li class="staff-item staff-item-alt" itemscope itemtype="https://schema.org/Person">
											<div class="staff-item-image">
												<img src=" sources/images/temp/staff-image-3.jpg" height="248" width="297" alt="" itemprop="image">
											</div>/.staff-item-image
											
											<div class="staff-item-content">
												<div class="staff-item-content-inner">
													<h4 itemprop="image">Leang Bunrong</h4>
													
													<p>He is an IT Instructor at Korea Software HRD Center. He gratuated from RUPP.</p>
													
													<div class="staff-item-actions">
														<ul>
															<li>
																<a href="#">
																	<i class="fa fa-facebook"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-twitter"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-linkedin"></i>
																</a>
															</li>
														</ul>
													</div>/.staff-item-actions
												</div>/.staff-item-content-inner
											</div>/.staff-item-content
										</li>/.staff-item staff-item-alt
										
										<li class="staff-item staff-item-alt" itemscope itemtype="https://schema.org/Person">
											<div class="staff-item-image">
												<img src=" sources/images/temp/staff-image-4.jpg" height="248" width="297" alt="" itemprop="image">
											</div>/.staff-item-image
											
											<div class="staff-item-content">
												<div class="staff-item-content-inner">
													<h4 itemprop="image">Khoeurn Saksonia</h4>
													
													<p>She is an IT Instructor at KSHRD Center. She was a student of Norton University.</p>
													
													<div class="staff-item-actions">
														<ul>
															<li>
																<a href="#">
																	<i class="fa fa-facebook"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-twitter"></i>
																</a>
															</li>
															
															<li>
																<a href="#">
																	<i class="fa fa-linkedin"></i>
																</a>
															</li>
														</ul>
													</div>/.staff-item-actions
												</div>/.staff-item-content-inner
											</div>/.staff-item-content
										</li>/.staff-item staff-item-alt
									</ul>/.staff-items large-block-grid-2
								</li>/.slide
							
							</ul>/.slides
						</div>/.slider-clip
						
						<div class="slider-actions"></div>/.slider-actions
					</div>/.slider-staff
				</div>/.section-body
			</div>/.columns small-12
		</div>/.row
	</section> --><!-- /.section-our-staff -->

	<section class="section-testimonials">
		<header class="section-head">
			<div class="row">
				<div class="columns small-12">
					<h2 class="section-title">Proffessor Says About Us</h2><!-- /.section-title -->
					
					<div class="section-image">
						<img src=" sources/images/temp/ico-droplet.png" height="22" width="14" alt="">
					</div><!-- /.section-image -->
					
					<!-- <p>
						Our prime purpose in this life is to help people. <br />And if you can't help them at least don't hurt them. 
					</p> -->
				</div><!-- /.columns small-12 -->
			</div><!-- /.row -->
		</header><!-- /.section-head -->

		<div class="section-body">
			<div class="slider-testimonials">
				<div class="row">
					<div class="slider-clip">
						<ul class="slides owl-carousel">
							<li class="slide">
								<div class="slide-entry">
									<p>
										I am very impressed by Khmer Academy which is a first website in Cambodia provide e-learning videos in Khmer. I hope Khmer Academy would be a part of Cambodia education development.
									</p>
								</div><!-- /.slide-entry -->
					
								<div class="slide-foot">
									<p>HE.Hang Chuon Naron, Minister of Ministry of Education </p>
								</div><!-- /.slide-foot -->
							</li><!-- /.slide -->
						
							
						</ul><!-- /.slides -->
					</div><!-- /.slider-clip -->
				</div><!-- /.row -->
			</div><!-- /.slider-testimonials -->
		</div><!-- /.section-body -->
	</section><!-- /.section-testimonials -->




	<footer class="footer">
		<div class="footer-body">
			<div class="row">
				<div class="columns large-6 medium-12">
					<div class="footer-section">
						<h4 class="footer-section-title"><%= Common_method.getBundleValue(request, "lang", "aboutus") %></h4><!-- /.footer-section-title -->
						
						<div class="footer-section-body">
							<p><%= Common_method.getBundleValue(request, "lang", "aboutustext") %> </p>
						</div><!-- /.footer-section-body -->
					</div><!-- /.footer-section -->
				</div><!-- /.columns large-3 medium-12 -->
				
				<div class="columns large-2 medium-12">
					<div class="footer-section">
						<h4 class="footer-section-title">Our App</h4><!-- /.footer-section-title -->
						
						<div class="footer-section-body">
							<p><a target="_blank" href="https://play.google.com/store/apps/details?id=org.khmeracademy"><img src="uploads/android-logos.png"></a> 
							<!-- <a href="#"><img src="uploads/ios-logos.png"></a> --></p>
						</div><!-- /.footer-section-body -->
					</div><!-- /.footer-section -->
				</div><!-- /.columns large-3 medium-12 -->
				
				<div class="columns large-4 medium-12">
					<div class="footer-section">
						<h4 class="footer-section-title"><%= Common_method.getBundleValue(request, "lang", "contactus") %></h4><!-- /.footer-section-title -->
						
						<div class="footer-section-body">
							<p><%= Common_method.getBundleValue(request, "lang", "contactustext") %></p>

							
						</div><!-- /.footer-section-body -->
					</div><!-- /.footer-section -->
				</div><!-- /.columns large-3 medium-12 -->
			</div><!-- /.row -->
		</div><!-- /.footer-body -->

		<div class="footer-bar">
			<div class="row">
				<div class="columns small-12">
					<div class="footer-credits">
						<p>
							<%= Common_method.getBundleValue(request, "lang", "copyright") %>
						</p>
					</div><!-- /.footer-credits -->
					
					<div class="footer-socials">
						<ul>					
							<li>
								<a href="#">
									<i class="fa fa-facebook"></i>
								</a>
							</li>
							
							<li>
								<a href="#">
									<i class="fa fa-twitter"></i>
								</a>
							</li>
							
							<li>
								<a href="#">
									<i class="fa fa-google-plus"></i>
								</a>
							</li>
							
							<li>
								<a href="#">
									<i class="fa fa-linkedin"></i>
								</a>
							</li>
						</ul>
					</div><!-- /.footer-socials -->
				</div><!-- /.columns small-12 -->
			</div><!-- /.row -->
		</div><!-- /.footer-bar -->
	</footer><!-- /.footer -->
</div><!-- /.wrapper -->
<script src=" sources/javascripts/vendor.js"></script>
<script src=" sources/javascripts/app.js"></script>
<!-- <script src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/markerwithlabel/src/markerwithlabel.js"></script> -->
<script>
	
	

</script>


</body>
</html>

