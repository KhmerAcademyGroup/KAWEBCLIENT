<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Sentir, Responsive admin and dashboard UI kits template">
		<meta name="keywords" content="admin,bootstrap,template,responsive admin,dashboard template,web apps template">
		<meta name="author" content="Ari Rusmanto, Isoh Design Studio, Warung Themes">
		<title>Khmer Academy | Forum</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- PLUGINS CSS-->
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/style-front.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.css" rel="stylesheet">
 
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
 
	<body class="tooltips no-padding">
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		
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
		
		
		
		
		
		
		
		
		
		<!-- My Contend -->
		
		<div class="container" style="margin-top: 60px;">
		
		
			<div class="row">
			<ol class="breadcrumb default square rsaquo sm">
						<li><a href="../"><i class="fa fa-home"></i></a></li>
						<li><a href="index.act">Forum</a></li>
						<li class="active">Dashboard</li>
			</ol>
			</div>
			<div>
					
					
				
				<a href="askquestion.act" class="btn btn-success btn-perspective pull-left" style="font-size: 12px;">Ask Question</a>
				
				<div class="pull-right">
				<a class="btn btn-primary btn-perspective " style="font-size: 12px;" href="list.act">Questions</a>
				<!-- <a class="btn btn-primary btn-perspective "style="font-size: 12px;" href="users.act">Users</a> -->
				</div> 
				<br>
				<br>
					
			</div>		
			
			<div id="dashboard"><div class="row">	<div>		<div class="panel panel-forum panel-primary">			<div class="panel-heading info">				<i class="fa fa-group"></i> Categories			</div>			<div class="panel-body">				<div class="row">						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=6">ភាសា  <span class="badge badge-danger">12</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=14">ចំណេះដឹងទូទៅ  <span class="badge badge-danger">1</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=8">កុំព្យូទ័រ  <span class="badge badge-danger">5</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=12">ផ្សេងៗ  <span class="badge badge-danger">0</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=15">ការរចនា  <span class="badge badge-danger">1</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=3">Web Development  <span class="badge badge-danger">17</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=10">ការងារ  <span class="badge badge-danger">3</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=11">ទូរស័ព្ទ  <span class="badge badge-danger">5</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=4">Programming  <span class="badge badge-danger">10</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=5">Java Technology  <span class="badge badge-danger">11</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=9">អេឡិចត្រូនិច  <span class="badge badge-danger">0</span></a>						</div>						<div class=" col-sm-3">							<a class="list-group-item" href="list.act?cateid=7">វប្បធម៌  <span class="badge badge-danger">1</span></a>						</div>					</div>				</div><!-- /.panel-body -->			</div><!-- /.panel panel-default panel-block-color -->		</div><!-- /.col-sm-4 -->	</div>	<!-- start content -->	<div class="row">		<div id="content-forum">			<div id="page-body">				<main role="main">					<div class="panel panel-forum panel-info">						<div class="panel-heading success"><i class="fa fa-group"></i> Lastest Topics</div>						<div class="panel-inner">							<table class="footable table table-striped table-primary table-hover default footable-loaded">								<tbody>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>1</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=227" data-original-title="" title=""> programming</a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=   computer"><span class="label label-info span-sidebar">   computer</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												0 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=10636" data-original-title="" title="">phengphanrangsey</a>												<br>												<small>Dec 15, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>1</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=225" data-original-title="" title=""> Data Structure and Algorithms</a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=         other"><span class="label label-info span-sidebar">         other</span></a>												<a href="list.act?tag=  computer"><span class="label label-info span-sidebar">  computer</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												0 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=432" data-original-title="" title="">khunthavy</a>												<br>												<small>Dec 12, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>0</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=224" data-original-title="" title=""> datta</a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=      other"><span class="label label-info span-sidebar">      other</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												0 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=440" data-original-title="" title="">khihort</a>												<br>												<small>Dec 4, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>0</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=221" data-original-title="" title=""> Java progreming </a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=        other"><span class="label label-info span-sidebar">        other</span></a>												<a href="list.act?tag=       java"><span class="label label-info span-sidebar">       java</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												2 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=8801" data-original-title="" title="">panha</a>												<br>												<small>Oct 30, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>0</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=220" data-original-title="" title=""> Computing </a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=     other"><span class="label label-info span-sidebar">     other</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												0 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=5188" data-original-title="" title="">Brathoun Jr</a>												<br>												<small>Oct 23, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>0</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=219" data-original-title="" title=""> Network</a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag= other"><span class="label label-info span-sidebar"> other</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												0 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=5188" data-original-title="" title="">Brathoun Jr</a>												<br>												<small>Oct 23, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>1</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=216" data-original-title="" title=""> Pagination  use on angular</a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=        web"><span class="label label-info span-sidebar">        web</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												1 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=7279" data-original-title="" title="">Rany</a>												<br>												<small>Oct 21, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>0</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=214" data-original-title="" title=""> Add to cart using session with PHP and Mysqli </a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=         web"><span class="label label-info span-sidebar">         web</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												0 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=8464" data-original-title="" title="">chhitsengtrybavet</a>												<br>												<small>Sep 25, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>2</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=212" data-original-title="" title=""> File Upload Servlet with Ajax</a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=         web"><span class="label label-info span-sidebar">         web</span></a>												<a href="list.act?tag=      java"><span class="label label-info span-sidebar">      java</span></a>												<a href="list.act?tag=  jsp"><span class="label label-info span-sidebar">  jsp</span></a>												<a href="list.act?tag= server"><span class="label label-info span-sidebar"> server</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												0 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=379" data-original-title="" title="">Heng</a>												<br>												<small>Sep 20, 2015</small>											</span>										</td>									</tr>									<tr>										<td class="expand footable-first-column">											<span class="footable-toggle"></span>											<span class="pull-left" style="color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;">												<span><strong>2</strong></span> <br>   <span style="font-size: 12px;">Votes</span>											</span>											<i title="No unread posts" class="row-icon-font-mini "></i>											<span class="desc-wrapper">												<a style="color: #428bca;" href="question.act?q=211" data-original-title="" title=""> JavaScript/Jquery import</a>												<br>												<i data-original-title="Attachment(s)" data-placement="top" rel="tooltip" class="fa fa-paperclip fa-flip-horizontal"></i>												<a href="list.act?tag=        other"><span class="label label-info span-sidebar">        other</span></a>												<a href="list.act?tag=  web"><span class="label label-info span-sidebar">  web</span></a>											</span>										</td>										<td class="vu-table-td ">											<span class="stats-wrapper">												2 Replies											</span>										</td>										<td class="vu-table-td footable-last-column">											<span class="last-wrapper"> by 												<a class="username-coloured" style="color: #AA0000;" href="list.act?uid=379" data-original-title="" title="">Heng</a>												<br>												<small>Sep 20, 2015</small>											</span>										</td>									</tr>								</tbody><tfoot>	<tr id="divbtload"><td colspan="3"><a name="btmore" class="btn btn-primary btn-perspective" href="list.act"> All Questions </a></td></tr></tfoot>							</table>						</div>					</div>				</main>			</div> <!-- page-body id in header -->		</div> <!-- content-forum in header -->	</div>		<!-- Static footer --></div>
			
						
		</div>
		
		
		
		
		<!-- End My Contend -->
		
		
		
		
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