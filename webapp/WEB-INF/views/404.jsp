<%@page import="model.dto.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%
 		User usr = (User) session.getAttribute("ka_user");	
%>
    
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
			
			<!-- Header -->
			<jsp:include page="_header.jsp"></jsp:include>
			<!-- /Header -->
			
			<div class="col-sm-12" style="height:52px">
			</div>
			<!-- Banner -->
			<div class="row" style="background-color:white;">
				<div class="col-sm-12" id="banner" style="width: 100%;min-height: 500px;padding: 120px;padding-left: 530px;">
					<img src="assets/img/404.png" class="img-responsive slide-banner">
					
				</div>
			</div>
			<!-- End Banner -->
			
			<!-- Center Line -->
			
			
			
			<!-- End Our Servers -->
			
				<!-- Footer -->
				<div class="col-sm-12" id="footer" >
					<!-- Footer Wrapper -->
					<div class="col-lg-offset-1 col-lg-10 col-sm-12">
						<!-- Footer Right Content -->
							<div class="col-sm-4 footer-content">
								<h3 class="text-green"><strong>ABOUT US</strong></h3>
								<br>
								<p class="text-white">
									Korea Software HRD Center is an IT academy for<br>
									training SW professionals established by<br>
									KoreaInternational Cooperation Agency (KOICA)<br>
									and Webcash Co., Ltd in April, 2013. Our mission is to train<br>
									SW experts, provide job opportunities for them, and improve<br>
									SW technologies in Cambodia.
								</p>
							</div>
						<!-- End Footer Right Content -->
						<!-- Footer Center Content -->
							<div class="col-sm-4 footer-content">
								<h3 class="text-green"><strong>CONTACT US</strong></h3>
								<br>
								<p class="text-white">
									<span class="text-green">Address:</span> #12, St 323, Sangkat Boeung Kak II,<br>
									KhanToul Kork, Phnom Penh, Cambodia.<br>
									<span class="text-green">Tel:</span>    (855)23 99 13 14<br>
     										(855)77 77 12 36 (Khmer, English)<br>
    										(855)15 4 5555 2 (Khmer, English)<br>
    										(855)17 52 81 69(Korean, English)<br>
    								<span class="text-green">Email:</span> <a href="#" class="text-blue">info.kshrd@gmail.com</a><br>
    								<a href="#" class="text-blue">phirum.gm@gmail.com</a> 
								</p>
							</div>
						<!-- End Footer Center Content -->
						<!-- Footer Left Content -->
							<div class="col-sm-4 footer-content">
								<h3 class="text-green"><strong>FOLLOW US ON FACEBOOK</strong></h3>
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
					<address class="text-white">© Copyright 2015. All Rights Reserved.<br>KHMER ACADEMY</address>
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