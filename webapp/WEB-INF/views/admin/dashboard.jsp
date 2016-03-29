<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
			<!-- END SIDEBAR RIGHT -->
			
			
			
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
									<a href="#" id="countuser"></a>
								</h4>
							</div>
							<!-- /.tiles .facebook-tile -->
						</div>
						<!-- /.col-xs-6 -->
						<div class="col-xs-6">
							<div class="tiles twitter-tile text-center">
								<i class="fa fa-toggle-right icon-lg-size"></i>
								<h4>
									<a href="#" id="countplaylist"></a>
								</h4>
							</div>
							<!-- /.tiles .twitter-tile -->
						</div>
						<!-- /.col-xs-6 -->
						<div class="col-xs-6">
							<div class="tiles dribbble-tile text-center">
								<i class="fa fa-comments icon-lg-size"></i>
								<h4>
									<a href="#" id="countquestion"></a>
								</h4>
							</div>
							<!-- /.tiles .dribbble-tile -->
						</div>
						<!-- /.col-xs-6 -->
						<div class="col-xs-6">
							<div class="tiles linkedin-tile text-center">
								<i class="fa fa-film icon-lg-size"></i>
								<h4>
									<a href="#" id="countvideo"></a>
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
				
				<div id="listnewusers">
						
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
					
					<div id="listvideos">
					
					</div>
							
					
					</div>

				</div>





			</div>
			<!-- /.container-fluid -->



			<!-- BEGIN FOOTER -->
			<jsp:include page="shared/_adminfooter.jsp"></jsp:include>
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
	
	<!-- New JS Plugin -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.tmpl.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bpopup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>
        
    <script id="jlistusers" type="text/x-jquery-tmpl">
		<div class="the-box bg-success no-border">
    		<div class="media user-card-sm">
							<a class="pull-left" href="#"> <img class="media-object img-circle" src="{{= userImageUrl}}" alt="Avatar"></a>
							<div class="media-body">
								<h4 class="media-heading">{{= username}}</h4>
								<p class="text-success">{{= email}}</p>
							</div>
							<div class="right-button">
								<a data-toggle="tooltip" title="View" href="user.act"
									class="btn btn-success active">
									<i class="fa fa-check"></i>
								</a>
							</div>
						</div>
		</div>
    </script> 
    <script id="jlistvideos" type="text/x-jquery-tmpl">
			<div class="the-box no-border store-list view-category">
							<div class="media">
								<a class="pull-left" href="../elearning/play.act?v={{= videoId}}" target="_blank"><img alt="image" class="store-image" src="https://i.ytimg.com/vi/{{= youtubeUrl}}/mqdefault.jpg"
									style="width: 196px; height: 110px"></a>
								<div class="clearfix visible-xs"></div>
								<div class="media-body">
									<a href="#"></a>
									<h4 class="media-heading" style="padding: 0px; margin: 0px">
										<a href="../elearning/play.act?v={{= videoId}}"><strong class="text-black">{{= videoName}}</strong></a>
									</h4>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li><a href="#" class="text-muted small">by
												{{= username}}</a></li>
										<li class="text-muted small">{{= postDate}} - {{= viewCounts}} views</li>
										<li class="text-muted small"></li>
									</ul>
								</div>
								<!-- /.media-body -->
							</div>
							<!-- /.media -->
						</div>	

	</script>  
        
	<script>
		$(document).ready(function(){
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/rest/dashboard",
				method: "GET",
				success: function(data){
					$("#countuser").text(data.countusers +" Users");
					$("#countplaylist").text(data.countplaylists +" Playlists");
					$("#countvideo").text(data.countvideos +" Videos");
					$("#countquestion").text(data.countforum +" Questions");
					
					if(data.listuser !=null){						
						$("#jlistusers").tmpl(data.listuser).appendTo("#listnewusers");						
					}
					if(data.listvideo !=null){
						$("#jlistvideos").tmpl(data.listvideo).appendTo("#listvideos");
					}
				}
			});
			
			
			
		});
	</script>
</body>


</html>