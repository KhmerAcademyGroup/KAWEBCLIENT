<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../shared/_header.jsp" />
</head>

<body class="tooltips no-padding">

	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->

	<!-- BEGIN TOP NAVBAR -->
	<jsp:include page="../shared/_menu.jsp" />
	<!-- END TOP NAVBAR -->


	<!-- My Contend -->

	<div class="container ka-container">




		<div class="the-box no-border">
			<div id="firtvideo">
				<div class="media">
					<a class="pull-left"> <img alt="image" class="store-image"
						src="https://i.ytimg.com/vi/g1dNbTBvEHc/mqdefault.jpg"
						style="height: 130px"></a>
					<div class="clearfix visible-xs"></div>
					<div class="media-body">
						<a></a>
						<h4 class="media-heading" style="padding: 0px; margin: 0px">
							<a><strong class="text-black">ccx</strong></a>&nbsp;<span
								class="label label-danger" style="font-size: 10px;"><i
								class="fa fa-lock"></i> Private</span>
						</h4>
						<ul style="list-style: none; padding: 0px; margin: 0px;">
							<li><a class="text-muted small">by Sarin | 10 Videos </a></li>
							<li><span class="text-muted small">cxc </span></li>
						</ul>
					</div>
					<!-- /.media-body -->
					<span class="small text-muted" style="color: #37BC9B"> <a
						href="#frmadd" data-backdrop="static"
						class="btn btn-default btn-perspective" data-toggle="modal"
						onclick="clkickBtAdd()"><i class="fa fa-play"></i> Play All </a>&nbsp;
						&nbsp; <a href="#frmadd" data-backdrop="static"
						class="btn btn-default btn-perspective" data-toggle="modal"
						onclick="clkickBtAdd()"><i class="fa fa-plus-square-o"></i>
							Add video </a>&nbsp; &nbsp;<a href="#frmup_date_playlist"
						class="btn btn-default btn-perspective"
						onclick="getPlaylistForUpdate(344)" data-toggle="modal"><i
							class="fa fa-cogs"></i> Playlist settings </a> &nbsp; &nbsp;<a
						href="#"
						onclick="deletePlayList('deleteplaylist.act?playlistid=344')"
						class="btn btn-default btn-perspective"><i
							class="fa fa-trash-o"></i> Delete </a></span>
				</div>
			</div>

		</div>








		<div id="work-mixitup" class="work-content">
			<div class="row">

				<!-- Begin work item -->
				<c:forEach items="${data.RES_DATA}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign "
									style="margin-left: 89%"></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/${playlist.fileUrl}/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
								<div class="media-body" class="color:blue;">

									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">${playlist.videoName}</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li class="text-muted small">by ${playlist.username}
											|${playlist.postDate}</li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;${playlist.countVotePlus}&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;${playlist.countVoteMinus}&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;${playlist.viewCounts}&nbsp;&nbsp;</li>
									</ul>
								</div>
							</div>
							<!-- /.the-box no-border transparent -->
						</div>
						<!-- /.work-item -->
					</div>
					<!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
				</c:forEach>
				<!-- End work item -->



				<div class="modal fade" id="frmadd" tabindex="-1" role="dialog"
					aria-labelledby="DefaultModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true" onclick="closeFrmPopAdd()">&times;</button>
								<h4 class="modal-title" id="DefaultModalLabel">Add video to
									playlist</h4>
							</div>
							<div class="modal-body">
								<div
									class="panel with-nav-tabs panel-default panel-square panel-no-border">
									<div class="panel-heading">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#videosearch-panel"
												data-toggle="tab">Video Search</a></li>
											<li class=""><a href="#your-video-panel"
												data-toggle="tab">Your video</a></li>
										</ul>
									</div>
									<div id="panel-collapse-1" class="collapse in">
										<div class="panel-body">
											<div class="tab-content">

												<div class="tab-pane fade in active" id="videosearch-panel">

													<div class='btn-toolbar top-table' role='toolbar'>
														<div class='btn-group'>
															<input type='text' id='searchVideos' class='form-control'
																placeholder='Search by Video title'>
														</div>
													</div>

													<div id="getVideoSearch"></div>

												</div>

												<div class="tab-pane fade" id="your-video-panel">

													<div class='btn-toolbar top-table' role='toolbar'>
														<div class='btn-group'>
															<input type='text' id='searchYourVideo'
																class='form-control' placeholder='Search by Video title'>
														</div>
													</div>

													<div id="getYourVideo"></div>





												</div>


											</div>
											<!-- /.tab-content -->
										</div>
										<!-- /.panel-body -->
									</div>
									<!-- /.collapse in -->
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" onclick="closeFrmPopAdd()">Close</button>
							</div>
							<!-- /.modal-footer -->
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-doalog -->
				</div>
				<!-- /#DefaultModal -->




			</div>
			<!-- /.row -->
		</div>
		<!-- /#work-mixitup -->



	</div>




	<!-- End My Contend -->






	<jsp:include page="../shared/_footer.jsp" />

	<script
		src="${pageContext.request.contextPath}/resources/assets/js/script/playlistdetail.js"></script>

	<script type="text/javascript">

	$(document).ready(function(){
		$.ajax({
			url : "${pageContext.request.contextPath}/rest/elearning/listallvideo",
			method: "GET",
			success : function(data){
				$("#getVideoSearch").html(videoSearch(data));
				//alert(data.RES_DATA[1].videoId);
			}
			
		});
	});	
	
	
		/*$(document).ready(
				function() {

					$("#searchVideos").keyup(function() {
						$.post("listvideotoaddtoplaylist.act", {
							tfsearch : $("#searchVideos").val()
						}, function(data) {
							$("#getVideoSearch").html(videoSearch(data));
						});
					}); 
				});*/
					
					/* $.post("listvideoinplaylist.act", {
						playlistid : playlistid
					}, function(data) {
						$("#firtvideo").html(getPlaylist(data, uservisitid));
						$("#getList").html(listvideofromplaylist(data));
					});

					$("#searchYourVideo").keyup(function() {
						$.post("listuservideos.act", {
							tfsearch : $("#searchYourVideo").val()
						}, function(data) {
							$("#getYourVideo").html(yourVideo(data));
						});
					}); */

					

					/* $('#frmadd').click(function() {
						$.magnificPopup.close();
					}); */

					/* $("#frmupdateplaylist").submit(
							function() {
								event.preventDefault();
								if ($("#updatename").val().trim() == "") {
									$(".msg").css("display", "block");
								} else {
									$.post('updateplaylist.act', {
										playlistid : $("#updateid").val(),
										playlistname : $("#updatename").val(),
										description : $("#updatedescription")
												.val(),
										publicview : $("#updatepublicview")
												.val(),
										thumbnail : $("#thumbnail").val()
									}, function(data) {
										$.post("listvideoinplaylist.act", {
											playlistid : playlistid
										}, function(data) {
											$("#firtvideo").html(
													getPlaylist(data,
															uservisitid));
											//$("#getList").html(listvideofromplaylist(data));
										});
									});

									$("#frmup_date_playlist").modal('hide');
								}

							});

				});
 */
	/* 	function closeFrmPopAdd() {
			$
					.post(
							"listvideoinplaylist.act",
							{
								playlistid : playlistid
							},
							function(data) {
								if (data.getplaylist == 0) {
									$("#firtvideo").html(
											getPlaylist(data, uservisitid));
									$("#getList")
											.html(
													"<div class='alert alert-success fade in alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button><strong>No</strong> video in playlist!</div>");
								} else {
									$("#getList").html(
											listvideofromplaylist(data));
								}
							});
		} */
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