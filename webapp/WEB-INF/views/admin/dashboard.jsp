<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%-- <%@ page import="model.dto.Video, model.dto.User" %>
<%@page import="model.dto.User"%> --%>

 <%-- <%
	if(session.getAttribute("ka_user")!=null) {
 	 User users = (User) session.getAttribute("ka_user");	 
 	 if(users.getUsertypeid() ==4){
 		out.println("<script>window.location.href='listtutorial.act'; </script>");return;
 	 }
	}
%> --%>
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
<meta name="author" content="Vuthea Chheang">
<title>Khmer Academy Control Panel</title>


<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">

<!-- PLUGINS CSS -->
<link href="${pageContext.request.contextPath}/resources/assets/plugins/weather-icon/css/weather-icons.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/prettify/prettify.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/magnific-popup.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.theme.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.transitions.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/icheck/skins/all.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/datepicker.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/markdown/bootstrap-markdown.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/datatable/css/bootstrap.datatable.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/plugins/slider/slider.min.css" rel="stylesheet">

<!-- MAIN CSS (REQUIRED ALL PAGE)-->
<link href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

<!--  CSS (REQUIRED ALL PAGE)-->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">


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

				<br/>
				<!-- BEGIN EXAMPLE ALERT -->
				<div
					class="alert alert-success alert-bold-border fade in alert-dismissable">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">&times;</button>
					<p>
						<strong>Welcome!</strong>
					</p>
					<p class="text-muted">
						Khmer Academy is the first website that provides you the e-learning in Khmer language. Khmer Academy will help you to have many advantages with our learning contents such as saving your time and your money. 
					</p>
				</div>
				<!-- END EXAMPLE ALERT -->




				<div class="col-lg-4">

					<!-- BEGIN SOCIAL TILES -->
					<div class="row">
						<div class="col-xs-6">
							<div class="tiles facebook-tile text-center">
								<i class="fa fa-user icon-lg-size"></i>
								<h4>
									<a href="#">555 Users</a>
								</h4>
							</div>
							<!-- /.tiles .facebook-tile -->
						</div>
						<!-- /.col-xs-6 -->
						<div class="col-xs-6">
							<div class="tiles twitter-tile text-center">
								<i class="fa fa-toggle-right icon-lg-size"></i>
								<h4>
									<a href="#">65 Playlists</a>
								</h4>
							</div>
							<!-- /.tiles .twitter-tile -->
						</div>
						<!-- /.col-xs-6 -->
						<div class="col-xs-6">
							<div class="tiles dribbble-tile text-center">
								<i class="fa fa-comments icon-lg-size"></i>
								<h4>
									<a href="#">78 Questions</a>
								</h4>
							</div>
							<!-- /.tiles .dribbble-tile -->
						</div>
						<!-- /.col-xs-6 -->
						<div class="col-xs-6">
							<div class="tiles linkedin-tile text-center">
								<i class="fa fa-film icon-lg-size"></i>
								<h4>
									<a href="#">1000 Videos</a>
								</h4>
							</div>
							<!-- /.tiles .dribbble-tile -->
						</div>
						<!-- /.col-xs-6 -->
					</div>
					<!-- /.row -->
					<!-- END SOCIAL TILES -->


					<h4 class="small-title">
						<strong><i class="fa fa-users"></i>New users</strong>
					</h4>
