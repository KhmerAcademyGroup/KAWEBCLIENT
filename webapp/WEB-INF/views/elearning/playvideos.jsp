<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
  		<!-- Player -->
  		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video-js.css">
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.css">
		<!-- Player Responsive -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/player-responsive.css" rel="stylesheet">
		<!-- style -->
		<%-- <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/mycss.css" rel="stylesheet"> --%>
		
 		  <style>
			.vjs-default-skin .vjs-big-play-button{
				left: 40%;
				top: 40%;
			 }
			
			 @media (max-width: 1236px) {
				#btngr{
					width:150px;
				}
			 } 
 
 		 </style>
	</head>
	<body>
	
		<jsp:include page="../shared/_menu.jsp" />
		
		<button class="btn btn-default" id="menu-toggle"><i class="fa fa-cog fa-spin"></i></button>
		
		<div id="wrapper">

	        <!-- Sidebar -->
	        <div id="sidebar-wrapper">
	            
	            <div class="panel-group" id="accordion-2" style="padding:5px 5px;">
	            
	            
	            	<c:forEach items="${data.MAINCATEGORY}" var="category">
					
						<div class="panel panel-primary">
						  <div class="panel-heading" style="background:#fff;">
							<h3 class="panel-title">
								<a class="block-collapse collapsed" style="color:#007500;" data-parent="#accordion-2" data-toggle="collapse" href="#${category.maincategoryname}" aria-expanded="false">
								<b>${category.maincategoryname}</b>
								<span class="right-content">
									<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
								</span>
								</a>
							</h3>
						  </div>
							
							

							<div id="${category.maincategoryname}" class="collapse" aria-expanded="false" style="height: 0px;">
							  <div class="panel-body" style="background:#cccccc;">
							  	<c:forEach items="${data.PLAYLIST_SIDEBAR}" var="playlist">
							  	
									<c:if test="${playlist.maincategory==category.maincategory}">
									
										<a>${playlist.playlistName}</a><br /> 
										
								
									</c:if>
								</c:forEach>
							  </div><!-- /.panel-body -->
							</div><!-- /.collapse in -->
							
							
						</div><!-- /.panel panel-primary -->
						
						
					
					</c:forEach>
					
				</div><!-- End panel group -->
	            
	        </div>
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="page-content-wrapper" style="background:#fff;">
	            <div class="container-fluid">
	            	<div class="row">
	            		<div class="col-lg-12">
	            
	            
				            <!-- left side -->
				            <div class="col-sm-7 col-xs-12 the-box no-border clear-padding" id="left_side">
								<!-- Video Demo -->
								<div class="col-lg-12 col-md-12 col-sm-12">
									<div id="myplayerwrapper">
										<video id="vid1" class="video-js vjs-default-skin" controls autoplay preload="auto"></video>
									</div>
								</div>
								<!-- End Video End -->
								<!-- Video Info -->
								<div class="col-sm-12">
									<h3><strong class="text-black"><a >Video Name</a></strong></h3>
								</div>
								
								<%-- <script>
									$(document).ready(function(){
										$("title").text("<%=dto.getVideoname() %>");
									});						
								</script> --%>
								
								<div class="col-sm-4 col-xs-12" style="height:75px">
									<div class="the-box no-border store-list">
									 <div class="media">
			                            <a class="pull-left" >
			                            <img class="media-object img-circle" src="../uploads/userImageurl" alt="Avatar" style="width:50px">
			                            <div class="clearfix visible-xs"></div>
			                            <div class="media-body">
			                                <a href="#"></a>
			                                <h4 class="media-heading" style="font-size:14px">
			                                 <strong class="text-black">UserName</strong>
											 </h4>
			                            </div><!-- /.media-body -->
			                        </div><!-- /.media -->
								</div>
								</div>
								<div class="col-sm-8 col-xs-12">
									<ul class="pull-right" style="list-style:none" id="btngr">
										<li><br></li>
										<li style="text-align:right"><strong><i class="fa fa-eye" style="padding:0px 10px"></i>ViewCount</strong></li>
										<li style="font-size:12px">
											<%-- <span id="vote">
												<%if(request.getSession().getAttribute("ka_user") != null){ %>
												<a href="javascript:votes('vote.act?v=<%= dto.getVideoid() %>&type=<%= uservote>0 ? 0 : 1%>')">
													<i class="fa fa-thumbs-up fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
														<strong id="plus"><%= dto.getCountvoteplus() %></strong>
												</a>
												<a href="javascript:votes('vote.act?v=<%= dto.getVideoid() %>&type=<%= uservote<0 ? 0 : -1%>')">
													<i class="fa fa-thumbs-down fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
													<strong id="minus"><%= dto.getCountvoteminus() %></strong>
												</a>
												<%}else{ %>
													<i class="fa fa-thumbs-up fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
														<strong id="plus"><%= dto.getCountvoteplus() %></strong>
													<i class="fa fa-thumbs-down fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
													<strong id="minus"><%= dto.getCountvoteminus() %></strong>	
												<%} %>
											</span> --%>
											<div class="btn-group">
												  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
													<i class="fa  fa-plus"></i> Add To <span class="caret"></span>
												  </button>
												  
												  <ul class="dropdown-menu" role="menu" style="max-height: 400px;overflow: auto;padding:15px">
													<li><a>Playlist:</a></li>
													<li class="divider"></li>
													<div id="getmoreli">
													
													</div>
												  </ul>
											</div>
											<%-- <%if(dto.getVideoid()!=0){ %>
											<%if(!dto.getFileurl().equalsIgnoreCase("") && dto.getFileurl()!=null && !dto.getFileurl().equalsIgnoreCase("#")){ 									
											%>
											<div class="btn-group">
												  <a class="btn btn-success" href="<%=dto.getFileurl() %>" target="_blank">
													<i class="fa fa-download"></i> Download 
												  </a>
											</div>
											<%}} %> --%>
										</li>
									</ul>
								</div>
								<!-- End Video Info -->
								<!-- Video Description -->
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<hr class="hr-style-one">
									<%-- <span class="pull-left"><i class="fa fa-calendar-o"></i>&nbsp;<% if(dto.getPostdate()!=null)out.print(new SimpleDateFormat("dd-MMM-yyyy").format(dto.getPostdate()));else out.print(dto.getPostdate());%> <i class="fa fa-folder-open"></i>&nbsp;<%= dto.getCategorynames() %></span>
									<div class="pull-right"><div class="rw-ui-container"></div></div><br>
									<p><%= dto.getDescription() %></p> --%>
								</div>
								<!-- End Video Description -->
								<div class="col-sm-12 col-sm-12 col-xs-12">
									
									<!-- Go to www.addthis.com/dashboard to customize your tools -->
									<div class="addthis_sharing_toolbox"></div>
									
								</div>
								
								<!-- Video Comment -->
								<div class="col-sm-12 col-xs-12">
									<hr class="hr-style-one">
									<form role="form" id="commentform" method="post">
										<div class="form-group">
										<textarea name="commenttext" id="commenttext" class="form-control" style="height: 70px;" placeholder="Your comments here"></textarea>
										<span style="color: red;" id="commenterror"></span>
										</div>
										<div class="form-group">
										<% if(session.getAttribute("ka_user")==null){ %>
										<button type="button" class="btn btn-primary" onclick="isNotLogin()">Submit comment</button>
										<% }else{ %>
										<button type="submit" class="btn btn-primary"  >Submit comment</button>
										<% } %>
									
										
										</div>
									</form>
			
									<div class="the-box no-border">
										<h4 class="small-heading more-margin-bottom">COMMENTS</h4>
										<ul class="media-list media-sm media-dotted" id="comments">
									
										</ul>
									</div>
								
							
								</div>
								<!-- End Video Comment -->
						</div>
						<!-- end left side -->
						
						
						
						<!-- right side -->
						<div class="col-sm-3 col-xs-12 the-box no-border clear-padding" id="right_side">
							<%-- <%if(request.getAttribute("playlist_json")!=null){ %>
							<!-- PLAY LIST -->
							<div class="contentHolder bg-gray hidden-xs" style="left:-15px" id="SuppressScrollX_1">
								<div class="content" id="playlist">
								</div><!-- /.content -->
							</div>
							<!-- END PLAYLIST -->
							
							
							<%}else{ %>
								<script>
									$(document).ready(function(){
										var screenwidth = window.innerWidth;
										if(screenwidth >= 992){
											$(".top-navbar").addClass("toggle");
											$(".sidebar-left").addClass("toggle");
											$(".page-content").addClass("toggle");
										}else{
											$(".top-navbar").removeClass("toggle");
											$(".sidebar-left").removeClass("toggle");
											$(".page-content").removeClass("toggle");
										}
									});
								</script>
							<%} %>
						<%
						ArrayList<Video> a=(ArrayList<Video>)request.getAttribute("relate");
						for(int i=0;i<a.size();i++){ %>
						
						 	<div class="related_videos">
								<div class="the-box no-border store-list" style="margin-bottom:5px;padding-bottom:5px">
									 <div class="media">
			                            <a class="pull-left" href="play.act?v=<%=a.get(i).getVideoid() %>" style="width:40%">
			                            <img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/<%=a.get(i).getYoutubeurl() %>/mqdefault.jpg" style="width:100%;"></a>
			                            <div class="media-body">                                
			                                <h4 class="media-heading">
			                                  <a href="play.act?v=<%=a.get(i).getVideoid() %>"><strong class="text-black"><%=a.get(i).getVideoname()%></strong></a>
											 </h4>
			                                <ul class="list-inline">
			                                	<li><%= a.get(i).getViewcounts() %> Views</li>
			                                    <li>by <%=a.get(i).getUsername() %></li>
			                                </ul>
			                            </div>
			                        </div>
								</div>
							</div> 
					<%} %> --%>
							
						</div>
						<!-- end right side -->
	                        
	                    </div><!-- end col-lg-12 -->
	                </div> <!-- row -->
	            </div><!-- end container-fluid -->
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    </div>
	    <!-- /#wrapper -->
		
	
		<jsp:include page="../shared/_footer.jsp" />
		
		<script>
		$(document).ready(function() {
			$("#sidebar-wrapper").height($("#page-content-wrapper").outerHeight());
		    $("#menu-toggle").click(function(e) {
		        $("#wrapper").toggleClass("toggled");
		    });
		});
	    </script>
	    
		<script>
	      jQuery(document).ready(function ($) {
	        "use strict";
			$('#SuppressScrollX_1').perfectScrollbar({suppressScrollX: true});
	      }); 
	    </script>
	    
	    <script src="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/videoplayer/youtube.js"></script>
		<script src="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.js"></script>
		 <script>

			// save a reference to the video element
			video = document.querySelector('video'),
			
			// save a reference to the video.js player for that element
			player = videojs(video, {'techOrder': ['youtube'], 'src': 'https://www.youtube.com/watch?v=K7Eh__GxQeQ'});

			// initialize the plugin with some custom options:
			player.logobrand({
				//height: "32px",
				//width: "32px",
				image: "videoplayer/logoka.png",
				destination: "http://www.khmeracademy.org/"
			});
			//player.logobrand().loadImage("http://instasynch.com/images/youtube.png");
			//player.logobrand().setDestination("http://instasynch.com/images/youtube.png");
			// set a flag and then we calculate the ratio from the width and height
			
		</script>
	    
	</body>
</html>	