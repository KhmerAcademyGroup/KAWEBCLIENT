<%@page import="model.dto.User"%>
<%@page import="Controller.Common_method"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

		<title>KHMER ACADEMY | MAIN PAGE</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="Khmer Academy, We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
			<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer IT Study , IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">

		<!-- PLUGINS CSS -->
		<link href="assets/plugins/weather-icon/css/weather-icons.min.css" rel="stylesheet">
		<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet">
		<link href="assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet">
		<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet">
		<link href="assets/plugins/datepicker/datepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/validator/bootstrapValidator.min.css" rel="stylesheet">
		<link href="assets/plugins/summernote/summernote.min.css" rel="stylesheet">
		<link href="assets/plugins/markdown/bootstrap-markdown.min.css" rel="stylesheet">
		<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css" rel="stylesheet">
		<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
		<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
		<link href="assets/plugins/slider/slider.min.css" rel="stylesheet">
		
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">

		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">
		<link href="assets/css/style-responsive.css" rel="stylesheet">
		<link href="assets/css/main-page.css" rel="stylesheet">
		<link href="assets/css/main-page-responsive.css" rel="stylesheet">
 		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
				<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
				ga('create', 'UA-58585702-1', 'auto');
				ga('send', 'pageview');
		</script>
	</head>

	<body class="tooltips" style="margin:0px;padding:0px">

		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">

