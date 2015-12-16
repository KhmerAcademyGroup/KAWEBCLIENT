<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Vuthea Chheang">
<title>User | Khmer Academy</title>

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

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

<!--  CSS (REQUIRED ALL PAGE)-->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

</head>

<body class="tooltips">

	


	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">
		<!-- BEGIN TOP NAV -->
		<jsp:include page="_header.jsp"></jsp:include>
		<!-- END TOP NAV -->



		<!-- BEGIN SIDEBAR LEFT -->
		<jsp:include page="_sidebar.jsp"></jsp:include>
		<!-- END SIDEBAR LEFT -->




		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">


			<div class="container-fluid">
				<!-- Begin page heading -->
				<br/>
					<div class="panel panel-info">
								  <div class="panel-heading">
									<h1 class="panel-title">
									<i class="fa fa-user"></i>
										<a href="index.act"  >
										List Users
										
										</a>
									</h1>
								  </div>
									
					</div><!-- /.panel panel-default -->
				<!-- End page heading -->



				<!-- Begin example member table -->
				<div class="the-box no-border">

					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group">
							<form role="form" id="frmSetRow">
								<select class="form-control" id="setNumrow">
									<option>10</option>
									<option>20</option>
									<option>30</option>
									<option>50</option>
								</select>
							</form>
						</div>
						<div class="btn-group" id="btcheck">
								<a href="#checkAll" id="checkall" class="btn btn-primary"><input type="checkbox" id="select-all" name="selectAll" value="">Check All</a> 	
							</div>
						<div class="btn-group">
							<button type="button" class="btn btn-danger">
								<i class="fa fa-ban"></i> Ban selected
							</button>
						</div>

						<div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search user">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>
					<!-- /.btn-toolbar top-table -->

			
				<div id="getUser">
				
					<!-- <div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th style="width: 30px;"><input type="checkbox"></th>
									<th>Username</th>
									<th>Email</th>
									<th>Gender</th>
									<th>Phone Number</th>
									<th>Type</th>
									<th>Status</th>
									<th>Detail</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><input type="checkbox"></td>
									<td><img src="assets/img/avatar/avatar-1.jpg"
										class="avatar img-circle" alt="avatar">Paris Hawker</td>
									<td>Yogyakarta, Indonesia</td>
									<td>August 17, 1990</td>
									<td>August 17, 1990</td>
									<td style="width: 140px;">
										<select  class="form-control" tabindex="2">
										<option value="United States">Subscriber</option>
										<option value="United Kingdom">Editor</option>
										<option value="Afghanistan">Admin</option>
									</select>
									</td>
									<td style="width: 110px;">
										<select  class="form-control" tabindex="2">
										<option value="United States">Active</option>
										<option value="United Kingdom">Banned</option>
									</select>
									</td>
									<td>
										<a href="#"><i class="fa fa fa-eye icon-rounded icon-xs icon-info"></i></a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
										
										
					/.table-responsive
					<ul class="pagination separated">
								  <li class="disabled"><a href="#fakelink">«</a></li>
								  <li class="active"><a href="#fakelink">1</a></li>
								  <li><a href="#fakelink">2</a></li>
								  <li><a href="#fakelink">3</a></li>
								  <li><a href="#fakelink">»</a></li>
					</ul> -->
					
				</div><!-- /getuser -->
				</div>
				<!-- /.the-box -->
				<!-- End example member table -->


			</div>
			<!-- /.container-fluid -->



			<!-- BEGIN FOOTER -->
			<jsp:include page="_footer.jsp"></jsp:include>
			<!-- END FOOTER -->


		</div>
		<!-- /.page-content -->

	</div>
	<!-- /.wrapp -->

	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->






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
	<script src="assets/js/script/usermanagement.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$.post("adminlistalluser.act",function(data){
				$("#getUser").html(getUserData(data));
		});
		$("#search").keyup(function(){
			$.post("adminlistalluser.act" , 
			{ 
				tfsearch : $("#search").val(),
				setNumrow : $("#setNumrow").val()
			}, 
				function(data){
				$("#getUser").html(getUserData(data));
			});
		});
		
		$("#frmSetRow").change(function(){
			$.post("adminlistalluser.act" , 
					{ 
						setNumrow : $("#setNumrow").val(),
						tfsearch : $("#search").val()
						
					}, 
						function(data){
						$("#getUser").html(getUserData(data));
			});
		});
		
		$("#select-all").on("click", function() {
			  var all = $(this);
			  $('input:checkbox').each(function() {
			       $(this).prop("checked", all.prop("checked"));
			  });
			});
		
		
		
		
	});
	</script>
	
</body>
</html>