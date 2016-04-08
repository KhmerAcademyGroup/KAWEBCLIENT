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

			   <h1 class="page-heading">List University</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button id="showFrmAddUniversity" type="button" class="btn btn-success">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>

						<!-- <div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search university">
							</form>

						</div> -->
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>University name</th>
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

		<div id="p-frmUniversity" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmUniversity" action="${pageContext.request.contextPath}/rest/log/university" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">List universities</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="universityId" class="form-control"  name="universityId">
										
									<div class="form-group">
										<label class="col-lg-3 control-label">University name</label>
										<div class="col-lg-5">
											<input type="text" id="universityName" class="form-control" required="required" name="universityName">
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
			<form  id="frmConfirm" action="${pageContext.request.contextPath}/rest/log/university" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">Confirmation</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="ConfirmId" class="form-control"  name="universityId">
										
									<div class="form-group">										
										<div class="col-lg-8 right" style="border:none;">
											<label class="form-control">Delete this university?</label> 
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
				<td>{{= universityName}}</td>
				<td> 
   		 			<i data-cateid="{{= universityId}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdateUniversity"></i>
            		<i data-cateid="{{= universityId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmConfirm" ></i>
         		</td>
			</tr>
   		</script>
   
   		
         
		<script type="text/javascript">		
		
		var university = {};
		var check = true;
		var gPage = 1; //global current page for pagination
		
		$(document).ready(function(){
			
			university.listUniversity = function(currentPage){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/log/university?page="+currentPage+"&item=20", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
				    	 /* alert(JSON.stringify(data)); //data.RESP_DATA
				    	return;  */
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
				    		university.setPagination(data.TOTAL_PAGE,1);
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
			
			university.setPagination = function(totalPage, currentPage){
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
   			    	university.listUniversity(currentPage);
   			    }); 
    		};
    		
    		university.addOrUpdateUniversity = function(){
				KA.createProgressBarWithPopup();
				frmData = {
						"universityId"   : $("#universityId").val(),
						"universityName" : $("#universityName").val()
				};
				$.ajax({ 
				    url:  $("#frmUniversity").attr("action"), 
				    type: $("#frmUniversity").attr("method"),
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	university.listUniversity(gPage);
				    	$("#p-frmUniversity").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			university.deleteUniversity = function(){
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
				    	university.listUniversity(gPage);
				    	$("#p-frmConfirm").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			// Show Form Confirm University delete Popup
			$(document).on('click',"#showFrmConfirm", function(){		
				
				var deptId = $(this).data("cateid");
				$("#p-frmConfirm").bPopup({modalClose: false});
				$("#frmConfirm").attr("method", "DELETE");
				$("#ConfirmId").val(deptId);
				//university.deleteUniversity(deptId);
				//$("#frmUniversity").trigger("reset");				
			});
			
			//delete university equal yes
			$("#frmConfirm").submit(function(e){				
				 e.preventDefault();
				 university.deleteUniversity();
			});
			
			$("#btCancel").on('click', function(){			
								
				$("#p-frmConfirm").bPopup().close();
			});
			
			// Get one forum university
			/* university.getUniversity = function(cateid){
				KA.createProgressBarWithPopup();
				console.log(cateid);
				 $.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/log/university/"+cateid, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.RES_DATA != null){
							$("#universityId").val(data.RES_DATA.universityId); 
							$("#universityName").val(data.RES_DATA.universityName); 
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
			university.listUniversity(1);
				
			
			// Show Form Add University Popup
			$("#showFrmAddUniversity").click(function(){
				$("#p-frmUniversity").bPopup({modalClose: false});
				$("#frmUniversity").attr("method", "POST");
				$("#frmUniversity").trigger("reset");
				$("#btSubmit").text("Add");
			});
						
			// Show Form Update University Popup
			$(document).on('click',"#showFrmUpdateUniversity", function(){
				//alert($(this).data("cateid"));
				
				var uniName = $(this).parent().prev().text();
				var cateId = $(this).data("cateid");
				KA.createProgressBarWithPopup();				
// 				console.log(cateId);
				$("#universityId").val(cateId); 
				$("#universityName").val(uniName);
				
				$("#p-frmUniversity").bPopup({modalClose: false});
				//university.getUniversity($(this).data("cateid"));
				KA.destroyProgressBarWithPopup();
				
				//$("#frmUniversity").trigger("reset");
				$("#frmUniversity").attr("method", "PUT");
				$("#btSubmit").text("Update");
				
			});
			
			// Add or update Forum University
			$("#frmUniversity").submit(function(e){
				 e.preventDefault();
				 university.addOrUpdateUniversity();
			});			
			
		});
		</script>

</body>
</html>
