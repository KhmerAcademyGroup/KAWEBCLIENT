<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
		
		<!-- BEGIN TOP NAVBAR -->
		<div class="top-navbar">
			<div class="container">
			
				<!-- Begin logo -->
				<div class="logo">
					<a href="index.html"><img src="${pageContext.request.contextPath}/resources/assets/img/main_page/khmeracademy.png" alt="Logo"></a>
				</div><!-- /.logo -->
				<!-- End logo -->
				
				<!-- Begin button toggle nav -->
				<div class="btn-toggle-nav" id="btn-toggle-nav"><i class="fa fa-bars"></i></div>
				<div class="btn-toggle-search" id="btn-icon-search"><i class="fa fa-search"></i></div>
				<div class="btn-toggle-phone" id="btn-icon-phone"><i class="fa fa-phone"></i></div>
				<!-- End button toggle nav -->
				
				<!-- Begin visible phone and search nav -->
				<div id="phone-sub" class="nav-right-info">
					<i class="fa fa-times times-icon" id="close-phone-nav"></i>
					<p class="phone">Call us : <strong>+1 123 4567 7899</strong></p>
				</div>
				<div id="search-sub" class="nav-right-info">
					<i class="fa fa-times times-icon" id="close-search-nav"></i>
					<form role="form">
						<input type="text" class="form-control" placeholder="Search something...">
					</form>
				</div>
				<!-- End visible phone and search nav -->
				
				<!-- Begin nav menu -->
				<ul class="menus">
					<li class="parent">
						<a href="#fakelink">Home</a>
						<ul class="sub-menus">
							<li class="sub-list"><a href="index.html">Default</a></li>
							
							<li class="sub-list"><a href="index-fancy-color.html">Fancy color navbar <span class="label label-danger">HOT</span></a></li>
							<li class="sub-list"><a href="index-static-nav.html">Static nav position</a></li>
							<li class="sub-list">
								<a href="#fakelink">Dark nav color <span class="badge badge-success">3</span></a>
								<ul class="subsub-menus">
									<li class="subsub-list"><a href="index-dark-nav-static-image.html">Static image header</a></li>
									<li class="subsub-list"><a href="index-dark-nav-image-slide.html">Image slide</a></li>
									<li class="subsub-list"><a href="index-dark-nav-content-slide.html">Content slide</a></li>
								</ul>
							</li>
							<li class="sub-list">
								<a href="#fakelink">Light nav color <span class="badge badge-warning">3</span></a>
								<ul class="subsub-menus">
									<li class="subsub-list"><a href="index-light-nav-static-image.html">Static image header</a></li>
									<li class="subsub-list"><a href="index-light-nav-image-slide.html">Image slide</a></li>
									<li class="subsub-list"><a href="index-light-nav-content-slide.html">Content slide</a></li>
								</ul>
							</li>
							<li class="sub-list">
								<a href="#fakelink">Transparent nav <span class="badge badge-info">3</span></a>
								<ul class="subsub-menus">
									<li class="subsub-list"><a href="index-trans-nav-static-image.html">Static image header</a></li>
									<li class="subsub-list"><a href="index.html">Image slide <span class="label label-primary">DEFAULT</span></a></li>
									<li class="subsub-list"><a href="index-trans-nav-content-slide.html">Content slide</a></li>
								</ul>
							</li>
							
							<li class="sub-list"><a href="index-background-color.html">Background color</a></li>
							<li class="sub-list">
								<a href="#fakelink">Templates <span class="label label-primary">PACKAGE</span></a>
								<ul class="subsub-menus">
									<li class="subsub-list"><a href="../../index.html" target="_blank">Sentir - Admin template</a></li>
									<li class="subsub-list"><a href="index-onepage.html">Sentir - One page</a></li>
									<li class="subsub-list"><a href="../comingsoon/index.html">Sentir - Coming soon</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="parent">
						<a href="#fakelink">Pages</a>
						<ul class="sub-menus">
							<li class="sub-list"><a href="about-us.html">About us</a></li>
							<li class="sub-list"><a href="full-width.html">Full width</a></li>
							<li class="sub-list"><a href="sidebar-left.html">Sidebar left</a></li>
							<li class="sub-list"><a href="sidebar-right.html">Sidebar right</a></li>
							<li class="sub-list"><a href="service.html">Services</a></li>
							<li class="sub-list"><a href="testimonial.html">Testimonial</a></li>
							<li class="sub-list"><a href="pricing-table.html">Pricing table</a></li>
							<li class="sub-list"><a href="blank.html">Blank page</a></li>
						</ul>
					</li>
					<li class="parent">
						<a href="shortcodes.html">Shortcodes</a>
					</li>
					<li class="parent">
						<a href="#fakelink">Portfolio</a>
						<ul class="sub-menus">
							<li class="sub-list"><a href="portfolio-4-column.html">4 columns</a></li>
							<li class="sub-list"><a href="portfolio-3-column.html">3 columns</a></li>
							<li class="sub-list"><a href="portfolio-single.html">Portfolio single</a></li>
						</ul>
					</li>
					<li class="parent">
						<a href="#fakelink">Blog</a>
						<ul class="sub-menus">
							<li class="sub-list"><a href="blog-list.html">Blog list</a></li>
							<li class="sub-list"><a href="blog-detail.html">Blog detail</a></li>
						</ul>
					</li>
					<li class="parent"><a href="contact.html">Contact</a></li>
					
					<!-- Begin right icon -->
					<li class="parent right-icon">
						<i class="fa fa-search" id="nav-icon-search"></i>
					</li>
					<li class="parent right-icon">
						<i class="fa fa-phone" id="nav-icon-phone"></i>
					</li>
					<!-- End right icon -->
				</ul>
				<!-- End nav menu -->
			</div><!-- /.container -->
		</div><!-- /.top-navbar -->
		<!-- END TOP NAVBAR -->