<%-- 
				<%
					ArrayList<User> usr= (ArrayList<User>)request.getAttribute("listuserlastest");
					for(int i=0; i<5; i++){
				%>

					<!-- BEGIN USER CARD LONG -->
					<div class="the-box bg-success no-border">
						<div class="media user-card-sm">
							<a class="pull-left" href="#"> <img
								class="media-object img-circle"
								src="../uploads/<%= usr.get(i).getUserimageurl() %>" alt="Avatar">
							</a>
							<div class="media-body">
								<h4 class="media-heading"><%= usr.get(i).getUsername() %></h4>
								<p class="text-success"><%= usr.get(i).getEmail() %></p>
							</div>
							<div class="right-button">
								<a data-toggle="tooltip" title="View" href="user.act"
									class="btn btn-success active">
									<i class="fa fa-check"></i>
								</a>
							</div>
							<!-- /.right-button -->
						</div>
					</div>
					<!-- /.the-box .no-border -->
					<!-- BEGIN USER CARD LONG -->

				<%} %>	 --%>
				
				<div class="the-box bg-success no-border">
						<div class="media user-card-sm">
							<a class="pull-left" href="#"> <img
								class="media-object img-circle"
								src="../uploads/" alt="Avatar">
							</a>
							<div class="media-body">
								<h4 class="media-heading">Vuthea</h4>
								<p class="text-success">chheang.vuthea@gmail.com</p>
							</div>
							<div class="right-button">
								<a data-toggle="tooltip" title="View" href="user.act"
									class="btn btn-success active">
									<i class="fa fa-check"></i>
								</a>
							</div>
							<!-- /.right-button -->
						</div>
					</div>	
					
					
					
					
				</div>



				<div class="col-lg-8">

					<div id="list_videos_in_category">
					<%-- <%
						ArrayList<Video> arr= (ArrayList<Video>) request.getAttribute("videodto");
					
						for(int i=0; i<5; i++){
					%>	
						
						<div class="the-box no-border store-list view-category">
							<div class="media">
								<a class="pull-left" href="../elearning/play.act?v=<%=arr.get(i).getVideoid() %>" target="_blank"><img alt="image"
									class="store-image"
									src="https://i.ytimg.com/vi/<%= arr.get(i).getYoutubeurl() %>/mqdefault.jpg"
									style="width: 196px; height: 110px"></a>
								<div class="clearfix visible-xs"></div>
								<div class="media-body">
									<a href="#"></a>
									<h4 class="media-heading" style="padding: 0px; margin: 0px">
										<a href="../elearning/play.act?v=<%=arr.get(i).getVideoid() %>"><strong class="text-black"><%=arr.get(i).getVideoname() %></strong></a>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li><a href="#" class="text-muted small">by
												<%= arr.get(i).getUsername() %></a></li>
										<li class="text-muted small"><%=arr.get(i).getPostdate() %> - <%=arr.get(i).getViewcounts() %> views</li>
										<li class="text-muted small"></li>
									</ul>
								</div>
								<!-- /.media-body -->
							</div>
							<!-- /.media -->
						</div>
						
					<%} %>	 --%>
					<div class="the-box no-border store-list view-category">
							<div class="media">
								<a class="pull-left" href="../elearning/play.act?v=32" target="_blank"><img alt="image"
									class="store-image"
									src="https://i.ytimg.com/vi//mqdefault.jpg"
									style="width: 196px; height: 110px"></a>
								<div class="clearfix visible-xs"></div>
								<div class="media-body">
									<a href="#"></a>
									<h4 class="media-heading" style="padding: 0px; margin: 0px">
										<a href="../elearning/play.act?v=32 %>"><strong class="text-black">HRD Videos</strong></a>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li><a href="#" class="text-muted small">by
												Vuthea</a></li>
										<li class="text-muted small">13/01/2016- 23 views</li>
										<li class="text-muted small"></li>
									</ul>
								</div>
								<!-- /.media-body -->
							</div>
							<!-- /.media -->
						</div>
							
					
					</div>

				</div>





			</div>
			<!-- /.container-fluid -->



			<!-- BEGIN FOOTER -->
			<jsp:include page="_footer.jsp"></jsp:include>
			<!-- END FOOTER -->


		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->






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
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/retina/retina.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/nicescroll/jquery.nicescroll.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>

	<!-- PLUGINS -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/skycons/skycons.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/prettify/prettify.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/icheck/icheck.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/timepicker/bootstrap-timepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/mask/jquery.mask.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/bootstrap.datatable.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/markdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/to-markdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/bootstrap-markdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>

	<!-- EASY PIE CHART JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>

	<!-- KNOB JS -->
	<!--[if IE]>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/jquery.knob.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/knob.js"></script>

	<!-- FLOT CHART JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.resize.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.selection.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.stack.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.time.js"></script>

	<!-- MORRIS JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/raphael.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/morris.min.js"></script>

	<!-- C3 JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/d3.v3.min.js" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/c3.min.js"></script>

	<!-- MAIN APPS JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>

</body>


</html>