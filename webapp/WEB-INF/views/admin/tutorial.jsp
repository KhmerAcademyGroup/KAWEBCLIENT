<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	<style>
		@media (min-width: 768px)
			.vu-modal-lg
			{
			    width: 1800px;
			    height: auto; /* control height here */
			}
	</style>
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
			   <div class="panel panel-info"><div class="panel-heading"><h1 class="panel-title">
									<i class="fa fa-tasks"></i><a href="index.act">
										List Tutorials
										</a>
									</h1>
								  </div>
				</div>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group">
							<a id="showFrmAddTutorial" type="button" class="btn btn-success">
								<i class="fa fa-plus-square"></i> Add new
							</a>
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
			        <h4 class="modal-title">Tutorial Content</h4>
			      </div>
			    <form id="frmtutorial" name="frmtutorial" method="post" action="${pageContext.request.contextPath}/admin/tutorial/rest/tutorial" class="form-horizontal" role="form">
			      <div class="modal-body">
			       	<div>
							<fieldset>
								
								<div class="form-group">
									<input type="hidden" name="tutorialId" id="tutorialId"/>
									<input type="hidden" name="userId" id="userId"/>
									<div class="col-lg-12">
										<label class="control-label">Tutorial Title<span class="required">*</span></label>
									</div>
									<div class="col-lg-12">
										<input type="text" class="form-control" name="title" id="title" required="required"/>
									</div>
								</div> 
								
								<div class="form-group">
									<div class="col-lg-12">
										<label class="control-label">Description<span class="required">*</span></label>
									</div>
									<div class="col-lg-12">
										<textarea class="form-control summernote-lg" id="txtdescription"></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-1 control-label">Index<span class="required">*</span></label>
									<div class="col-lg-11">
										<input type="number" class="form-control" name="index" id="index" required="required" />
									</div>
								</div> 
								
								<div class="form-group">
									<div class="col-lg-1">
										<label class="control-label">Category<span class="required">*</span></label>
									</div>
									<div class="col-lg-11">
							          	<select data-placeholder="Select categories" name="categoryId" id="categoryId" class="form-control chosen-select" tabindex="16" required="required">							      
																	          	
										</select>
							          
									</div>
								</div>
								
							</fieldset>
					</div><!-- /.the-box -->
			       
			       
			      </div>
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-danger" id="btSubmit" >Save</button>
			      </div>
			      </form>
			      
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

		<script src="${pageContext.request.contextPath}/resources/assets/plugins/ckeditor/ckeditor.js"></script>
		<script>
		 CKEDITOR.replace( 'txtdescription' );
		</script>
		<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO }}</td>
				<td>{{= title}}</td>
				<td>{{= index }}</td>
				<td>{{= categoryName }}</td>
				<td>{{= username }}</td>
				<td> 
   		 			<a href="#"><i data-tutorialid="{{= tutorialId}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdateTutorial"></i></a>
            		<a href="#"><i data-tutorialid="{{= tutorialId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" id="showDeleteTutorial" ></i> </a>
         		</td>
			</tr>
   		</script>
   		<script type="text/x-jquery-tmpl" id="listCategory">
									      
				<option value="{{= categoryId }}">{{= categoryName }}</option>							          	
			
		</script>
   		
         
		<script type="text/javascript">		
		
		var tutorial = {};
		var check = true;
		
		$(document).ready(function(){
			
			$.get("${pageContext.request.contextPath}/api/isLogin",function(data){
				$("#userId").val(data.USERID);				
			});
			
			//List Category into combo box in form add
			tutorial.listCategory = function(){
				$.ajax({
					url : "${pageContext.request.contextPath}/admin/tutorial/rest/getCategory",
					method: "GET",
					success : function(data){
						if(data.STATUS != false){
							$("#listCategory").tmpl(data.RES_DATA).appendTo("#categoryId");
						}
					}
				});
			};
			

			//Get form data as JSON
			tutorial.getFormData = function($form){
			    var unindexed_array = $form.serializeArray();
			    var indexed_array = {};

			    $.map(unindexed_array, function(n, i){
			        indexed_array[n['name']] = n['value'];
			    });

			    return indexed_array;
			};
			
			//List All Tutorial
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
// 						console.log(data);
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
				
				var $form = $("#frmtutorial");
				
				var frmData = tutorial.getFormData($form);
				frmData["description"] = CKEDITOR.instances["txtdescription"].getData();
				 $.ajax({ 
				    url:  $form.attr("action"), 
				    type: $form.attr("method"),
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	tutorial.listTutorial(1);
				    	$("#myPopup").modal("hide");
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});  
			};
			
			// Get one tutorial
			tutorial.getTutorial = function(tutorialid){
				KA.createProgressBarWithPopup();
				
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/tutorial/rest/getdetail/"+tutorialid, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
						if(data.RES_DATA != null){
							$("#tutorialId").val(data.RES_DATA.tutorialId);
							$("#title").val(data.RES_DATA.title); 
							CKEDITOR.instances['txtdescription'].setData(data.RES_DATA.description);
							$("#index").val(data.RES_DATA.index); 
							$("#categoryId option:selected").prop("selected",false);
							$('#categoryId option[value="'+ data.RES_DATA.categoryId +'"]').attr('selected', true);
						}
						KA.destroyProgressBarWithPopup();
				    },
				    error:function(data,status,er) { 
						KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			//Delete on Tutorial
			tutorial.deleteTutorial= function(tutorialId){
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/tutorial/rest/deleteTutorial/"+tutorialId, 
				    type: 'DELETE',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
						if(data.STATUS == true){
							check = true;
							tutorial.listTutorial(1);
						}						
				    },
				    error:function(data,status,er) { 						
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			// load all tutorial
			tutorial.listTutorial(1);
			
			//list Category to Add form
			tutorial.listCategory();
			
			
			// Show Form Add tutorial Popup
			$("#showFrmAddTutorial").click(function(){							 
				$("#myPopup").modal({
					backdrop: 'static',
				    keyboard: false
				});
				$("#frmtutorial").trigger("reset");	 
				CKEDITOR.instances['txtdescription'].setData("");
				$("#frmtutorial").attr("method", "POST");				
				$("#btSubmit").text("Add");
			});
			
			// Show Form Update tutorial Popup
			$(document).on('click',"#showFrmUpdateTutorial", function(){
				//alert($(this).data("cateid"));
										 
				$("#myPopup").modal({
					backdrop: 'static',
				    keyboard: false
				});
				$("#frmtutorial").trigger("reset");	 
				CKEDITOR.instances['txtdescription'].setData("");
				tutorial.getTutorial($(this).data("tutorialid"));				
				$("#frmtutorial").attr("method", "PUT");
				$("#btSubmit").text("Update");
			});
			
			$(document).on('click', "#showDeleteTutorial", function(){
				var conf = confirm("Do you really want to delete?");
				if(conf){
					tutorial.deleteTutorial($(this).data("tutorialid"));
				}
			});
			
			// Add or update tutorial
			$("#frmtutorial").submit(function(e){
				 e.preventDefault();
				 tutorial.addOrUpdateTutorial();
			});
			
			
		});
		</script>

</body>
</html>