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

			   <h2 class="page-heading">Course Title : <span id="textPlaylistName">PlayList</span></h2>
			   <h5 class="page-heading">Main Category: <span id="textMainCategory">Main Cateogry</span></h5>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button type="button" class="btn btn-success" id="showFrmAddCourse" >
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>
												 
						<div class="btn-group pull-right">
							<form role="form" action="#" id="frmSearch">
								<input type="text" id="search" class="form-control"
									placeholder="Search by title video">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>ID</th>
									<th>Title</th>
									<th>YouTube URL</th>
									<td>File URL</td>
									<th>Description</th>
									<th>Post Date</th>
									<th>Viewed Count</th>
									<th>Commented Count</th>
									<th>By</th>
									<th>Status</th>
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
				<jsp:include page="shared/_adminfooter.jsp" />
				<!-- END FOOTER -->
				


		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->


	<div id="p-frmCourse" class="ka-popup" style="display: none;width: 80%;">
			<form  id="frmCourse" action="${pageContext.request.contextPath}/admin/course" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">Courses</h4>
					</div>
					<div class="modal-body" >
							<div class="row">
									<input type="hidden"  id="playlistId" class="form-control"  name="mainCategoryID">
										
									<div class="col-sm-6">
										<div class="the-box bg-default no-border">
												 
												  <div id="message"></div>
												  
												  <div class="form-group">
													<label>Playlist name</label>
													<input type="text" id="playlistName" class="form-control"  required="required" name="playlistName">
												  </div>
												  <div class="form-group">
													<label>Description</label>
													<textarea id="description" class="form-control"  required="required" name="description"></textarea>
												  </div>
												  
												  <div class="form-group">
														<label for="exampleInputEmail1">Main categories</label>
														<select class="form-control f-mainCategories"  id="f-mainCategory" name="f-mainCategory" required="required" > 
														
														</select>
												 </div>
												 
												  <div class="form-group">
														<label for="exampleInputEmail1">Status</label>
														<select class="form-control" id="status" name="status" required="required" > 
																<option value="true">True (Public)</option>
																<option value="false">False (Private)</option>
														</select>
												 </div>
												  
											  <div class="form-group">	
											 	<label for="exampleInputEmail1">Image for web 210 x 120</label>
												<div >
													<img id="thumnail" src="${pageContext.request.contextPath}/resources/assets/img/default-image/default-playlist.jpg " class="img-responsive"/>
												</div>
												<span class="btn btn-default btn-file">
													<span class="fileinput-new">Select image</span>
													<input type="file" name="fileThumbnail" id="fileThumbnail">
												</span>
											</div>
											
											
											
										</div><!-- /.the-box .bg-danger .no-border-->
									</div>
									
									<div class="col-sm-6">
										<div class="the-box bg-default no-border">
											 
											
											
											
											
											 <div class="form-group">	
												<div>
													<label for="exampleInputEmail1">Mobile background image 800 x 480</label>
													<div>
														<img  id="bgImage" src="${pageContext.request.contextPath}/resources/assets/img/default-image/default-bg-playlist.jpg" class="img-responsive"/>
													</div>
													<span class="btn btn-default btn-file">
														<span class="fileinput-new">Select image</span>
														<input type="file" name="fileBgImage" id="fileBgImage">
													</span>
												</div>
											</div>
											
											<div class="form-group">
												<label for="exampleInputEmail1">Mobile background color</label>
												<input type="text" class="form-control jscolor" name="color" id="color" placeholder="choose color" autocomplete="off" style="color: rgb(0, 0, 0); background-image: none; background-color: rgb(255, 255, 255);">
												<small class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
											</div>
											
											<div class="form-group">
												<button type="submit" id="btSubmit" class="btn btn-primary btn-lg" style="width:100px">Save</button>
											</div>
										</div>
									</div>
								
							</div>		
					</div>
					
					
					 
					
					<div class="modal-footer">
