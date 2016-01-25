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
				<br/>
			   <div class="panel panel-info"><div class="panel-heading"><h1 class="panel-title">
									<i class="fa fa-tasks"></i><a href="index.act">
										List Tutorials
										</a>
									</h1>
								  </div>
				</div>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button id="showFrmAddCategory" type="button" class="btn btn-success" data-toggle="modal" data-target="#myPopup">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>

						<!-- <div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search category">
							</form>

						</div> -->
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Title</th>									
									<th>Index</th>
									<th>Category</th>
									<th>User Name</th>									
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

			<!-- BootStrap Model Popup -->		
				<!-- Modal -->
			<div id="myPopup" class="modal fade" role="dialog">
			  <div class="modal-dialog modal-lg">
			
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Modal Header</h4>
			      </div>
			      <div class="modal-body">
			       	<div>
						<form id="tutorial" name="tutorial" method="post" action="addtutorial_pro.act" class="form-horizontal" role="form">
							<fieldset>
								
								<div class="form-group">
									<div class="col-lg-12">
										<label class="control-label">Tutorial Title<span class="required">*</span></label>
									</div>
									<div class="col-lg-12">
										<input type="text" class="form-control" name="txttitle" id="txttitle" />
									</div>
								</div> 
								
								<div class="form-group">
									<div class="col-lg-12">
										<label class="control-label">Description<span class="required">*</span></label>
									</div>
									<div class="col-lg-12">
										<textarea class="form-control summernote-lg" name="txtdescription" id="txtdescription"></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-1 control-label">Index<span class="required">*</span></label>
									<div class="col-lg-4">
										<input type="text" class="form-control" name="txtindex" id="txtindex" />
									</div>
								</div> 
								
								<div class="form-group">
									<div class="col-lg-12">
										<label class="col-lg-1 control-label">Category<span class="required">*</span></label>
									</div>
									<div class="col-lg-12">
							          <select data-placeholder="Select categories" name="txtcategory" id="txtcategory" class="form-control chosen-select" tabindex="16">
							      
							            <option value="">category</option>
							          	<option value="">category</option>
							          	<option value="">category</option>
							          	<option value="">category</option>
							          	 <option value="">category</option>
							          	<option value="">category</option>
							          	<option value="">category</option>
							          	<option value="">category</option>
							        
							          </select>
									</div>
								</div>
							</fieldset>

							<div class="form-group">
							
								<div class="col-lg-9 col-lg-offset-3">
									
									<input type="submit" id="bttutorialsave" class="btn btn-info" value="Save"/>
								</div>
							</div>
							
						</form>
					</div><!-- /.the-box -->
			       
			       
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			
			  </div>
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
				<td>{{= title}}</td>
				<td>{{= index }}</td>
				<td>{{= categoryName }}</td>
				<td>{{= username }}</td>
				<td> 
   		 			<i data-tutorialid="{{= tutorialId}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdateTutorial"></i>
            		<!-- <i class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" ></i> -->
         		</td>
			</tr>
   		</script>
   
   		
         
		<script type="text/javascript">		
		
		var tutorial = {};
		var check = true;
		
		$(document).ready(function(){
			
			tutorial.listTutorial = function(currentPage){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/tutorial/rest/getList/${userId}?page="+currentPage+"&item=20", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.STATUS != false){
							$("tbody#content").empty();
							for(var i=0;i<data.RES_DATA.length;i++){
								data.RES_DATA[i]["NO"] = i+1;
							}
							$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
							
						}else{
							$("tbody#content").html('<tr>No content</tr>');
						}	
						if(check){
				    		tutorial.setPagination(data.PAGINATION.totalPages,1);
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
			
			tutorial.setPagination = function(totalPage, currentPage){
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
   			    	tutorial.listTutorial(currentPage);
   			    }); 
    		};
    		
    		tutorial.addOrUpdateTutorial = function(){
				KA.createProgressBarWithPopup();
				frmData = {
						"categoryId"   : $("#categoryId").val(),
						"categoryName" : $("#categoryName").val()
				};
				$.ajax({ 
				    url:  $("#frmCategory").attr("action"), 
				    type: $("#frmCategory").attr("method"),
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	tutorial.listTutorial(1);
				    	$("#p-frmCategory").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			// Get one tutorial
			tutorial.getTutorial = function(cateid){
				KA.createProgressBarWithPopup();
				console.log(cateid);
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/category/"+cateid, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.RES_DATA != null){
							$("#categoryId").val(data.RES_DATA.categoryId); 
							$("#categoryName").val(data.RES_DATA.categoryName); 
						}
						KA.destroyProgressBarWithPopup();
				    },
				    error:function(data,status,er) { 
						KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			
			// load all tutorial
			tutorial.listTutorial(1);
			
			
			
			
			// Show Form Add tutorial Popup
			$("#showFrmAddCategory").click(function(){
				$("#p-frmCategory").bPopup({modalClose: false});
				$("#frmCategory").attr("method", "POST");
				$("#frmCategory").trigger("reset");
				$("#btSubmit").text("Add");
			});
			
			// Show Form Update tutorial Popup
			$(document).on('click',"#showFrmUpdateCategory", function(){
				//alert($(this).data("cateid"));
				$("#p-frmCategory").bPopup({modalClose: false});
				$("#frmCategory").trigger("reset");
				category.getCategory($(this).data("cateid"));
				$("#frmCategory").attr("method", "PUT");
				$("#btSubmit").text("Update");
			});
			
			// Add or update tutorial
			$("#frmCategory").submit(function(e){
				 e.preventDefault();
				 tutorial.addOrUpdateTutorial();
			});
			
			
		});
		</script>

</body>


</html>