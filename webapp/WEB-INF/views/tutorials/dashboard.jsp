<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="Controller.Common_method"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description"
	content="Khmer Academy is the first e-learning platform for knowledge sharing in Cambodia. It is developed by Korea Software HRD Center in 2015. All contents are in Khmer language for easy knowledge acquisition. Most contents are related to IT fields and plan to extend more topics. Our mission is to improve education environments of Cambodia by means of IT technologies. Khmer Academy will be a significant education platform which accumulates and shares all kinds of knowledge on internet. ">
<meta name="keywords"
	content="Khmer Academy, Khmer Learning Online, Khmer IT Study , IT Traning in Cambodia, Khmer Forum, IT Chatting">
<meta name="author" content="KHMER ACADEMY">
<title>Tutorials Index | Khmer Acedemy Online</title>

<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<!-- PLUGINS CSS -->
<link href="assets/plugins/weather-icon/css/weather-icons.min.css"
	rel="stylesheet">
<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet">
<link href="assets/plugins/magnific-popup/magnific-popup.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.theme.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.transitions.min.css"
	rel="stylesheet">
<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet">
<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet">
<link href="assets/plugins/datepicker/datepicker.min.css"
	rel="stylesheet">
<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link href="assets/plugins/validator/bootstrapValidator.min.css"
	rel="stylesheet">
<link href="assets/plugins/summernote/summernote.min.css"
	rel="stylesheet">
<link href="assets/plugins/markdown/bootstrap-markdown.min.css"
	rel="stylesheet">
<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css"
	rel="stylesheet">
<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
<link href="assets/plugins/slider/slider.min.css" rel="stylesheet">

<!-- MAIN CSS (REQUIRED ALL PAGE)-->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
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
@import
	url(http://fonts.googleapis.com/css?family=Lato:400,400italic,700,700italic,900,900italic)
	;

.btn_allcourse {
	margin: 0 auto;
	width: 10%;
}
</style>
<!-- Player Responsive -->
<link href="assets/css/player-responsive.css" rel="stylesheet">

<style>
hr {
	margin: 10px;
}

@media ( max-width : 1236px) {
	#btngr {
		width: 150px;
	}
}

a:hover {
	text-decoration: none;
	color: #FF6600;
}
</style>
<script>
	jQuery(document).ready(function($) {
		"use strict";
		$('#SuppressScrollX_1').perfectScrollbar({
			suppressScrollX : true
		});
	});
</script>

</head>

<body class="tooltips">


	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">
		<jsp:include page="../elearning/_header.jsp"></jsp:include>



		<div class="container">
			<ol class="breadcrumb default square rsaquo sm">
				<li><a><i class="fa fa-home"></i></a></li>
				<li><a>Tutorials</a></li>
				<li class="active">All Courses</li>
			</ol>
		</div>


		<div class="container">

			<div class="text-center"
				style="color: #2a5893; font-family: 'Lato', sans-serif;">
				<h1><%=Common_method.getBundleValue(request, "lang",
					"welcometutorialtext")%></h1>
			</div>
			<br />
			
				<div class="col-sm-3">
					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="detail.act?cid=31">
							<img alt="Image" class="item-image"
							src="assets/img/photo/medium/word2010.png">
						</a>
						<div class="the-box bg-primary no-margin no-border item-des">

							<h4 class="bolded">Microsoft Word 2010</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=31" class="btn btn-primary active">View</a>
							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->
				</div>
				<div class="col-sm-3">
					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="detail.act?cid=37">
							<img alt="Image" class="item-image"
							src="assets/img/photo/medium/word.jpg">
						</a>
						<div class="the-box bg-primary no-margin no-border item-des">

							<h4 class="bolded">Microsoft Word 2013</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=37" class="btn btn-primary active">View</a>
							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->
				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="detail.act?cid=33">
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/excel.jpg">
						</a>
						
						<div class="the-box bg-danger no-margin no-border item-des">

							<h4 class="bolded">Microsoft Excel</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=33" class="btn btn-danger active">View</a>

							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-danger .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="detail.act?cid=38"><img alt="Image" class="item-image"
							src="assets/img/photo/medium/powerpoint.jpg">
						</a>
						
						<div class="the-box bg-warning no-margin no-border item-des">

							<h4 class="bolded">Microsoft PowerPoint</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=38" class="btn btn-warning active">View</a>
							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-warning .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="detail.act?cid=40">
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/email-marketing.jpg">
						</a>
						
						<div class="the-box bg-success no-margin no-border item-des">

							<h4 class="bolded">Internet & Email</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								
								<a href="detail.act?cid=40" class="btn btn-success active">View</a>
							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-success .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
			
			
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="detail.act?cid=34">
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/windows-81.jpg">
						</a>
						
						<div class="the-box bg-info no-margin no-border item-des">

							<h4 class="bolded">Windows 8.1</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=34" class="btn btn-primary active">View</a>
							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="detail.act?cid=35">
							<img alt="Image" class="item-image"
							src="assets/img/photo/medium/network.jpg">
						</a>
						
						<div class="the-box bg-danger no-margin no-border item-des">

							<h4 class="bolded">Network</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=35" class="btn btn-warning active">View</a>

							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-danger .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="">
						</a>
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/linux_basic.jpg">
						<div class="the-box bg-warning no-margin no-border item-des">

							<h4 class="bolded">Linux Basic</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=39" class="btn btn-warning active">View</a>

							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-warning .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/fedora.jpg">
						<div class="the-box bg-success no-margin no-border item-des">

							<h4 class="bolded">Linux Advance</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=36" class="btn btn-success active">View</a>
							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-success .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
		
			
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/photoshop_cs6.jpg">
						<div class="the-box bg-info no-margin no-border item-des">

							<h4 class="bolded">Adobe Photoshop</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=22" class="btn btn-primary active">View</a>
							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/bootstrap.png">
						<div class="the-box bg-danger no-margin no-border item-des">

							<h4 class="bolded">Bootstrap</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=42" class="btn btn-danger active">View</a>

							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-danger .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
				<div class="col-sm-3">

					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<img alt="Image" class="item-image"
							src="assets/img/photo/medium/ajax.jpg">
						<div class="the-box bg-warning no-margin no-border item-des">

							<h4 class="bolded">Ajax</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="detail.act?cid=41" class="btn btn-warning active">View</a>

							</div>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .bg-warning .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->

				</div>
				<!-- /.col-sm-3 -->
			

		</div>





		<!-- BEGIN FOOTER -->
		<jsp:include page="../elearning/_footer.jsp"></jsp:include>
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
	<script
		src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
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