<!-- 							<button type="submit" id="btSubmit" class="btn btn-primary btn-lg" style="width:100px">Save</button> -->
					</div>
				</div>
			</form>	
		</div>



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
		
			  <script src="${pageContext.request.contextPath}/resources/assets/js/jscolor.js"></script>
			  <script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>
		
	
	<script id="content_tmpl" type="text/x-jquery-tmpl">	
	    	<tr>
				<td>{{= videoId }}</td>
				<td>{{= videoName }}</td>
				<td>{{= youtubeUrl }}</td>
				<td>{{= fileUrl }}</td>
				<td>{{= videoDescription }}</td>
				<td>{{= postDate }}</td>
				<td>{{= viewCount }}</td>
				<td>{{= countComment }}</td>
				<td>{{= username }}</td>
				<td>{{if videoStatus == true}}
						<i id="updateStatus" data-value="false" style="cursor: pointer;" title="Click to hide this course!" data-id="{{= playlistId}}" class="fa fa-check icon-circle icon-xs icon-success"></i> 
					{{else}} 
						<i id="updateStatus" data-value="true" style="cursor: pointer;"  title="Click to public this course!" data-id="{{= playlistId}}" class="fa fa-remove icon-circle icon-xs icon-danger" ></i> 
					{{/if}}
				</td>	
				<td> 
					<i style="cursor: pointer;" title="Update" data-id="{{= playlistId }}" class="fa fa-pencil icon-circle icon-xs icon-info" data-toggle="modal" id="showFrmUpdateCourse"></i>
					<i style="cursor: pointer;" title="Update" data-id="{{= playlistId }}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmUpdateCourse"></i>
         		</td>
				
			</tr>
   	</script>
   	
   	
   	<script type="text/javascript">
   	
   	
   	var course = {};
   	var check = true;
   	var getCurrentPage = 1;
   	
   	$(document).ready(function(){
   		
   		course.videos = function(currentPage,videoTitle){
   			$.ajax({ 
			    url:"${pageContext.request.contextPath}/admin/course/listvideos/Mzc4?page="+currentPage+"&item=10", 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {  console.log(data);
			    	if(data.STATUS != false){
				    		$("#totalrecord").text(data.PAGINATION.totalCount+ " Videos");
							$("tbody#content").empty();
							$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
							if(check){
								course.setPagination(data.PAGINATION.totalPages,currentPage);
					    		check=false;
					    	}
			    	}else{
			    		$("#totalrecord").text(0 + " Course");
			    		$("tbody#content").html('<div class="alert alert-danger alert-bold-border square fade in alert-dismissable">'+
								  '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
								  '<strong>No video!</strong>'+
								'</div>');
			    	}
			    }
   			});
   		};
   		
   		course.setPagination = function(totalPage, currentPage){
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
			    	course.videos(currentPage,$("#search").val());
			    }); 
		}; 
		
   		
		
   		$(document).on('click',"#showFrmUpdateCourse" , function(){
			$("#p-frmCourse").bPopup();//{modalClose: false});
			$("#frmCourse").attr("method", "PUT");
			$("#frmCourse").trigger("reset");
			$("#btSubmit").text("Update");
			course.getCourse($(this).data("id"));
		});
   	
   		$(document).on('click',"#showFrmAddCourse" , function(){
			$("#p-frmCourse").bPopup();//{modalClose: false});
			$("#frmCourse").attr("method", "POST");
			$("#frmCourse").trigger("reset");
			$("#btSubmit").text("Add");
		});
   	
   		
   		course.getCourse = function(courseId){
   			$.ajax({ 
			    url:"${pageContext.request.contextPath}/admin/course/"+courseId, 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {  console.log(data);
			       $("#playlistId").val(data.RES_DATA.playlistId);
			       $("#playlistName").val(data.RES_DATA.playlistName);
			       $("#description").val(data.RES_DATA.description);
			       $("#thumnail").attr("src" , data.RES_DATA.thumbnailUrl);
			       $("#bgImage").attr("src" , data.RES_DATA.bgImage);
			       $("#f-mainCategory").val(data.RES_DATA.maincategory);
			       $("#status").val(""+data.RES_DATA.status);
			       $("#color").val( data.RES_DATA.color);
			       bgImage = data.RES_DATA.bgImage;
			       thumbnailUrl = data.RES_DATA.thumbnailUrl;
			    }
   			});
   		};
   		
   		course.updateCourse = function(){ 
			frmData = {
					"playlistId"   	: $("#playlistId").val(),
					"playlistName" 	: $("#playlistName").val(),
					"description" 	: $("#description").val(),
					"thumbnailUrl" 	: thumbnailUrl,
					"bgImage" 		: bgImage,
					"maincategory" 	: $("#f-mainCategory").val(),
					"status" 		: $("#status").val(),
					"color" 		: $("#color").val()
			};
			console.log(frmData); 
			KA.createProgressBarWithPopup();
			$.ajax({ 
			    url:  $("#frmCourse").attr("action"), 
			    type: $("#frmCourse").attr("method"),
			    data: JSON.stringify(frmData),
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) { 
					console.log(data);
			    	KA.destroyProgressBarWithPopup();
			    	course.courses($("#mainCategory").val(),getCurrentPage,$("#search").val());
					course.mainCategories();
			    	$("#p-frmCourse").bPopup().close();
			    },
			    error:function(data,status,er) { 
			    	KA.destroyProgressBarWithPopup();
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			});
		};
		
		
		
	
		
		
		
		
		 
		 
		
		$("#frmCourse").submit(function(e){
			 e.preventDefault();
			 check = true;
			 course.updateCourse();
		});
		
		$("#frmSearch").submit(function(e){
			e.preventDefault();
			check = true;
			course.courses('empty',1,$("#search").val());
		});
		
		$(document).on('click',"#updateStatus" , function(){
			
			var courseId = $(this).data("id");
			var value = $(this).data("value");
			var message = "You have changed this course to private.";	
			var warning = "Are you sure you want to change this course to private?";
			if(value== true){
				message = "You have changed this course to public.";	
				warning = "Are you sure you want to change this course to public?";
			}
			swal({   
				title: "Are you sure?",   
				text: warning,   
				type: "warning",   
				showCancelButton: true,   
				confirmButtonColor: "#DD6B55",   
				confirmButtonText: "Yes, delete it!",   
				closeOnConfirm: false }, function(){ 
					
					$.ajax({ 
					    url:"${pageContext.request.contextPath}/admin/course/status/"+courseId+"/"+value, 
					    type: "PUT",
					    beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
					    success: function(data) { 
					    	if(data.STATUS == true){
					    		check = true;
								course.courses($("#mainCategory").val(),getCurrentPage,$("#search").val());
								swal("Updated course status!", message , "success"); 
				    	   	}
					    },
					    error:function(data,status,er) { 
					    	KA.destroyProgressBarWithPopup();
					        console.log("error: "+data+" status: "+status+" er:"+er);
					    }
					}); 
				});
			
			
		});
		
   		course.videos(1,"");
		
   	});
   	</script>
   
		
		
	

</body>
</html>
