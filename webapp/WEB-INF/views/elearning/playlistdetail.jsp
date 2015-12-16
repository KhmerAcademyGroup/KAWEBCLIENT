<%@page import="model.dto.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<%
		int playlistid = Integer.parseInt(request.getParameter("playlistid"));
	%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description"
	content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
<meta name="keywords"
	content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
<meta name="author" content="Khmer Academy">
<title>Playlist Detail | Khmer Academy</title>

<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<!-- PLUGINS CSS -->
<link href="assets/plugins/weather-icon/css/weather-icons.min.css"
	rel="stylesheet">
<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet">
<link href="assets/plugins/magnific-popup/magnific-popup.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.theme.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.transitions.min.css"
	rel="stylesheet">
<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet">
<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet">
<link href="assets/plugins/datepicker/datepicker.min.css"
	rel="stylesheet">
<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link href="assets/plugins/validator/bootstrapValidator.min.css"
	rel="stylesheet">
<link href="assets/plugins/summernote/summernote.min.css"
	rel="stylesheet">
<link href="assets/plugins/markdown/bootstrap-markdown.min.css"
	rel="stylesheet">
<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css"
	rel="stylesheet">
<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
<link href="assets/plugins/slider/slider.min.css" rel="stylesheet">

<!-- MAIN CSS (REQUIRED ALL PAGE)-->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

<!--  CSS (REQUIRED ALL PAGE)-->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

<style>

