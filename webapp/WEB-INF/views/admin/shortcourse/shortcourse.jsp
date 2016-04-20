<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="../shared/_adminheader.jsp" />
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
			<jsp:include page="../shared/_topnav.jsp" />
			<!-- END TOP NAV -->
			
			
			
			<!-- BEGIN SIDEBAR LEFT -->
			<jsp:include page="../shared/_leftsidebar.jsp" />
			<!-- END SIDEBAR LEFT -->
			
			
			
			
			
			
			<!-- BEGIN SIDEBAR RIGHT -->
			<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
			<!-- END SIDEBAR RIGHT -->


		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

				<h1 class="page-heading">Short Course</h1>

				<div class="the-box no-border">
					<div class="row">
						
						<div class="col-sm-2">
							<label>Student name : </label>
							<form role="form" action="#" id="frmSearch">
								<input type="text" id="search" class="form-control"
									placeholder="Student name">
							</form>

						</div>
						
						<div class="col-sm-2">
							<label>Course :</label>
							<select class="form-control" id="course">
								<option value="">All</option>
								<option value="1">iOS Application Development</option>
								<option value="2">Android Application Development</option>
								<option value="3">Spring Framework</option>
								<option value="4">Java Enterprise Edition(J2EE)</option>
								<option value="5">Java Standard Edition(J2SE)</option>
								<option value="6">Oracle</option>
								<option value="7">Web Design</option>
							</select>
						</div>
						
						<div class="col-sm-2">
							<label>Shift :</label>
							<select class="form-control">
								<option value="">All</option>
								<option value="1">02:00 - 04:00 AM (Mon-Fri)</option>
								<option value="2">06:00 - 08:00 PM (Mon-Fri)</option>
								<option value="2">08:00 - 11:00 AM (Sat-Sun)</option>
							</select>
						</div>
						
						<div class="col-sm-2">
							<label>Pay :</label>
							<select class="form-control">
								<option value="">All</option>
								<option value="t">True</option>
								<option value="f">False</option>
							</select>
						</div>
						
						<div class="col-sm-2">
							<label>Type :</label>
							<select class="form-control">
								<option value="">All</option>
								<option value="1">Short Course</option>
								<option value="2">Pre Course</option>
							</select>
						</div>
						
						<div class="col-sm-2">
							<label>Status :</label>
							<select class="form-control">
								<option value="">All</option>
								<option value="t">True</option>
								<option value="f">False</option>
							</select>
						</div>
						
						
						
						<div class="col-sm-3">
							<label>From :</label>
							<input type="text" value="" id="fromDate" name="fromDate" data-date-format="yyyy-mm-dd" class="form-control datepicker" >
						</div>
						
						
						<div class="col-sm-3">
							<label>To :</label>
							<input type="text" value="" id="toDate" name="fromDate" data-date-format="yyyy-mm-dd" class="form-control datepicker" >
						</div>
						
						
					</div><br>
					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Pay</th>
									<th>Full Name</th>
									<th>Course</th>
									<th>Shift</th>
									<th>Phone number</th>
									<th>Email</th>
									<th>Gender</th>
									<th>Registered Date</th>
									<th>Type</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
								
								
								
							</tbody>

						</table>
						
						<br />
						
						<p id="totalrecord" style="color:rgb(78, 156, 80);"></p>
						
						<div id="pagination" class="pull-right">
						
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
	
				
	<script id="student_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= no }}</td>
				<td>{{if isPaid == true}}
						<i id="updateStatus" title="Paid"  style="cursor: pointer;"  data-idId="{{= studentDetailId}}" class="fa fa-remove icon-circle icon-xs icon-success" ></i> 
					{{else}} 
						<i id="updateStatus" title="Unpaid"  style="cursor: pointer;"  data-idId="{{= studentDetailId}}" class="fa fa-remove icon-circle icon-xs icon-danger" ></i> 
					{{/if}}
				</td>
				<td>{{= fullname }}</td>
				<td>{{= course }}</td>	
				<td>{{= shift }}</td>	
				<td>{{= phoneNumber }}</td>	
				<td>{{= email }}</td>	
				<td>{{= gender }}</td>	
				<td>{{= registeredDate }}</td>
				<td>{{= type }}</td>
				<td>{{if status == true}}
						<i id="updateStatus" data-value="false" style="cursor: pointer;" title="Click to hide this course!" data-id="{{= playlistId}}" class="fa fa-rotate-left icon-circle icon-xs icon-success"></i> 
					{{else}} 
						<i id="updateStatus" data-value="true" style="cursor: pointer;"  title="Click to public this course!" data-id="{{= playlistId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" ></i> 
					{{/if}}
				</td>
			</tr>
   	</script>
	
	<script type="text/javascript">
	
		$(document).ready(function() {
			
			var kshrd = {};
			var getCurrentPage = 1;
			var check = true;
			frmData = {};
		
			
			kshrd.students = function(frmData , currentPage){
				console.log(frmData);
	   			$.ajax({ 
				    url:"${pageContext.request.contextPath}/admin/kshrd?page="+currentPage+"&item=20", 
				    type: 'POST',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
	                data : JSON.stringify(frmData),
				    success: function(data) {  console.log(data);
				    	if(data.STATUS != false){
					    		$("#totalrecord").text(data.PAGINATION.totalCount+ " Students");
								$("tbody#content").empty();
								$.each(data.RES_DATA, function(key,value){
									data.RES_DATA[key]["no"] = key + 1;
								});
								$("#student_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
								if(check){
									kshrd.setPagination(data.PAGINATION.totalPages,currentPage);
						    		check=false;
						    	}
				    	}else{
				    		$("#totalrecord").text(0 + " Course");
				    		$("tbody#content").html('<div class="alert alert-danger alert-bold-border square fade in alert-dismissable">'+
									  '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
									  '<strong>No course</strong>'+
									'</div>');
				    	}
				    }
	   			});
	   		};
	   		
	   		kshrd.setPagination = function(totalPage, currentPage){
		    	$('#pagination').bootpag({
			        total: totalPage,
			        page: currentPage,
			        maxVisible: 10,
			        leaps: true,
			        firstLastUse: true,
			        first: 'First',
			        last: 'Last',
			        wrapClass: 'pagination',
			        activeClass: 'active',
			        disabledClass: 'disabled',
			        nextClass: 'next',
			        prevClass: 'prev',
			        lastClass: 'last',
			        firstClass: 'first'
			    }).on("page", function(event, currentPage){
			    	check = false;
			    	getCurrentPage = currentPage;
			    	kshrd.students(frmData , currentPage);
			    }); 
		}; 
		
		$("#course").change(function(){
			check = true;
			frmData = {
					courseId  : $("#course").val()
			};
			kshrd.students(frmData,1);
		});
		
		
		
	   		kshrd.students(frmData,1);
			
		});
		
		
		
		
	</script>
</body>
</html>