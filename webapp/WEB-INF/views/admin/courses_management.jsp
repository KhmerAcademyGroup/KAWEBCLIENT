<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	<link href="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
	<!-- sweet alert -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/sweetalert2.css">
</head>

<body class="tooltips">



	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">
	
			<!-- BEGIN TOP NAV -->
			<jsp:include page="shared/_topnav.jsp" />
			<!-- END TOP NAV -->
			
			
			
			<!-- BEGIN SIDEBAR LEFT -->
			<jsp:include page="shared/_leftsidebar.jsp" />
			<!-- END SIDEBAR LEFT -->
			
			
			
			
			
			
			<!-- BEGIN SIDEBAR RIGHT -->
			<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
			<!-- END SIDEBAR RIGHT -->
			







		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

			   <h1 class="page-heading">PlayList</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button type="button" class="btn btn-success" id="form-create-playlist" >
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>
						<div class="btn-group" >
							<form role="form">
								<select id="limitplaylist" onclick="choosePlaylist();" class="form-control">
									<option value="10">10</option>
									<option value="20" selected="selected">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
									<option value="100">100</option>
								</select>
							</form>
						</div>
						<div class="btn-group pull-right">
							<form role="form">
								<input type="text" onkeyup="mySearchPlaylist()" id="search" class="form-control"
									placeholder="Search University">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No</th>
									<th>Course</th>
									<th>Description</th>
									<th>Category</th>	
									<th>Videos</th>
									<th>By</th>
									<th>Status</th>													
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
								
							</tbody>
						</table>
						<br />
						
						<p id="totalrecord" style="color:blue;"></p>
						<div id="pagination" class="pull-right"></div>
					</div>
					<!-- /.table-responsive -->
				</div>



			</div>
			<!-- /.container-fluid -->


				<!-- BEGIN FOOTER -->
				<jsp:include page="shared/_adminfooter.jsp" />
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
	<!-- Footer Script -->
		<jsp:include page="shared/_scriptfooter.jsp"/>
		<!-- ./Footer Script -->

	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.tmpl.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/assets/js/jscolor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
	

   
		

</body>
</html>