@media ( max-width : 767px) {
	.media {
		overflow: visible;
	}
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
		<jsp:include page="_header.jsp"></jsp:include>
		<!-- END TOP NAV -->



		<!-- BEGIN SIDEBAR LEFT -->
		<jsp:include page="_sidebar.jsp"></jsp:include> 
		<!-- END SIDEBAR LEFT -->



		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">

			<div class="container-fluid">
				<!-- Begin page heading -->
				<h1 class="page-heading">
<!-- 					Playlist Detail<small></small> -->
				</h1>
				<!-- End page heading -->



				<div class="the-box no-border">


					<div id="firtvideo"></div>

				</div>


				<div id="getList">
				
				<div class="alert alert-default" style="text-align:center;background:white">
						<img height="250px" src="assets/img/circle-loading-animation.gif">
				</div>
				
				
				</div>

				
				
					
				

				
				

			</div>



			<!-- BEGIN FOOTER -->
			<jsp:include page="_footer.jsp"></jsp:include>
			<!-- END FOOTER -->


		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->
						
					 							

										<div class="modal fade" id="frmadd" tabindex="-1" role="dialog" aria-labelledby="DefaultModalLabel" aria-hidden="true">
										  <div class="modal-dialog modal-lg">
											<div class="modal-content">
											  <div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true"  onclick="closeFrmPopAdd()">&times;</button>
												<h4 class="modal-title" id="DefaultModalLabel">Add video to playlist</h4>
											  </div>
											  <div class="modal-body">
												<div class="panel with-nav-tabs panel-default panel-square panel-no-border">
													  <div class="panel-heading">
														<ul class="nav nav-tabs">
															<li class="active"><a href="#videosearch-panel" data-toggle="tab">Video Search</a></li>
															<li class=""><a href="#your-video-panel" data-toggle="tab">Your video</a></li>
														</ul>
													  </div>
														<div id="panel-collapse-1" class="collapse in">
															<div class="panel-body">
																<div class="tab-content">
																	
																	<div class="tab-pane fade in active" id="videosearch-panel">
																			
																			<div class='btn-toolbar top-table' role='toolbar'>
																					<div class='btn-group'>
																						<input type='text' id='searchVideos' class='form-control' placeholder='Search by Video title'>
																					</div>
																			 </div>
								 
																			<div id="getVideoSearch">
																			
																			</div>
																			
																	</div>
																	
																	<div class="tab-pane fade" id="your-video-panel">
																			
																			<div class='btn-toolbar top-table' role='toolbar'>
																					<div class='btn-group'>
																						<input type='text' id='searchYourVideo'  class='form-control' placeholder='Search by Video title'>
																					</div>
																			 </div>
								 
																			<div id="getYourVideo">
																			
																			</div>
																			
																			
																			
																		
																			
																	</div>
																		
																	
																</div><!-- /.tab-content -->
															</div><!-- /.panel-body -->
														</div><!-- /.collapse in -->
													</div>		
											  </div>
											  <div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal"  onclick="closeFrmPopAdd()">Close</button>
											  </div><!-- /.modal-footer -->
											</div><!-- /.modal-content -->
										  </div><!-- /.modal-doalog -->
										</div><!-- /#DefaultModal -->



												
													
					 							
					 							
					 						<div class="modal fade" id="frmup_date_playlist" tabindex="-1" role="dialog" aria-labelledby="DefaultModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
											<div class="modal-content" style="border-radius: 5px;">
											  <div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="DefaultModalLabel">Update playlist</h4>
											  </div>
											  <div class="modal-body">
												
													<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist" >
														 <div class="form-group">
															<label for="exampleInputEmail1">Playlist name</label>
															<input type="text" class="form-control" name="playlistname" id="updatename" placeholder="EG. MyTop">
															<input type="hidden" class="form-control" name="playlistid"  id="updateid" placeholder="EG. MyTop">
															<input type="hidden" class="form-control" name="thumbnail"  id="thumbnail" placeholder="EG. MyTop">
															<small  class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
														  </div>
														  <div class="form-group">
															<label for="exampleInputPassword1">Description</label>
															<input type="text" name="description" class="form-control" id="updatedescription" placeholder="EG. My music">
														 </div>
														 <div class="form-group">
															<label>Set View</label>
															<select class="form-control" id="updatepublicview" name="updatepublicview" tabindex="2">
																<option value="false">Private</option>
																<option value="true">Public</option>
															</select>
														</div>
														 	<button type="button" id="btclosefrmupdate" class="btn btn-default" data-dismiss="modal">Close</button>
														 	 <input type="submit" id="btnupdateplaylist"   class="btn btn-success" value="Update">
													</form> 
													
											  </div>
											  <div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
											  </div><!-- /.modal-footer -->
											</div><!-- /.modal-content -->
										  </div><!-- /.modal-doalog -->
										</div><!-- /#DefaultModal -->	
					 							
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
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/plugins/retina/retina.min.js"></script>
	<script src="assets/plugins/nicescroll/jquery.nicescroll.js"></script>
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>

	<!-- PLUGINS -->
	<script src="assets/plugins/skycons/skycons.js"></script>
	<script src="assets/plugins/prettify/prettify.js"></script>
	<script
		src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="assets/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script src="assets/plugins/chosen/chosen.jquery.min.js"></script>
	<script src="assets/plugins/icheck/icheck.min.js"></script>
	<script src="assets/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script src="assets/plugins/timepicker/bootstrap-timepicker.js"></script>
	<script src="assets/plugins/mask/jquery.mask.min.js"></script>
	<script src="assets/plugins/validator/bootstrapValidator.min.js"></script>
	<script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatable/js/bootstrap.datatable.js"></script>
	<script src="assets/plugins/summernote/summernote.min.js"></script>
	<script src="assets/plugins/markdown/markdown.js"></script>
	<script src="assets/plugins/markdown/to-markdown.js"></script>
	<script src="assets/plugins/markdown/bootstrap-markdown.js"></script>
	<script src="assets/plugins/slider/bootstrap-slider.js"></script>

	<!-- EASY PIE CHART JS -->
	<script src="assets/plugins/easypie-chart/easypiechart.min.js"></script>
	<script src="assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>

	<!-- KNOB JS -->
	<!--[if IE]>
		<script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
	<script src="assets/plugins/jquery-knob/jquery.knob.js"></script>
	<script src="assets/plugins/jquery-knob/knob.js"></script>

	<!-- FLOT CHART JS -->
	<script src="assets/plugins/flot-chart/jquery.flot.js"></script>
	<script src="assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
	<script src="assets/plugins/flot-chart/jquery.flot.resize.js"></script>
	<script src="assets/plugins/flot-chart/jquery.flot.selection.js"></script>
	<script src="assets/plugins/flot-chart/jquery.flot.stack.js"></script>
	<script src="assets/plugins/flot-chart/jquery.flot.time.js"></script>

	<!-- MORRIS JS -->
	<script src="assets/plugins/morris-chart/raphael.min.js"></script>
	<script src="assets/plugins/morris-chart/morris.min.js"></script>

	<!-- C3 JS -->
	<script src="assets/plugins/c3-chart/d3.v3.min.js" charset="utf-8"></script>
	<script src="assets/plugins/c3-chart/c3.min.js"></script>

	<!-- MAIN APPS JS -->
	<script src="assets/js/apps.js"></script>
		<script src="assets/js/script/playlistdetail.js"></script>
	<script type="text/javascript">

		<%
			int uservisitid = 0;
			User usr = (User) session.getAttribute("ka_user");
			if(usr != null){
				uservisitid = usr.getUserid();
			}
		%>

		var uservisitid = "<%= uservisitid %>";
		var playlistid = "<%= playlistid %>";
		$(document).ready(function() {
			
			
			$.post("listvideoinplaylist.act", {
				playlistid : playlistid
			}, function(data) {
				$("#firtvideo").html(getPlaylist(data , uservisitid));
				$("#getList").html(listvideofromplaylist(data));
			});
			
			$("#searchYourVideo").keyup(function(){
				$.post("listuservideos.act",
				{ 
					tfsearch : $("#searchYourVideo").val()
				}, 
					function(data){
					$("#getYourVideo").html(yourVideo(data));	
				});
			});
			
			$("#searchVideos").keyup(function(){
				$.post("listvideotoaddtoplaylist.act",
				{ 
					tfsearch : $("#searchVideos").val()
				}, 
					function(data){
					$("#getVideoSearch").html(videoSearch(data));	
				});
			});
			
			
			$('#frmadd').click(function(){
				 $.magnificPopup.close();
			});
			
			
			$("#frmupdateplaylist").submit(function(){
				event.preventDefault();
				if($("#updatename").val().trim() == ""){
					$(".msg").css("display","block");
				}else{
					$.post('updateplaylist.act',{
						playlistid : $("#updateid").val(),
						playlistname : $("#updatename").val() ,
						description : $("#updatedescription").val() ,
						publicview : $("#updatepublicview").val(),
						thumbnail : $("#thumbnail").val()
					},function(data){
						$.post("listvideoinplaylist.act", {
							playlistid : playlistid
						}, function(data) {
							$("#firtvideo").html(getPlaylist(data , uservisitid));
							//$("#getList").html(listvideofromplaylist(data));
						});
					});
					
					$("#frmup_date_playlist").modal('hide');
				}
				
			});
			
			
			
			    
			
		});

		
		function closeFrmPopAdd(){
			$.post("listvideoinplaylist.act", {
				playlistid : playlistid
			}, function(data) {
				if(data.getplaylist == 0){
					$("#firtvideo").html(getPlaylist(data , uservisitid));
					$("#getList").html("<div class='alert alert-success fade in alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button><strong>No</strong> video in playlist!</div>");
				}else{
					$("#getList").html(listvideofromplaylist(data));
				}
			});
		}
		
		</script>

<script type="text/javascript">
// 		$(document).ready(function(){ 
// 			$(window).scroll(function() {
// 			    if($(window).scrollTop() == $(document).height() - $(window).height()) {
// 			        alert("scroll");   
// 			    	// ajax call get data from server and append to the div
// 			    }
// 			});	
			
			    
			    
// 		});
		
		</script>


</body>
</html>