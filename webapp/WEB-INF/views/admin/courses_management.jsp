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

			   <h1 class="page-heading">PlayList</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button type="button" class="btn btn-success" id="showFrmAddCourse" >
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>
						<!-- <div class="btn-group" >
							<form role="form">
								<select id="limitplaylist" onclick="choosePlaylist();" class="form-control">
									<option value="10">10</option>
									<option value="20" selected="selected">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
									<option value="100">100</option>
								</select>
							</form>
						</div> -->
						
						<div class="form-group btn-group">
								<select class="form-control mainCategories" id="mainCategory" name="mainCategory" required="required" > 
													
								</select>
						</div>
												 
												 
						<div class="btn-group pull-right">
							<form role="form" action="#" id="frmSearch">
								<input type="text" id="search" class="form-control"
									placeholder="Search University">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No</th>
									<th>Update</th>
									<th>Thumbnail</th>
									<th>Course</th>
									<th>Description</th>
									<th>Category</th>	
									<th>Videos</th>
									<th>By</th>
									<th>Status</th>												
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
											 	<label for="exampleInputEmail1">Image for web 123 x 70</label>
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
				<td>{{= playlistId }}</td>
				<td> 
					<i style="cursor: pointer;" title="Update" data-id="{{= playlistId }}" class="fa fa-pencil icon-circle icon-xs icon-info" data-toggle="modal" id="showFrmUpdateCourse"></i>
         		</td>
				<td><img     width="70px" src="{{= thumbnailUrl}}" class="img-responsive"/></td>
				<td>{{= playlistName}}</td>
				<td>{{= description}}</td>
				<td>{{= maincategoryname}}</td>
				<td><a href="${pageContext.request.contextPath}/admin/course/getvideos/{{= playlistId }}"><i class="fa fa-bars icon-circle icon-xs icon-primary btnUpdate"></i>{{= countVideos}} </a> </td>
				<td>{{= username}}</td>
				<td>{{if status == true}}
						<i id="updateStatus" data-value="false" style="cursor: pointer;" title="Click to hide this course!" data-id="{{= playlistId}}" class="fa fa-check icon-circle icon-xs icon-success"></i> 
					{{else}} 
						<i id="updateStatus" data-value="true" style="cursor: pointer;"  title="Click to public this course!" data-id="{{= playlistId}}" class="fa fa-remove icon-circle icon-xs icon-danger" ></i> 
					{{/if}}
				</td>
			</tr>
   	</script>
   	
   	<script id="mainCategories_tmpl" type="text/x-jquery-tmpl">
			<option value="{{=  mainCategoryId }}"> {{= mainCategoryName }} </option>
   	</script>
   	
   	<script type="text/javascript">
   	var course = {};
   	var check = true;
   	var bgImage = "default-bgimage.jpg";
   	var thumbnailUrl = "default-playlist.jpg";
   	var getCurrentPage = 1;
   	
   	$(document).ready(function(){
   		
   		course.courses = function(mainCategoryId,currentPage,playlistName){
   			$.ajax({ 
			    url:"${pageContext.request.contextPath}/admin/courses/"+mainCategoryId+"?page="+currentPage+"&item=10&playlistName="+playlistName, 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {  console.log(data);
			    	if(data.STATUS != false){
				    		$("#totalrecord").text(data.PAGINATION.totalCount+ " Courses");
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
								  '<strong>No course</strong>'+
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
			    	course.courses($("#mainCategory").val(),currentPage,$("#search").val());
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
   	
   		course.mainCategories = function(){
   			$.ajax({ 
			    url:"${pageContext.request.contextPath}/admin/courses/maincategories", 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {  console.log(data);
					$(".mainCategories").empty();
					$(".mainCategories").append("<option value='empty'>Main category</option>");
					$("#mainCategories_tmpl").tmpl(data.RES_DATA).appendTo(".mainCategories");
					
					$(".f-mainCategories").empty();
					$("#mainCategories_tmpl").tmpl(data.RES_DATA).appendTo(".f-mainCategories");
					
			    }
   			});
   		};
   	
   		course.getCourse = function(courseId){
   			KA.createProgressBarWithPopup();
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
			       KA.destroyProgressBarWithPopup();
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
		
		course.uploadThumbnailUrl = function(){
			var formData = new FormData();
	     	formData.append('file',  $("#fileThumbnail")[0].files[0]);
	     	console.log(formData);
		     	$.ajax({
	  	            url: "${WS}uploadfile/upload?url=playlist/thumbnail",
	  	            type: "POST",
	  	         	enctype : 'multipart/form-data',
					data : formData ,
					processData : false, // tell jQuery not to process the data
					contentType : false, // tell jQuery not to set contentType
		  	        beforeSend: function(xhr) {
					   xhr.setRequestHeader("Authorization", "Basic ${KEY}");
		  	        },
	  	            success: function(data) {
	  	            	console.log(data); 
	  	            	thumbnailUrl = data.IMG;
	  	            },
	  	         	error: function(data){
	  	         		console.log(data);
	  				}
	  	        });
			
		};
		
		course.uploadBgImage = function(){
			var formData = new FormData();
	     	formData.append('file',  $("#fileBgImage")[0].files[0]);
	     	console.log(formData);
		     	$.ajax({
	  	            url: "${WS}uploadfile/upload?url=playlist/bgimage",
	  	            type: "POST",
	  	         	enctype : 'multipart/form-data',
					data : formData ,
					processData : false, // tell jQuery not to process the data
					contentType : false, // tell jQuery not to set contentType
		  	        beforeSend: function(xhr) {
					   xhr.setRequestHeader("Authorization", "Basic ${KEY}");
		  	        },
	  	            success: function(data) {
	  	            	console.log(data); 
	  	            	bgImage = data.IMG;
	  	            },
	  	         	error: function(data){
	  	         		console.log(data);
	  				}
	  	        });
			
		};
		
		course.updateThumbnailUrl = function(){
			var formData = new FormData();
	     	formData.append('file',  $("#fileThumbnail")[0].files[0]);
	     	console.log(formData);
		     	$.ajax({
	  	            url: "${WS}uploadfile/update?url=playlist/thumbnail&filename="+thumbnailUrl.split("/").pop(),
	  	            type: "POST",
	  	         	enctype : 'multipart/form-data',
					data : formData ,
					processData : false, // tell jQuery not to process the data
					contentType : false, // tell jQuery not to set contentType
		  	        beforeSend: function(xhr) {
					   xhr.setRequestHeader("Authorization", "Basic ${KEY}");
		  	        },
	  	            success: function(data) {
	  	            	console.log(data); 
	  	            	thumbnailUrl = data.IMG;
	  	            },
	  	         	error: function(data){
	  	         		console.log(data);
	  				}
	  	        });
			
		};
		
		course.updateBgImage = function(){
			var formData = new FormData();
	     	formData.append('file',  $("#fileBgImage")[0].files[0]);
	     	console.log(formData);
		     	$.ajax({
	  	            url: "${WS}uploadfile/update?url=playlist/bgimage&filename="+bgImage.split("/").pop(),
	  	            type: "POST",
	  	         	enctype : 'multipart/form-data',
					data : formData ,
					processData : false, // tell jQuery not to process the data
					contentType : false, // tell jQuery not to set contentType
		  	        beforeSend: function(xhr) {
					   xhr.setRequestHeader("Authorization", "Basic ${KEY}");
		  	        },
	  	            success: function(data) {
	  	            	console.log(data); 
	  	            	bgImage = data.IMG;
	  	            },
	  	         	error: function(data){
	  	         		console.log(data);
	  				}
	  	        });
			
		};
		
		
		 $('#fileThumbnail').change(
					function(event) {
						$("#thumnail").fadeIn("fast").attr('src',
								URL.createObjectURL(event.target.files[0]));
						course.uploadThumbnailUrl();
		});
	        
	    $('#fileBgImage').change(
					function(event) {
						$("#bgImage").fadeIn("fast").attr('src',
								URL.createObjectURL(event.target.files[0]));
						course.uploadBgImage();
		});
		 
		 
		
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
		
		$("#mainCategory").change(function(){
			check = true;
			course.courses($("#mainCategory").val(),1,$("#search").val());
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
		
   		course.courses('empty',1,"");
		course.mainCategories();
		
   	});
   	</script>
   
		
		
	<script type="text/javascript">
	var sone = 0;	
    function ValidateFileUpload() {
    	
   	 	if( document.getElementById("fileBgImage").files.length == 0 ){
			return;
		} 
	
        var fuData = document.getElementById('fileBgImage');
        var FileUploadPath = fuData.value;
        
        var imageSize = fuData.files[0].size;
        var maxSize = 1024 * 1024 * 2 ;  // size 2 MB
        if(imageSize> maxSize){
        	alert("Please upload the image less than 2MB.1");
        	$("#fileBgImage").val('');
//         	$('#photoimage1').replaceWith($('<input type="file" id="photoimage1" name="..." onchange="return ValidateFileUpload()">'));
        }else{
      //  alert("This is file size of image you have to controller ....."+imageSize);
        //To check if user upload any file
        if (FileUploadPath == '') {
            alert("Please upload the image less than 2MB.2");
            $("#fileBgImage").val('');
//             $('#photoimage1').replaceWith($('<input type="file" id="photoimage1" name="..." onchange="return ValidateFileUpload()">'));
        } else {
            var Extension = FileUploadPath.substring(FileUploadPath.lastIndexOf('.') + 1).toLowerCase();
			//The file uploaded is an image
			if ( Extension == "png" || Extension == "gif" || Extension == "jpeg" || Extension == "jpg") {				    
				
				if (fuData.files && fuData.files[0]) {
                    var reader = new FileReader();
                      reader.onload = function(e) {
                         $('#bgImage').attr('src', e.target.result);
                         console.log("OK");
                    };
                    reader.readAsDataURL(fuData.files[0]);
                }

            } 

	//The file upload is NOT an image
	else {
	                alert("Please upload the image less than 2MB. 3");
	                $("#fileBgImage").val('');
// 	                $('#photoimage1').replaceWith($('<input type="file" id="photoimage1" name="..." onchange="return ValidateFileUpload()">'));
	            }
	        }
	    }
    }
	</script> 	

</body>
</html>