<%
 		User usr = (User) session.getAttribute("ka_user");
     	if(request.getAttribute("listDepartment") == null){
    %>
    	<script>window.location.href="index.act";</script>
    <%
     	}else{
	%>
			
			<!-- Header -->
				<jsp:include page="_header.jsp"></jsp:include>
			<!-- /Header -->
	<%	
     	}
	%>
			<div class="col-sm-12" style="height:52px">
			</div>
			<!-- Banner -->
			<div class="row" style="background-color:white;">
				<div class="col-sm-12" id="banner">
					<img src="assets/img/main_page/banner.jpg" class="img-responsive slide-banner">
				</div>
			</div>
			<!-- End Banner -->
			<!-- Center Line -->
			<div class="row" style="background-color:#383737;padding:14px 0px">
				<div class="col-sm-offset-1 col-sm-10">
					<h4 class="text-white">
						<%= Common_method.getBundleValue(request, "lang", "slogen") %>
					</h4>
				</div>
			</div>
			<!-- End Center Line -->
			<!-- Our Services -->
			<div class="row col-lg-offset-1 col-lg-10 col-sm-12" id="service">
				<div class="col-sm-offset-3 col-sm-6 align-center">
					<h1>
						<strong><%= Common_method.getBundleValue(request, "lang", "services") %></strong><br><hr style="height:2px;background-color:black;">
					</h1>
				</div>
				<!-- Service 1 -->
				<div class="col-sm-4">
					<h3 class="align-center"><strong><a href="elearning" style="color:#656D78">E-Learning</a></strong></h3>
					<p class="text-center">
						<%= Common_method.getBundleValue(request, "lang", "elearningtext") %>
					</p>
					<div class="col-sm-12 box-shadow box-service">
						<ul>
							 <li>Java Language</li>
      						 <li>SQL</li>
      						 <li>JSP Servlet</li>
        					 <li>HTML</li>
       						 <li>CSS</li>
              				 <li>Javascript</li>
        					 <li>jQuery</li>
       						 <li>Adobe Photoshop</li>
       						 <li>Adobe Illustrator</li>
       						 <li>Android</li>
       						 <li>iOS</li>
						</ul>
					</div>
				</div>
				<!-- End Service 1 -->
				<!-- Service 2 -->
				<div class="col-sm-4">
					<h3 class="align-center"><strong><a href="forum" style="color:#656D78">Forum</a></strong></h3>
					<p class="align-center">
						<%= Common_method.getBundleValue(request, "lang", "forumtext") %>
					</p>
					
					<div class="col-sm-12 box-shadow box-service">
						<ul>
							<li>Community</li>
							<li>Database Management System</li>
							<li>Web application</li>
							<li>Game and Entertainment</li>
							<li>Android</li>
							<li>iOS</li>
							<li>Graphic Design</li>
							<li>Photography</li>
							<li>English</li>
							<li>Korean and other language</li>
							<li>Mathematics</li>
							<!-- <li>Physics</li> -->
						</ul>
					</div>
				</div>
				<!-- End Service 2 -->
				<!-- Service 3 -->
				<div class="col-sm-4">
					<h3 class="align-center"><strong><a href="tutorials" style="color:#656D78; ">Tutorials</a></strong></h3>
					<p class="align-center">
						<%= Common_method.getBundleValue(request, "lang", "tutorialtext") %>
					</p>
					
					
					<div class="col-sm-12 box-shadow box-service">
						<ul>
							<li>IT</li>
							<li>Web Developer</li>
							<li>Graphic Designer</li>
							<li>Java Developer</li>
							<li>Senior Network Infrastructure Engineer</li>
							<li>iOS developer</li>
							<li>Android developer</li>
							<li>PHP Developer</li>
							<li>Software Developer</li>
							<li>Database Admin Senior Officer</li>
							<li>Other</li>
						</ul>
					</div>
				</div>
				<!-- End Service 3 -->
			</div>
			<!-- End Our Servers -->
				<!-- Footer -->
				<div class="col-sm-12" id="footer" >
					<!-- Footer Wrapper -->
					<div class="col-lg-offset-1 col-lg-10 col-sm-12">
						<!-- Footer Right Content -->
							<div class="col-sm-4 footer-content">
								<h3 class="text-green"><strong><%= Common_method.getBundleValue(request, "lang", "aboutus") %></strong></h3>
								<br>
								<p class="text-white">
									<%= Common_method.getBundleValue(request, "lang", "aboutustext") %>
								</p>
								<a href="https://play.google.com/store/apps/details?id=org.khmeracademy" target="_blank"><img src="uploads/android-logos.png"/></a>
							</div>
						<!-- End Footer Right Content -->
						<!-- Footer Center Content -->
							<div class="col-sm-4 footer-content">
								<h3 class="text-green"><strong><%= Common_method.getBundleValue(request, "lang", "contactus") %></strong></h3>
								<br>
								<p class="text-white">
									<%= Common_method.getBundleValue(request, "lang", "contactustext") %>
								</p>
							</div>
						<!-- End Footer Center Content -->
						<!-- Footer Left Content -->
							<div class="col-sm-4 footer-content">
								<h3 class="text-green"><strong><%= Common_method.getBundleValue(request, "lang", "followus") %></strong></h3>
								<br>
								<div fb-iframe-plugin-query="app_id=&amp;color_scheme=dark&amp;header=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FKhmerAcademy.org&amp;locale=en_US&amp;sdk=joey&amp;show_border=false&amp;show_faces=true&amp;stream=false" fb-xfbml-state="rendered" class="fb-like-box fb_iframe_widget" data-href="https://www.facebook.com/KhmerAcademy.Org" data-colorscheme="dark" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"><span style="vertical-align: bottom; width: 300px; height: 241px;"><iframe class="" src="http://www.facebook.com/v2.0/plugins/like_box.php?app_id=&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2F7r8gQb8MIqE.js%3Fversion%3D41%23cb%3Df2e92cbf83de85e%26domain%3Dwww.kshrd.com.kh%26origin%3Dhttp%253A%252F%252Fwww.kshrd.com.kh%252Ffe5c7ef81a8d78%26relation%3Dparent.parent&amp;color_scheme=dark&amp;header=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FKhmerAcademy.Org&amp;locale=en_US&amp;sdk=joey&amp;show_border=false&amp;show_faces=true&amp;stream=false" style="border: medium none; visibility: visible; width: 300px; height: 241px;" title="fb:like_box Facebook Social Plugin" scrolling="no" allowtransparency="true" name="f39b09e5f7abb4c" height="1000px" width="1000px" frameborder="0"></iframe></span></div>
							</div>
						<!-- End Footer Left Content -->
					</div>
					<!-- End Footer Wrapper -->
				</div>
				<!-- End Footer -->
				<!-- Lower Footer -->
				 <div class="col-sm-12 align-center" id="lower-footer">
					<address class="text-white"><%= Common_method.getBundleValue(request, "lang", "copyright") %><br>
					
						<%= Common_method.getBundleValue(request, "lang", "hostedby") %> <a href="http://www.coreit.co.kr/" target="_blank"><img src="uploads/logo/coreitlogo.jpg" style="width: 50px;"/></a>
					
					
					</address>
				</div> 
				<!-- End Lower Footer -->
				
		</div>

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
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/plugins/retina/retina.min.js"></script>
		<script src="assets/plugins/nicescroll/jquery.nicescroll.js"></script>
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
 
		<!-- PLUGINS -->
		<script src="assets/plugins/skycons/skycons.js"></script>
		<script src="assets/plugins/prettify/prettify.js"></script>
		<script src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="assets/plugins/chosen/chosen.jquery.min.js"></script>
		<script src="assets/plugins/icheck/icheck.min.js"></script>
		<script src="assets/plugins/datepicker/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/timepicker/bootstrap-timepicker.js"></script>
		<script src="assets/plugins/mask/jquery.mask.min.js"></script>
		<script src="assets/plugins/validator/bootstrapValidator.min.js"></script>
		<script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatable/js/bootstrap.datatable.js"></script>
		<script src="assets/plugins/summernote/summernote.min.js"></script>
		<script src="assets/plugins/markdown/markdown.js"></script>
		<script src="assets/plugins/markdown/to-markdown.js"></script>
		<script src="assets/plugins/markdown/bootstrap-markdown.js"></script>
		<script src="assets/plugins/slider/bootstrap-slider.js"></script>
		
		<!-- EASY PIE CHART JS -->
		<script src="assets/plugins/easypie-chart/easypiechart.min.js"></script>
		<script src="assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>
		
		<!-- KNOB JS -->
		<!--[if IE]>
		<script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
		<script src="assets/plugins/jquery-knob/jquery.knob.js"></script>
		<script src="assets/plugins/jquery-knob/knob.js"></script>

		<!-- FLOT CHART JS -->
		<script src="assets/plugins/flot-chart/jquery.flot.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.resize.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.selection.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.stack.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.time.js"></script>

		<!-- MORRIS JS -->
		<script src="assets/plugins/morris-chart/raphael.min.js"></script>
		<script src="assets/plugins/morris-chart/morris.min.js"></script>
		
		<!-- C3 JS -->
		<script src="assets/plugins/c3-chart/d3.v3.min.js" charset="utf-8"></script>
		<script src="assets/plugins/c3-chart/c3.min.js"></script>
		
		<!-- MAIN APPS JS -->
		<script src="assets/js/apps.js"></script>
		
	</body>

</html>