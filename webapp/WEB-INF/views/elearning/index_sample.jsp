<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="Khmer Academy is the first e-learning platform for knowledge sharing in Cambodia. It is developed by Korea Software HRD Center in 2015. All contents are in Khmer language for easy knowledge acquisition. Most contents are related to IT fields and plan to extend more topics. Our mission is to improve education environments of Cambodia by means of IT technologies. Khmer Academy will be a significant education platform which accumulates and shares all kinds of knowledge on internet. ">
			<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer IT Study , IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="KHMER ACADEMY">
		<title>E-Learning Index | Khmer Acedemy Online</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		
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
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">
		<link href="assets/css/style-responsive.css" rel="stylesheet">
		
		<link href="assets/css/main-page.css" rel="stylesheet">
		<link href="assets/css/main-page-responsive.css" rel="stylesheet">
 
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<style>
			.btn_allcourse{
				margin: 0 auto;
				width: 10%;
			}
		</style>
		
	</head>
 
	<body class="tooltips">
		
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
		<jsp:include page="_header.jsp"></jsp:include>
		
			
				
					<div class="container">
						<ol class="breadcrumb default square rsaquo sm">
						<li><a ><i class="fa fa-home"></i></a></li>
						<li><a >Courses</a></li>
						<li class="active">All Courses</li>
					</ol>
					</div>
				
			
				<div class="container">
					
					<div class="row">
					
					
						<!-- <div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Java Technologies</h3>
							  </div>
							  <div class="panel-body">
							
								<div>
									<img src="../uploads/java_banner1.png" class="img-responsive"/>	
								</div>	 
								  
								<div class="list-group success square no-side-border">
									  <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/java_thumnail.png" >
										<span>Learn Java</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/jsp_thumnail.png">
										<span>Learn JSP</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/servlets-mini-logo.png">
										<span>Learn Servlet</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/java_io_thumnail.png">
										<span>Java.IO Package</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/java_math_thumnail.png">
										<span>Java.Math Package</span>																			
									  </a>
									 <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/java_util_thumnail.png">
										<span>Java.Util Package</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/java_jdbc_thumnail.png">
										<span>Learn JDBC</span>																			
									  </a>
									 <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/java_lang_thumnail.png">
										<span>Java.lang Package</span>																			
									  </a> 
									 <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/spring.jpg">
										<span>Learn Spring</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/java_swing_thumnail.png">
										<span>Learn Swing</span>																			
									  </a> 
									</div>
							  </div>
							
							</div>
						</div> -->
					<div class="row">
						<div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Computer Basic</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/computer_basic.png" class="img-responsive">
							  	</div>
								<div class="list-group success square no-side-border">
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/windows_icon.png" >
										<span>Windows 8.1</span>																			
									  </a>
									   <a class="list-group-item mail-list" href="play.act?v=641&p=315">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/word_icon.png">
										<span>MS Word 2013</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=655&p=316">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/excel_icon.png">
										<span>MS Excel 2013</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=635&p=310">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/powerpoint_icon.png">
										<span>MS Powerpoint 2013</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=612&p=309">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/access_icon.png">
										<span>MS Access 2013</span>																			
									  </a>
									 <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/internet_icon.png">
										<span>Internet and Email</span>																			
									  </a>
									</div>
							  </div><!-- /.panel-body -->
							
							</div><!-- /.panel panel-default panel-block-color -->
						</div><!-- /.col-sm-4 -->
						<div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Web Development</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/web_development.png" class="img-responsive">
							  	</div>
								
								
								<div class="list-group success square no-side-border">
									  <a class="list-group-item mail-list" href="play.act?v=51&p=3">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/htm_thumbnail_ui.png" >
										<span>HTML</span>																			
									  </a>
									<!--   <a class="list-group-item mail-list" href="play.act?v=51&p=3">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/html5_thumbnail_ui.png">
										<span>Learn HTML5</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=11&p=2">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/css3_thumbnail_ui.png">
										<span>Learn CSS3</span>																			
									  </a> -->
									  <a class="list-group-item mail-list" href="play.act?v=11&p=2">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/css_thumbnail_ui.png">
										<span>CSS</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=101&p=5">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/javascript_thumbnail_ui.png">
										<span>JavaScript</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=116&p=6">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/jquery_thumbnail_ui.png">
										<span>jQuery</span>																			
									  </a>
									  <!-- <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star "></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/ajax_thumbnail_ui.png">
										<span>Learn AJAX</span>																			
									  </a> -->
									<!--  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star "></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/json_thumbnail_ui.png">
										<span>Learn JSON</span>																			
									  </a> -->
									  <a class="list-group-item mail-list" href="play.act?v=263&p=256">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/php_thumbnail_ui.png">
										<span>PHP</span>																			
									  </a>
									  <!-- <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/bootstrap_thumbnail_ui.png">
										<span>Learn Boostrap</span>																			
									  </a> -->
									 
									</div>
							  </div><!-- /.panel-body -->
							
							</div><!-- /.panel panel-default panel-block-color -->
						</div><!-- /.col-sm-4 -->
						<div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Programming</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/programming.png" class="img-responsive">
							  	</div>
								<div class="list-group success square no-side-border">
									  <!-- <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/c_thumbnail_ui.png" >
										<span>Learn C</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star "></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/cpp_thumbnail_ui.png">
										<span>Learn C++</span>																			
									  </a> -->
									   <a class="list-group-item mail-list" href="play.act?v=60&p=4">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/java_thumnail.png" >
										<span>Java</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=244&p=254">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/cshap_thumbnail_ui.png">
										<span>C#</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=255&p=255">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/cshap_thumbnail_ui.png">
										<span>C# Advance</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=20&p=1">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/SQL_thumbnail_ui.png">
										<span>SQL</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=764&p=333">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Lucene" class="avatar img-circle" src="../uploads/thumnail/lucenelogo.jpg">
										<span>Lucene</span>																			
									  </a>
									 
									 <!--  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/vbnet_thumbnail_ui.png">
										<span>Learn VB.Net</span>																			
									  </a>
									 <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/delphi_thumbnail_ui.png">
										<span>Learn Delphi</span>																			
									  </a>									  
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/pascal_thumbnail_ui.png">
										<span>Learn Pascal</span>																			
									  </a>									  
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/assm_thumbnail_ui.png">
										<span>Learn Assembly</span>																			
									  </a> -->
									</div>
							  </div><!-- /.panel-body -->
							
							</div><!-- /.panel panel-default panel-block-color -->
						</div><!-- /.col-sm-4 -->
						
						
						</div>
						<div class="row">
						<div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Mobile Technology</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/mobiletech.png" class="img-responsive">
							  	</div>
								<div class="list-group success square no-side-border">
									  <a class="list-group-item mail-list" href="play.act?v=230&p=252">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/ios_thumbnail_ui.png" >
										<span>iOS</span>																			
									  </a>
									   <a class="list-group-item mail-list" href="play.act?v=281&p=257">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/objc_thumbnail_ui.png">
										<span>Objective C</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=197&p=249">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/android_thumbnail_ui.png">
										<span>Android</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=468&p=271">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/android2_thumbnail_ui.png">
										<span>Android (Project)</span>																			
									  </a>
									 <a class="list-group-item mail-list" href="play.act?v=582&p=298">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/swift.png">
										<span>Swift</span>																			
									  </a>
									
									</div>
							  </div><!-- /.panel-body -->
							
							</div><!-- /.panel panel-default panel-block-color -->
						</div><!-- /.col-sm-4 -->
						 <div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Mathematic</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/matematic.png" class="img-responsive">
							  	</div>
								<div class="list-group success square no-side-border">
									  <a class="list-group-item mail-list" href="play.act?v=779&p=337">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/limit.gif">
										<span>ប្រមាណវិធីលើលីមីត</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=577&p=293">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/algebra_thumbnail_ui.png" >
										<span>រៀន​ពិជគណិត</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=527&p=289">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/geomatry_thumbnail_ui.png">
										<span>រៀនធរណីមាត្រ</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=541&p=291">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/math1_thumbnail_ui.png">
										<span>កំណែវិញ្ញាសារប្រឡងបឋមភូមិ</span>																			
									  </a>
									 <a class="list-group-item mail-list" href="play.act?v=531&p=290">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/math2_thumbnail_ui.png">
										<span>កំណែវិញ្ញាសារប្រឡងទុតិយភូមិ</span>																			
									  </a>
									</div>
							  </div>
							
							</div>
						</div> 
						<div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Design</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/design.png" class="img-responsive">
							  	</div>
								<div class="list-group success square no-side-border">
									  <a class="list-group-item mail-list" href="play.act?v=147&p=250">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/ps_thumbnail_ui.png" >
										<span>Photoshop</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=177&p=251">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/ai_thumbnail_ui.png">
										<span>Illustrator</span>																			
									  </a>
									
									 
									
									</div>
							  </div><!-- /.panel-body -->
							
							</div><!-- /.panel panel-default panel-block-color -->
						</div><!-- /.col-sm-4 -->
					
						
						</div>
						<div class="row">
												
						<div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Languages</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/Language.png" class="img-responsive">
							  	</div>
								<div class="list-group success square no-side-border">
									  <!-- <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/korean_thumbnail_ui.png" >
										<span>Learn Korean</span>																			
									  </a> -->
									  <a class="list-group-item mail-list" href="play.act?v=343&p=268">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/english_thumbnail_ui.png">
										<span>TOEFL</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=335&p=267">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/english_thumbnail_ui.png">
										<span>How to Study English</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=319&p=266">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/english_thumbnail_ui.png">
										<span>Basic English</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=381&p=269">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/english_thumbnail_ui.png">
										<span>English Grammar </span>																			
									  </a>
									  <a class="list-group-item mail-list" href="play.act?v=488&p=274">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/korean_thumbnail_ui.png">
										<span>Korean Level 1 </span>																			
									  </a>
									 
									  <!--  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/chinese_thumbnail_ui.png">
										<span>Learn Chinese</span>																			
									  </a>  -->
									 
									</div>
							  </div><!-- /.panel-body -->
							
							</div><!-- /.panel panel-default panel-block-color -->
						</div><!-- /.col-sm-4 -->
						<div class="col-sm-4">
							<div class="panel panel-default panel-block-color">
							  <div class="panel-heading">
								<h3 class="panel-title">Networking</h3>
							  </div>
							  <div class="panel-body">
							  	<div>
							  		<img src="../uploads/thumnail/linux.png" class="img-responsive">
							  	</div>
								<div class="list-group success square no-side-border">
									 <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/basic_network.png">
										<span>Basic Network</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/linux_basic_icon.png">
										<span>Basic Linux</span>																			
									  </a>
									  <a class="list-group-item mail-list" href="#">										
										<span class="favorite fa fa-star text-warning"></span>
										<img alt="Avatar" class="avatar img-circle" src="../uploads/thumnail/linux_hosting.png">
										<span>Linux Hosting</span>																			
									  </a>
									</div>
							  </div>
							
							</div>
						</div>
					
						</div>
						
					</div>
					
						<div class="btn_allcourse">
						<a style="font-size: 12px;" class="btn btn-primary btn-perspective pull-left" href="allcourse.act"><span class="fa fa-plus-square"></span><span class="panel-title">All Courses</span></a>
						</div>
					
				</div>
			
						   
		
		
		
				<!-- BEGIN FOOTER -->
				<jsp:include page="_footer.jsp"></jsp:include>
				<!-- END FOOTER -->
		
		
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