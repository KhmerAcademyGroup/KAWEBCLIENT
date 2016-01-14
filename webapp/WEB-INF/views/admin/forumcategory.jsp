<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%-- <%@ page import="model.dto.Video, model.dto.User" %>
<%@page import="model.dto.User"%> --%>

<%-- <%
	if(session.getAttribute("ka_user")!=null) {
 	 User users = (User) session.getAttribute("ka_user");	 
 	 if(users.getUsertypeid() ==4){
 		out.println("<script>window.location.href='listtutorial.act'; </script>");return;
 	 }
	}
%> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description"
	content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
<meta name="keywords"
	content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
<meta name="author" content="Vuthea Chheang">
<title>Khmer Academy Control Panel</title>


<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css"
	rel="stylesheet">

<!-- PLUGINS CSS -->
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/weather-icon/css/weather-icons.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/prettify/prettify.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/magnific-popup.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.theme.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.transitions.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/icheck/skins/all.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/datepicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/markdown/bootstrap-markdown.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/datatable/css/bootstrap.datatable.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/morris.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/c3.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/slider/slider.min.css"
	rel="stylesheet">

<!-- MAIN CSS (REQUIRED ALL PAGE)-->
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style-backend.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.css"
	rel="stylesheet">

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

			

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#frmFroumCategory" data-backdrop="static">
								<i class="fa fa-plus-square"></i> Add new
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

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Full name</th>
									<th>Location</th>
									<th>Date of birth</th>
									<th>Gender</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Paris Hawker</td>
									<td>Yogyakarta, Indonesia</td>
									<td>August 17, 1990</td>
									<td><span class="label label-danger">Female</span></td>
									<td> <i class="fa fa-pencil icon-circle icon-xs icon-info" data-toggle="modal" data-target="#frmFroumCategory" data-backdrop="static"></i>
										 <i class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" ></i>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>



			</div>
			<!-- /.container-fluid -->


			<!-- Modal -->
			<div class="modal fade " id="frmFroumCategory" tabindex="-1"
				role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">Default style</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
						<!-- /.modal-footer -->
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-doalog -->
			</div>
			<!-- /#DefaultModal -->




			<!-- BEGIN FOOTER -->
			<jsp:include page="_footer.jsp"></jsp:include>
			<!-- END FOOTER -->


		</div>
		<!-- /.page-content -->
	</div>
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
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/retina/retina.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/nicescroll/jquery.nicescroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>

	<!-- PLUGINS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/skycons/skycons.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/prettify/prettify.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/icheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/timepicker/bootstrap-timepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/mask/jquery.mask.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/bootstrap.datatable.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>

	<!-- EASY PIE CHART JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/easypiechart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>

	<!-- KNOB JS -->
	<!--[if IE]>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/knob.js"></script>

	<!-- FLOT CHART JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.selection.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.time.js"></script>

	<!-- MORRIS JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/raphael.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/morris.min.js"></script>

	<!-- C3 JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/d3.v3.min.js"
		charset="utf-8"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/c3.min.js"></script>

	<!-- MAIN APPS JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>

</body>


</html>