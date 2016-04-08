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

			   <h1 class="page-heading">List Department</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button id="showFrmAddDepartment" type="button" class="btn btn-success">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>

						<!-- <div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search department">
							</form>

						</div> -->
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Department name</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
							
							</tbody>
							
						</table>
						
						 <div id="pagination" class="pull-right">
												
						 </div>
												
												
					</div>
					<!-- /.table-responsive -->
				</div>



			</div>
			<!-- /.container-fluid -->

		<div id="p-frmDepartment" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmDepartment" action="${pageContext.request.contextPath}/rest/log/department" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">List departments</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="departmentId" class="form-control"  name="departmentId">
										
									<div class="form-group">
										<label class="col-lg-3 control-label">Department name</label>
										<div class="col-lg-5">
											<input type="text" id="departmentName" class="form-control" required="required" name="departmentName">
										</div>	
									</div>
					</div>
					<div class="modal-footer">
							<button type="submit" id="btSubmit" class="btn btn-primary">Save</button>
					</div>
				</div>
			</form>	
		</div>
		
		<div id="p-frmConfirm" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmConfirm" action="${pageContext.request.contextPath}/rest/log/department" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">Confirmation</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="ConfirmId" class="form-control"  name="departmentId">
										
									<div class="form-group">										
										<div class="col-lg-8 right" style="border:none;">
											<label class="form-control">Delete this department?</label> 
										</div>	
									</div>
					</div>
					<div class="modal-footer">
							<button type="submit" id="btDelete" class="btn btn-primary">Yes</button>
							<button type="button" id="btCancel" class="btn btn-primary">No</button>
					</div>
				</div>
			</form>	
		</div>




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
				<td>{{= departmentName}}</td>
				<td> 
   		 			<i data-cateid="{{= departmentId}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdateDepartment"></i>
            		<i data-cateid="{{= departmentId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmConfirm" ></i>
         		</td>
			</tr>
   		</script>
   
   		
         
		<script type="text/javascript">		
		
		var department = {};
		var check = true;
		var gPage = 1; //global current page for pagination
		
		$(document).ready(function(){
			
			department.listDepartment = function(currentPage){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/log/department?page="+currentPage+"&item=20", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
				    	/* alert(JSON.stringify(data.RESP_DATA.length));
				    	return; */ 
// 						console.log(data);
				    	
				    	perPage = 20;
				    	nextPage = (currentPage-1)*perPage;
				    	
						if(data.RESP_DATA.length>0){
							$("tbody#content").empty();
							for(var i=0;i<data.RESP_DATA.length;i++){
								data.RESP_DATA[i]["NO"] = (i+1)+nextPage;
							}
							$("#content_tmpl").tmpl(data.RESP_DATA).appendTo("tbody#content");
						}else{
							$("tbody#content").html('<tr>No content</tr>');
						}
				    	if(check){
				    		department.setPagination(data.PAGINATION.totalPages,1);
				    		check=false;
				    	}
				    	KA.destroyProgressBar();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			department.setPagination = function(totalPage, currentPage){
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
   			    	gPage = currentPage;
   			    	department.listDepartment(currentPage);
   			    }); 
    		};
    		
    		department.addOrUpdateDepartment = function(){
				KA.createProgressBarWithPopup();
				frmData = {
						"departmentId"   : $("#departmentId").val(),
						"departmentName" : $("#departmentName").val()
				};
				$.ajax({ 
				    url:  $("#frmDepartment").attr("action"), 
				    type: $("#frmDepartment").attr("method"),
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	department.listDepartment(gPage);
				    	$("#p-frmDepartment").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			department.deleteDepartment = function(){
				KA.createProgressBarWithPopup();
				
				//alert($("#frmConfirm").attr("action")+"/"+$("#ConfirmId").val());				
				var deptId = $("#ConfirmId").val();
				
				$.ajax({ 
				    url:  $("#frmConfirm").attr("action")+"/"+deptId, 
				    type: $("#frmConfirm").attr("method"),
				    //data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	department.listDepartment(gPage);
				    	$("#p-frmConfirm").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			// Show Form Confirm Department delete Popup
			$(document).on('click',"#showFrmConfirm", function(){		
				
				var deptId = $(this).data("cateid");
				$("#p-frmConfirm").bPopup({modalClose: false});
				$("#frmConfirm").attr("method", "DELETE");
				$("#ConfirmId").val(deptId);
				//department.deleteDepartment(deptId);
				//$("#frmDepartment").trigger("reset");				
			});
			
			//delete department equal yes
			$("#frmConfirm").submit(function(e){				
				 e.preventDefault();
				 department.deleteDepartment();
			});
			
			$("#btCancel").on('click', function(){			
								
				$("#p-frmConfirm").bPopup().close();
			});
			
			// Get one forum department
			/* department.getDepartment = function(cateid){
				KA.createProgressBarWithPopup();
				console.log(cateid);
				 $.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/log/department/"+cateid, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.RES_DATA != null){
							$("#departmentId").val(data.RES_DATA.departmentId); 
							$("#departmentName").val(data.RES_DATA.departmentName); 
						}
						KA.destroyProgressBarWithPopup();
				    },
				    error:function(data,status,er) { 
						KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				}); 			
			}; */
			
			
			// load all forum cateoty
			department.listDepartment(1);
				
			
			// Show Form Add Department Popup
			$("#showFrmAddDepartment").click(function(){
				$("#p-frmDepartment").bPopup({modalClose: false});
				$("#frmDepartment").attr("method", "POST");
				$("#frmDepartment").trigger("reset");
				$("#btSubmit").text("Add");
			});
						
			// Show Form Update Department Popup
			$(document).on('click',"#showFrmUpdateDepartment", function(){
				//alert($(this).data("cateid"));
				
				var deptName = $(this).parent().prev().text();
				var cateId = $(this).data("cateid");
				KA.createProgressBarWithPopup();				
// 				console.log(cateId);
				$("#departmentId").val(cateId); 
				$("#departmentName").val(deptName);
				
				$("#p-frmDepartment").bPopup({modalClose: false});
				//department.getDepartment($(this).data("cateid"));
				KA.destroyProgressBarWithPopup();
				
				//$("#frmDepartment").trigger("reset");
				$("#frmDepartment").attr("method", "PUT");
				$("#btSubmit").text("Update");
				
			});
			
			// Add or update Forum Department
			$("#frmDepartment").submit(function(e){
				 e.preventDefault();
				 department.addOrUpdateDepartment();
			});			
			
		});
		</script>

</body>


</html>