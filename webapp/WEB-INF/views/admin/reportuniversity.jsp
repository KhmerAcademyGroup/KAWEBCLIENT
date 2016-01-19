<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
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
			<jsp:include page="shared/_rightsidebar.jsp" />
			<!-- END SIDEBAR RIGHT -->
			







		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

			   <h1 class="page-heading">University Report</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<!-- <div class="btn-group" id="btcheck">
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#frmFroumCategory" data-backdrop="static">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div> -->

						<div class="btn-group col-lg-12">
							
							<form role="form" class="">
								<select class="pull-left" size="1" name="datatable-example_length" aria-controls="datatable-example">
									<option value="10" selected="selected">10</option><option value="25">25</option>
									<option value="50">50</option><option value="100">100</option>
								</select>
								
								 <label class="col-lg-3 control-label">Search</label>
								 <input type="text" id="search" class="form-control col-sm-3"	placeholder="Search">
							</form>							
								
							<!-- <form role="form" class="pull-right col-lg-6">							
							  
								
							</form> -->

						</div>
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">						
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No</th>
									<th>University</th>									
									<th>User</th>
									<th>View</th>
									<th>Duration</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>									
									<td>8</td>
									<td>RUPP</td>
									<td>6</td>
									<td>1000</td>
									<td>4days 7046:14:34</td>																		
									<td> 
										<!-- <i class="icon-circle icon-xs icon-info" data-toggle="modal" data-target="#frmFroumCategory" data-backdrop="static">View</i> -->
										<i class="btn btn-danger" data-toggle="modal" >View</i>
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
							<h4 class="modal-title">Add University</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label class="col-lg-1 control-label">University Name<span class="required">*</span></label>
								<div class="col-lg-10 col-sm-12 pull-right col-xs-12">
									<input type="hidden" name="universityId" id="universityId">
									<input type="text" class="form-control" name="txtUniversityName" id="txtUniversityName" value="">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Add</button>
						</div>
						<!-- /.modal-footer -->
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-doalog -->
			</div>
			<!-- /#DefaultModal -->




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
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>



	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.tmpl.min.js"></script>
	
	
	<script id="CONTENT_TEMPLATE" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= id}}</td>
				<td>{{= username}}</td>
				<td>{{= email}}</td>
				<td>{{= position}}</td>
				<td>{{= roles}}</td>
				<td>{{= createdDate}}</td>
				<td>{{= approvedDate}}</td>
				<!--<td>{{if accountNonLocked == true}} <i class="ion-android-close" style="color: red;"></i> {{else}} <i class="ion-android-close" style="color: green;"></i> {{/if}}</td>
				<td>{{if enabled == true}} <i class="ion-android-close" style="color: green;"></i> {{else}} <i class="ion-android-close" style="color: red;"></i> {{/if}}</td>
				-->
				<td>Action</td>
			</tr>
   </script>
   
		<script type="text/javascript">		
		
		var category = {};
		
		$(document).ready(function(){
			
			category.listCategory = function(currentPage){
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/rest/category", 
				    type: 'GET', 
				    data: {
				    		"currentPage" : currentPage,
				    		"perPage"     : 20
				    },
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.RESP_DATA.length>0){
							$("tbody#CONTENTS").html('');
							$("#CONTENT_TEMPLATE").tmpl(data.RESP_DATA).appendTo("tbody#CONTENTS");
						}else{
							$("tbody#CONTENTS").html('<tr>NO CONTENTS</tr>');
						}
				    	if(check){
				    		users.setPagination(data.PAGINATION.totalPages,1);
				    		check=false;
				    	}
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			
			
		});
		</script>

</body>


</html>