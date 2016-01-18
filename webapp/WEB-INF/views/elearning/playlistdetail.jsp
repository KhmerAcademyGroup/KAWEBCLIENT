<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
								<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				<!-- Begin work item -->
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
								<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				<!-- Begin work item -->
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
							<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				<!-- Begin work item -->
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
								<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				
				
				<!-- Begin work item -->
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
								<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				<!-- Begin work item -->
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
								<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				<!-- Begin work item -->
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
							<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				<!-- Begin work item -->
				<c:forEach items="${data.PLAYLIST}" var="playlist">
					<div
						class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a> <a
									href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
									<i class="glyphicon glyphicon-remove-sign " style="margin-left:89% "></i>
								</a>
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									style="width: 100%; height: 100%;"
									src="https://i.ytimg.com/vi/-lBkTdheyqw/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin">
								<div class="media-body" class="color:blue;">
									
									<h4 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">ccx</strong>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li  class="text-muted small">by Admin | Jan 2,
												2015 </li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;1000&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;10000&nbsp;&nbsp;</li>
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
				
				

			</div>
			<!-- /.row -->
		</div>
		<!-- /#work-mixitup -->



	</div>




	<!-- End My Contend -->


	<jsp:include page="../shared/_footer.jsp" />


</body>
</html>