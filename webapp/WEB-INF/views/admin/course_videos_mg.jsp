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
							<button type="button" class="btn btn-success" id="showFrmScrapVideo" >
								<i class="fa fa-plus-square"></i> Scrap Videos from youtulbe
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


	<div id="p-frmScrapVideo" class="ka-popup" style="display: none;width: 80%;">
			<form  id="frmCourse" action="${pageContext.request.contextPath}/admin/course" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title" >Scrap Videos From youtube</h4>
					</div>
					<div class="modal-body" >
							<div class="row">
								
									<input type="hidden"  id="playlistId" class="form-control"  name="mainCategoryID">
									
									<div class="col-sm-12">
											<div class="form-group">
												<label class="col-lg-2 control-label" style="text-align: right">Youtube Playlist URL : </label>
												<div class="col-lg-7">
													<input type="text" id="youtubeUrl" class="form-control" required="required" name="youtubeUrl">
												</div>
												<div class="col-lg-2">
													<input type="button" id="btnScrap" class="form-control btn btn-success" name=""btnScrap"" value="Scrap">
												</div>
											</div>
									</div>
									
									<div class="col-sm-12">
									
										<div class="row" style="margin:20px;display:none" id="playVideo">
										
											<iframe width="560" height="315" src="#" frameborder="0" allowfullscreen id="iframeSrc"></iframe>
										
										
										</div>
									
										<div class="the-box bg-default no-border">
											
											<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>ID</th>
									<th>Thumbnail</th>
									<th>Title</th>
									<th>YouTube Video ID</th>
									<th>Category</th>
									<th>File Url</th>
									<th>Description</th>
									<th>Duration</th>
									<th>Action</th>											
								</tr>
							</thead>
							<tbody id="contentYoutubeVideos">
								
							</tbody>
						</table>
						<br>
						
						<p id="totalYoutubeVideo" style="color:rgb(78, 156, 80);">19 Videos</p>
						
												
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
		
	
	<script id="contentYoutubeVideos_tmpl" type="text/x-jquery-tmpl">	
	    	<tr>
				<td>{{= no }}</td>
				<td><img src="//i.ytimg.com/vi_webp/{{= videoId }}/default.webp" alt="" width="72"></td>
				<td>{{= title }}</td>
				<td>{{= videoId }}</td>
				<td>Select</td>
				<td>Input</td>
				<td>Input</td>
				<td>{{= duration }}</td>
				<td id="btnPlay" data-id="{{= videoId }}">Play</td>
			</tr>
   	</script>
   	
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
			    url:"${pageContext.request.contextPath}/admin/course/listvideos/${playlistid}?page="+currentPage+"&item=10", 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {  console.log(data);
			    	if(data.STATUS != false){
			    			$("#textPlaylistName").text(data.RES_DATA[0].playlistName);
			    			$("#textMainCategory").text(data.RES_DATA[0].mainCategoryName);
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
		
   		
		
   	
   		$(document).on('click',"#showFrmScrapVideo" , function(){
			$("#p-frmScrapVideo").bPopup();//{modalClose: false});
			$("#frmCourse").attr("method", "POST");
			$("#frmCourse").trigger("reset");
			$("#btSubmit").text("Add");
		});
   	
   		course.scrapVideos = function(data){
   			$.ajax({ 
			    url:"${pageContext.request.contextPath}/admin/scracp/youtube_videos", 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
                data : {"url":data},
			    success: function(data) {  console.log(data);
			    	if(data.STATUS != false){
							$("tbody#contentYoutubeVideos").empty();
							$("#contentYoutubeVideos_tmpl").tmpl(data.YOUTUBE_VIDEOS).appendTo("tbody#contentYoutubeVideos");
							$("#totalYoutubeVideo").text(data.YOUTUBE_VIDEOS.length+ " Videos");
			    	}else{
			    		$("#totalrecord").text(0 + " Course");
			    		$("tbody#contentYoutubeVideos").html('<div class="alert alert-danger alert-bold-border square fade in alert-dismissable">'+
								  '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
								  '<strong>No video!</strong>'+
								'</div>');
			    	} 
			    }
   			});
   		};	
   	
		
   		$("#btnScrap").click(function(){
   			course.scrapVideos($("#youtubeUrl").val());
   		});
   		
   		course.videos(1,"");
   		
   		$(document).on('click',"#btnPlay" , function(){
   			$("#playVideo").show();
   			$("#iframeSrc").attr("src","https://www.youtube.com/embed/"+$(this).data("id"));
   			
   		});
   		
   		
   		
		
   	});
   	</script>
   
		
		
	

</body>
</html>
