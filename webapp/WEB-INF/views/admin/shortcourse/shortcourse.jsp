<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../shared/_adminheader.jsp" />
</head>

<body class="tooltips">

	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">

		<!-- BEGIN TOP NAV -->
		<jsp:include page="../shared/_topnav.jsp" />
		<!-- END TOP NAV -->

		<!-- BEGIN SIDEBAR LEFT -->
		<jsp:include page="../shared/_leftsidebar.jsp" />
		<!-- END SIDEBAR LEFT -->


		<!-- BEGIN SIDEBAR RIGHT -->
		<jsp:include page="../shared/_rightsidebar.jsp" />
		<!-- END SIDEBAR RIGHT -->


		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

				<h1 class="page-heading">Short Course</h1>

				<div class="the-box no-border">
					<div class="row">
						<div class="col-sm-8">
							<button class="btn btn-primary">New Course</button>
							<button class="btn btn-primary">New Shift</button>
						</div>
						<div class="col-sm-2">
							<select class="form-control">
								<option>IOS</option>
								<option>IOS</option>
								<option>IOS</option>
							</select>
						</div>
						<div class="col-sm-2">
							<select class="form-control">
								<option>02:00pm - 04:00pm</option>
								<option>02:00pm - 04:00pm</option>
								<option>02:00pm - 04:00pm</option>
							</select>
						</div>
					</div><br>
					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Full Name</th>
									<th>Gender</th>
									<th>Shift</th>
									<th>Telephone</th>
									<th>Email</th>
									<th>Action</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td>S01</td>
									<td>Test</td>
									<td>Male</td>
									<td>Evening</td>
									<td>012334456</td>
									<td>test@gmail.com</td>
									<td><a class="label label-primary">View</a><a class="label label-danger">Remove</a></td>
								</tr>
								<tr>
									<td>S01</td>
									<td>Test</td>
									<td>Male</td>
									<td>Evening</td>
									<td>012334456</td>
									<td>test@gmail.com</td>
									<td><a class="label label-primary">View</a><a class="label label-danger">Remove</a></td>
								</tr>
								<tr>
									<td>S01</td>
									<td>Test</td>
									<td>Male</td>
									<td>Evening</td>
									<td>012334456</td>
									<td>test@gmail.com</td>
									<td><a class="label label-primary">View</a><a class="label label-danger">Remove</a></td>
								</tr>
							</tbody>

						</table>
						<div>
							<ul class="pagination">
								<li><a href="#">Previous</a></li>
							    <li><a href="#">1</a></li>
							    <li class="active"><a href="#">2</a></li>
							    <li><a href="#">3</a></li>
							    <li><a href="#">4</a></li>
							    <li><a href="#">5</a></li>
							    <li><a href="#">Next</a></li>
							 </ul>
						</div>
						
					</div>
					<!-- /.table-responsive -->
				</div>
			</div>
			<!-- /.container-fluid -->

			<!-- BEGIN FOOTER -->
			<jsp:include page="../shared/_adminfooter.jsp" />
			<!-- END FOOTER -->

		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->

	<!-- Footer Script -->
	<jsp:include page="../shared/_scriptfooter.jsp" />
	<!-- ./Footer Script -->

	
	<script type="text/javascript">
	
		$(document).ready(function() {
			
			
		});
		
	</script>
</body>
</html>