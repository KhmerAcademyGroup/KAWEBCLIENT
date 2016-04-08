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
			<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
			<!-- END SIDEBAR RIGHT -->
			

		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">
					<br/>
					<div class="panel panel-info">
								  <div class="panel-heading">
									<h1 class="panel-title">
									<i class="fa fa-tasks"></i>
										<a href="index.act"  >
										List Log Category
										
										</a>
									</h1>
								  </div>
									
					</div><!-- /.panel panel-default -->

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive" id="showTable">
										
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



		<!-- Footer Script -->
		<jsp:include page="shared/_scriptfooter.jsp"/>
		<!-- ./Footer Script -->



		<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO }}</td>
				<td><button class="btn btn-info">{{= categoryName}}</button></td>
				<td>{{= views }}</td>
				<td>{{= duration}}</td>
				<td> 
   		 			<a href="#"><i data-cateid="{{= categoryId}}" class="fa fa-eye icon-circle icon-xs icon-danger" id="showviewReport"></i></a>            		
         		</td>
			</tr>
   		</script>
   		
   		<script id="contentuserbycat_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO }}</td>
				<td>{{= username}}</td>
				<td>{{= views }}</td>
				<td>{{= duration}}</td>
				<td> 
   		 			<a href="#"><i data-userid="{{= userId}}" class="fa fa-eye icon-circle icon-xs icon-danger" id="showviewReportuser"></i></a>
            		
         		</td>
			</tr>
   		</script>
   		
   		
         
		<script type="text/javascript">		
			$(document).ready(function(){
				var logReport= {};
				
				logReport.tableLayout = function(title){
					var str= '';
					str += '<table class="table table-th-block table-hover" id="tblreport">'+
								'<thead>'+
									'<tr>'+
										'<th style="width: 30px;">No</th>'+
										'<th id="tbltitle">'+title+'</th>'+									
										'<th>View</th>'+
										'<th>Duration</th>'+
										'<th>Action</th>'+
									'</tr>'+
								'</thead>'+
								'<tbody id="content">'+								
								'</tbody>'+
							'</table>';
					return str;
				};
				
				//function list report category
				logReport.listReportCategory = function(){
					KA.createProgressBarWithPopup();
					$.ajax({
						url : "${pageContext.request.contextPath}/admin/report/rest/listcategory",
						method: "GET",
						success: function(data){
// 							console.log(data);
							if(data.STATUS != false){
								
								
								$("#showTable").html(logReport.tableLayout("Category Name"));
								
								$("tbody#content").empty();
								for(var i=0;i<data.RES_DATA.length;i++){
									data.RES_DATA[i]["NO"] = i+1;
								}
								$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
								$("#tblreport").dataTable();
							}else{
								$("tbody#content").html('<tr>No content</tr>');
							}
							
							KA.destroyProgressBarWithPopup();
						}						
					});
				};
				
				
				//function list report User by category
				logReport.listReportUserByCategory = function(categoryId){
					KA.createProgressBarWithPopup();
					$.ajax({
						url : "${pageContext.request.contextPath}/admin/report/rest/listuserbycategory/"+ categoryId,
						method: "GET",
						success: function(data){
// 							console.log(data);
							if(data.STATUS != false){
								
								
								$("#showTable").html(logReport.tableLayout("User Name"));
								
								$("tbody#content").empty();
								for(var i=0;i<data.RES_DATA.length;i++){
									data.RES_DATA[i]["NO"] = i+1;
								}
								$("#contentuserbycat_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
								$("#tblreport").dataTable();
							}else{
								$("tbody#content").html('<tr>No content</tr>');
							}
							
							KA.destroyProgressBarWithPopup();
						}						
					});
				};
				
				//function list report User's category
				logReport.listReportCategoryByUser = function(userId){
					KA.createProgressBarWithPopup();
					$.ajax({
						url : "${pageContext.request.contextPath}/admin/report/rest/listcatebyuser/"+ userId,
						method: "GET",
						success: function(data){
// 							console.log(data);
							if(data.STATUS != false){
								$("#showTable").html(logReport.tableLayout("Category By User"));								
								$("tbody#content").empty();
								for(var i=0;i<data.RES_DATA.length;i++){
									data.RES_DATA[i]["NO"] = i+1;
								}
								$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
								$("#tblreport").dataTable();
							}else{
								$("tbody#content").html('<tr>No content</tr>');
							}
							
							KA.destroyProgressBarWithPopup();
						}						
					});
				};
				
				
				
				
				//view list report
				
				logReport.listReportCategory();
				
				$(document).on('click', '#showviewReport', function(){					
					logReport.listReportUserByCategory($(this).data('cateid'));					
				});
				
				$(document).on('click', '#showviewReportuser', function(){						
					logReport.listReportCategoryByUser($(this).data('userid'));					
				});
			});
		</script>

</body>


</html>