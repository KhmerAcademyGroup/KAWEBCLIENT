<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/smoke.css" rel="stylesheet">
	<style type="text/css">
		.chosen-container{
		    width: auto !important;
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
			<jsp:include page="shared/_rightsidebar.jsp" />
			<!-- END SIDEBAR RIGHT -->
			







		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

			   <h1 class="page-heading">List Video</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button type="button" class="btn btn-success" id="btnAdd">
								<i class="fa fa-plus-square"></i> Add new
							</button>
							<!-- <button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#frmVideo" data-backdrop="static">
								<i class="fa fa-plus-square"></i> Add new
							</button> -->
						</div>
						
						<div class="btn-group">
							<form role="form">
								<select id="number-of-item" class="form-control">
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
								</select>
							</form>
								
						</div>

						<div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search Video">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No</th>
									<th>Video Name</th>
									<th>YouTube URL</th>
									<th>Post Date</th>
									<th>Category</th>
									<th>View</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
								<!-- <tr>									
									<td>1</td>
									<td>Java</td>
									<td>Youtube</td>
									<td>Date</td>
									<td>Username</td>
									<td>Category</td>
									<td>View</td>
									<td>Status</td>									
									<td> <i class="fa fa-pencil icon-circle icon-xs icon-info" data-toggle="modal" data-target="#frmFroumCategory" data-backdrop="static"></i>
										 <i class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" ></i>
									</td>
								</tr> -->
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


			<!-- Modal -->
			<div class="modal fade " id="frmVideo" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Add Video</h4>
						</div>
						<div class="modal-body">
						
							<input type="hidden" name="videoid" id="videoid" />
						
							<div class="form-group">
								<label class="col-lg-3 control-label">Video Title<span class="required">*</span></label>
								<div class="col-lg-9">
									<input type="text" class="form-control" name="videoname" id="videoname" placeholder="Video Title" />
								</div>
							</div>
							<br />

							<div class="form-group">
								<label class="col-lg-3 control-label">Youtube URL<span class="required">*</span></label>
								<div class="col-lg-9">
									<input type="text" class="form-control" name="youtubeurl" id="youtubeurl" placeholder="Youtube URL" />
								</div>
							</div>
							<br />
							
							<div class="form-group">
								<label class="col-lg-3 control-label">File URL<span class="required">*</span></label>
								<div class="col-lg-9">
									<input type="text" class="form-control" name="fileurl" id="fileurl" placeholder="File URL" />
								</div>
							</div>
							<br />
							
							<div class="form-group">
								<label class="col-lg-3 control-label">Description</label>
								<div class="col-lg-9">
									<textarea class="form-control" name="description" id="description" placeholder="Description"></textarea>
								</div>
							</div>
							<br /><br />
							
							
							
							
							<div class="form-group">
									<label class="col-lg-3 control-label">View<span class="required">*</span></label>
									<div class="col-lg-9">
										<div class="radio">
											<label>
												<input type="radio" name="publicview" id="public" value="true"> Public
											</label>
										</div>
										<div class="radio">
											<label>
												<input type="radio" name="publicview" id="private" value="false" checked="checked"> Private
											</label>
										</div>
								
								</div>
							</div>
							<br />
							
							<div class="form-group">
								<label class="col-lg-3 control-label">Category<span class="required">*</span></label>
								<div class="col-lg-9">
						          <select data-placeholder="Select categories" name="category" id="category" multiple class="chosen-select">
						          
						          </select>
         
								</div>
							
							</div>
							
							<br /><br />
							
							<div class="form-group">
									<label class="col-lg-3 control-label">Status<span class="required">*</span></label>
									<div class="col-lg-9">
										<div class="radio">
											<label>
												<input type="radio" name="status" id="statusTrue" value="true" checked="checked"> True
											</label>
										</div>
										<div class="radio">
											<label>
												<input type="radio" name="status" id="statusFalse" value="false"> False
											</label>
										</div>
								
								</div>
							</div>
							<br /><br />
						
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" id="btnAddUpdate">Add</button>
						</div><!-- .modal-footer -->
					</div><!-- .modal-content -->
				</div><!-- .modal-doalog -->
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

	<!-- Footer Script -->
	<jsp:include page="shared/_scriptfooter.jsp" />
	<!-- ./Footer Script -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/smoke.min.js"></script>
	
	<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO}}</td>
				<td>{{= videoName}}</td>
				<td>{{= youtubeUrl}}</td>
				<td>{{= postDate}}</td>
				<td>{{= categoryName}}</td>
				<td>{{= viewCounts}}</td>
				<td>{{if status == true}} <i id="{{= videoId}}" class="fa fa-check icon-circle icon-xs icon-success statusConfirm"></i> {{else}} <i id="{{= videoId}}" class="fa fa-remove icon-circle icon-xs icon-danger statusConfirm" ></i> {{/if}}</td>
				<td> 
   		 			<i id="{{= videoId}}" class="fa fa-pencil icon-circle icon-xs icon-info btnUpdate"></i>
            		<i id="{{= videoId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger deleteConfirm" ></i>
         		</td>
			</tr>
   </script>
   
		<script type="text/javascript">		
		
		var video = {};
		var check = true;
		var gPage = 1; //global current page for pagination
		var isSearch = false;
		
		$(document).ready(function(){
			
			getCategory();
			
			function clearmodal(){
				$("#videoid").val('');
				$("#videoname").val('');
				$("#youtubeurl").val('');
				$("#fileurl").val('');
				$("#description").val('');
				$("#category").val('').trigger("chosen:updated");
			}
			
			
			video.listVideo = function(currentPage, item){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/rest/list/video?item="+ item + "&page=" + currentPage, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
						/* console.log(data); */
				    	
				    	perPage = item;
				    	nextPage = (currentPage-1)*perPage;
				    	$("#totalrecord").text("Total records = " + data.PAGINATION.totalCount);
						if(data.RES_DATA.length>0){
							$("tbody#content").empty();
							for(var i=0;i<data.RES_DATA.length;i++){
								data.RES_DATA[i]["NO"] = (i+1)+nextPage;
							}
							$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
						}else{
							$("tbody#content").html('<tr>No content</tr>');
						}
				    	if(check){
				    		video.setPagination(data.PAGINATION.totalPages,1,item);
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
			
			
			video.searchVideo = function(currentPage, item, videoname){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/rest/search/video/"+ videoname +"?item="+ item + "&page=" + currentPage, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	if(data.STATUS==true){
				    		
				    	
						
					    	perPage = item;
					    	nextPage = (currentPage-1)*perPage;
					    	$("#totalrecord").text("Total records = " + data.PAGINATION.totalCount);
							if(data.RES_DATA.length>0){
								$("tbody#content").empty();
								for(var i=0;i<data.RES_DATA.length;i++){
									data.RES_DATA[i]["NO"] = (i+1)+nextPage;
								}
								$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
							}else{
								$("tbody#content").html('<tr>No content</tr>');
							}
					    	
							if(check){
								video.setPagination(data.PAGINATION.totalPages,1,item);
								check=false;
					    	}
					    		
					    	
					    	KA.destroyProgressBar();
					    	
				    	}else{

				    		KA.destroyProgressBar();
				    		$("tbody#content").html('<tr>No content</tr>');
				    		$("#pagination").html("");
				    		$("#totalrecord").text("Total records = 0");
				    	}
				    	
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			
			
			video.setPagination = function(totalPage, currentPage, item){
   		    	$('#pagination').bootpag({
   			        total: totalPage,
   			        page: currentPage,
   			        maxVisible: 5,
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
   			    	if(isSearch==false) video.listVideo(currentPage, item);
   			    	else video.searchVideo(currentPage,item,$("#search").val());
   			    }); 
    		};
    		
    		
    		$("#search").keyup(function(){
				if($(this).val()==""){
					check = false;
					isSearch = false;
					video.listVideo(1,$("#number-of-item").val());
				}else{
					check = true;
					isSearch = true;
					video.searchVideo(1,$("#number-of-item").val(), $(this).val());
				}
				
		    });
    		
    		
    		//load list video
    		video.listVideo(1,$("#number-of-item").val());
    		
    		//change row of items
    		$("#number-of-item").change(function(){
    			check = true;
    			video.listVideo(1,$("#number-of-item").val());
    		});
    		
    		
    		$("#btnAdd").click(function(){
    			clearmodal();
    			$("#btnAddUpdate").text("Add");
    			$("#frmVideo").modal('show');
    		});
    		
    		$(document).on('click',	".btnUpdate", function() {
    			$("#videoid").val($(this).attr('id'));
    			getVideo($(this).attr('id'));
    			$("#btnAddUpdate").text("Update");
    			$("#frmVideo").modal('show');
    		});
    		
    		$(document).on('click', "#btnAddUpdate", function(){
    			
				frmData = {
						
						"videoName"  : $("#videoname").val(),
    					"youtubeUrl" : $("#youtubeurl").val(),
    					"fileUrl"	 : $("#fileurl").val(),
    					"publicView" : $("input[name=publicview]:checked").val(),
    					"status"	 : $("input[name=status]:checked").val(),
    					"description": $("#description").val(),
    					"categoryId" : $("#category").val(),
    					"videoId"	 : $("#videoid").val()
				};
				
    			if($("#btnAddUpdate").text()=="Add" && $("#videoid").val()==''){
    				
    				$.ajax({ 
    				    url : "${pageContext.request.contextPath}/admin/rest/insert/video", 
    				    type: "POST",
    				    data: JSON.stringify(frmData),
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) { 
    				    	$("#frmVideo").modal('hide');
    				    	if(data.STATUS==true){
    							video.listVideo(1,$("#number-of-item").val());
        						smoke.alert("Success!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}else{
    							smoke.alert("Error Occured!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}
    				    	
    				    },
    				    error:function(data,status,er) {
    				    	$("#frmVideo").modal('hide');
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    				
    			}else{
    				
    				$.ajax({ 
    				    url : "${pageContext.request.contextPath}/admin/rest/update/video", 
    				    type: "POST",
    				    data: JSON.stringify(frmData),
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) { 
    				    	$("#frmVideo").modal('hide');
    				    	if(data.STATUS==true){
    							video.listVideo(1,$("#number-of-item").val());
        						smoke.alert("Success!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}else{
    							smoke.alert("Error Occured!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}
    				    	
    				    },
    				    error:function(data,status,er) {
    				    	$("#frmVideo").modal('hide');
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    				
    			} 
    			
    			
    		});
    		
    		//toggle video
    		$(document).on('click',	".statusConfirm", function() {
    			var vid = $(this).attr("id");
    			smoke.confirm("Are you sure?", function(e){
    				if (e){
    					$.post("${pageContext.request.contextPath}/admin/rest/toggle/video?vid=" + vid, function(data){
    						video.listVideo(gPage,$("#number-of-item").val());
    						smoke.alert("Success!", function(e){
    							
    						}, {
    							ok: "OK"
    							/* ,cancel: "Nope",
    							classname: "custom-class" */
    						});
    	    			});
    				}else{
						
    				}
    			}, {
    				ok: "Yes",
    				cancel: "Cancel"
    				/* ,classname: "statusConfirm",
    				reverseButtons: true */ 
    			});
			});
    		
    		function getVideo(vid){
    			$.get("${pageContext.request.contextPath}/admin/rest/getvideo?vid=" + vid,function(data){
    				if(data.STATUS==true){
    					$("#videoname").val(data.RES_DATA.videoName);
    					$("#youtubeurl").val(data.RES_DATA.youtubeUrl);
    					$("#fileurl").val(data.RES_DATA.fileUrl);
    					$("#description").val(data.RES_DATA.description);
    					//$("#videoid").val(data.RES_DATA.videoId);
    					if(data.RES_DATA.publicView==true){
    						$("#public").prop('checked', true);
    					}else{
    						$("#private").prop('checked', true);
    					}
    					if(data.RES_DATA.status==true){
    						$("#statusTrue").prop('checked', true);
    					}else{
    						$("#statusFalse").prop('checked', true);
    					}
    					for(var i=0;i<data.RES_DATA.categoryId.length;i++){
    						$("#category").val(data.RES_DATA.categoryId[i]).trigger("chosen:updated");
    					}
    				}
    				
    			});
    		}
    		
    		
    		//delete video
    		$(document).on('click',	".deleteConfirm", function() {
    			var vid = $(this).attr("id");
    			smoke.confirm("Are you sure?", function(e){
    				if (e){
    					$.post("${pageContext.request.contextPath}/admin/rest/delete/video?vid=" + vid, function(data){
    						if(data.STATUS==true){
    							video.listVideo(gPage,$("#number-of-item").val());
        						smoke.alert("Success!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}else{
								smoke.alert("Error Occured!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}
    						
    	    			});
    				}else{
						
    				}
    			}, {
    				ok: "Yes",
    				cancel: "Cancel" 
    			});
			});
    		
    		function getCategory(){
    			$.get("${pageContext.request.contextPath}/admin/rest/list/category",function(data){
    				var str="";
    				for(var i=0;i<data.RES_DATA.length;i++){
    					str += '<option value="'+ data.RES_DATA[i].categoryId +'">' + data.RES_DATA[i].categoryName + '</option>'
    				}
    				$("#category").html(str);
    				$(".chosen-select").chosen();
    			});
    		}
    		
		});
		</script>

</body>


</html>