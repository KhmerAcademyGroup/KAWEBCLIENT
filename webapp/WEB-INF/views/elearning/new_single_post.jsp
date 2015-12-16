<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="model.dto.*, com.google.gson.*" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="Khmer Academy is the first e-learning platform for knowledge sharing in Cambodia. It is developed by Korea Software HRD Center in 2015. All contents are in Khmer language for easy knowledge acquisition. Most contents are related to IT fields and plan to extend more topics. Our mission is to improve education environments of Cambodia by means of IT technologies. Khmer Academy will be a significant education platform which accumulates and shares all kinds of knowledge on internet. ">
		<meta name="keywords" content="Khmer Academy, Learning, Khmer Online">
		<meta name="author" content="Khmer Academy">
		<title>E-Learning Contents | Khmer Academy</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- PLUGINS CSS -->
		<link href="assets/plugins/weather-icon/css/weather-icons.min.css" rel="stylesheet">
		<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet">
		<link href="assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet">
		<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet">
		<link href="assets/plugins/datepicker/datepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/validator/bootstrapValidator.min.css" rel="stylesheet">
		<link href="assets/plugins/summernote/summernote.min.css" rel="stylesheet">
		<link href="assets/plugins/markdown/bootstrap-markdown.min.css" rel="stylesheet">
		<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css" rel="stylesheet">
		<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
		<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
		<link href="assets/plugins/slider/slider.min.css" rel="stylesheet">
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">
		<link href="assets/css/style-responsive.css" rel="stylesheet">
		<link href="assets/css/mycss.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<link href="assets/src/perfect-scrollbar.css" rel="stylesheet">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="assets/src/perfect-scrollbar.js"></script>
	
        <link rel="stylesheet" href="videoplayer/libs/video-js/video-js.css">
	  	<link rel="stylesheet" href="videoplayer/src/videojs.logobrand.css">
		
		<!-- Player Responsive -->
		<link href="assets/css/player-responsive.css" rel="stylesheet">
		
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
		<script>
      jQuery(document).ready(function ($) {
        "use strict";
		$('#SuppressScrollX_1').perfectScrollbar({suppressScrollX: true});
      });
      
    
     
    </script>
    
    <script>
	function votes(url){
		var xmlhttp;
		if (window.XMLHttpRequest)
			xmlhttp=new XMLHttpRequest();
		else
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		
		xmlhttp.onreadystatechange=function(){
	    	if (xmlhttp.readyState==4 && xmlhttp.status==200){
	    		document.getElementById("vote").innerHTML=xmlhttp.responseText;
	    	}
		}
		
		xmlhttp.open("get", url, true);
		xmlhttp.send();
	}
	</script>
	
	
	
	</head>
		
	<body class="tooltips">
		
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
			
			
			
			<jsp:include page="_header.jsp"></jsp:include>
			<!-- BEGIN SIDEBAR LEFT -->
			<%if(request.getAttribute("playlist_json")!=null){ %>
				<jsp:include page="_playlistsidebar.jsp"></jsp:include>		
			<%}else{ %>
				<jsp:include page="_sidebar.jsp"></jsp:include>
			
			<%} %>
			<!-- /.sidebar-left -->
			<!-- END SIDEBAR LEFT -->
			
			<%
			Video dto=null;
			if(request.getAttribute("video")!=null){
				dto = (Video) request.getAttribute("video");
				%>
				<script src="assets/js/script/playlist.js"></script>
				<% 
			}else{
			%>    <script>
			
						$(document).ready(function() {
							
							$.magnificPopup.open({
						        type: 'inline',
						        items: {src: '#form-login'},
						        preloader: false,
						        modal: true,
						        delegate: 'a',
								removalDelay: 500, //delay removal by X to allow out-animation
								midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
								
							});
							
							});
							
				  </script>
				<%
				dto = new Video();
				
			}
			int uservote = Integer.parseInt(request.getAttribute("uservote").toString());
			%>
			
			
			
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
			
				
				
				
				<div class="container-fluid the-box">
			
					<!-- left side -->
			<div class="col-sm-offset-1 col-sm-7 col-xs-12 the-box no-border clear-padding" id="left_side">
					<!-- Video Demo -->
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div id="myplayerwrapper">
							<video id="vid1" class="video-js vjs-default-skin" controls autoplay preload="auto"></video>
						</div>
					</div>
					<!-- End Video End -->
					<!-- Video Info -->
					<div class="col-sm-12">
						<h3><strong class="text-black"><a ><%= dto.getVideoname() %></a></strong></h3>
					</div>
					
					<script>
						$(document).ready(function(){
							$("title").text("<%=dto.getVideoname() %>");
						});						
					</script>
					<div class="col-sm-4 col-xs-12" style="height:75px">
						<div class="the-box no-border store-list">
						 <div class="media">
                            <a class="pull-left" >
                            <img class="media-object img-circle" src="../uploads/<%= dto.getUserimageurl() %>" alt="Avatar" style="width:50px">
                            <div class="clearfix visible-xs"></div>
                            <div class="media-body">
                                <a href="#"></a>
                                <h4 class="media-heading" style="font-size:14px">
                                 <strong class="text-black"><%= dto.getUsername() %></strong>
								 </h4>
                            </div><!-- /.media-body -->
                        </div><!-- /.media -->
					</div>
					</div>
					<div class="col-sm-8 col-xs-12">
						<ul class="pull-right" style="list-style:none" id="btngr">
							<li><br></li>
							<li style="text-align:right"><strong><i class="fa fa-eye" style="padding:0px 10px"></i><%= dto.getViewcounts() %></strong></li>
							<li style="font-size:12px">
								<span id="vote">
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
								</span>
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
								<%if(dto.getVideoid()!=0){ %>
								<%if(!dto.getFileurl().equalsIgnoreCase("") && dto.getFileurl()!=null && !dto.getFileurl().equalsIgnoreCase("#")){ 									
								%>
								<div class="btn-group">
									  <a class="btn btn-success" href="<%=dto.getFileurl() %>" target="_blank">
										<i class="fa fa-download"></i> Download 
									  </a>
								</div>
								<%}} %>
							</li>
						</ul>
					</div>
					<!-- End Video Info -->
					<!-- Video Description -->
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<hr class="hr-style-one">
						<span class="pull-left"><i class="fa fa-calendar-o"></i>&nbsp;<% if(dto.getPostdate()!=null)out.print(new SimpleDateFormat("dd-MMM-yyyy").format(dto.getPostdate()));else out.print(dto.getPostdate());%> <i class="fa fa-folder-open"></i>&nbsp;<%= dto.getCategorynames() %></span>
						<div class="pull-right"><div class="rw-ui-container"></div></div><br>
						<p><%= dto.getDescription() %></p>
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
				<%if(request.getAttribute("playlist_json")!=null){ %>
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
		<%} %>
				
			</div>
			<!-- end right side -->
					
					
				
				</div><!-- /.container-fluid -->
				
				
				
				<!-- BEGIN FOOTER -->
				<jsp:include page="_footer.jsp"></jsp:include>
				<!-- END FOOTER -->
				
				
			</div><!-- /.page-content -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->
		
		
								<div id="form-add-playlist" class="white-popup mfp-with-anim mfp-hide" >
								<form method="post" name="frmcreateplaylist" action="/" id="frmcreateplaylist"  class="form-horizontal">
									  <div class="form-group">
										<label for="exampleInputEmail1">Playlist name</label>
										<input type="text" class="form-control" name="playlistname" id="playlistname" placeholder="EG. MyTop">
										<small  class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
									  </div>
									  <div class="form-group">
										<label for="exampleInputPassword1">Description</label>
										<input type="text" name="description" class="form-control" id="description" placeholder="EG. My music">
									 </div>
									 <div class="form-group">
										<label>Set View</label>
										<select class="form-control" id="publicview" name="publicview" tabindex="2">
											<option value="false">Private</option>
											<option value="true">Public</option>
										</select>
									</div>
									<button type="button" id="btclosefrmupdate" class="btn btn-default" data-dismiss="modal">Close</button>
									  <button type="submit"   class="btn btn-success">Create</button>
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
		<script src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
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
		
		<script src="videoplayer/libs/video-js/video.js"></script>
	    <script src="videoplayer/youtube.js"></script>
		<script src="videoplayer/src/videojs.logobrand.js"></script>
		 <script>

			// save a reference to the video element
			video = document.querySelector('video'),
			
			// save a reference to the video.js player for that element
			player = videojs(video, {'techOrder': ['youtube'], 'src': 'https://www.youtube.com/watch?v=<%= dto.getYoutubeurl() %>'});

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
	
		
		<script src="assets/js/script/comments.js"></script>
		<script src="assets/js/script/playplaylist.js"></script>
		<!-- Go to www.addthis.com/dashboard to customize your tools -->
		<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5291b47f21c49656" async="async"></script>
		
		<script>
	
			$(document).ready(function(){
				
		<%
				boolean isLogin = false;
				int userid = 0;
				User usr = (User) session.getAttribute("ka_user");
				if(usr != null){
					isLogin = true;
					userid = usr.getUserid();
				}
			%>
			
				$("#comments").html(getComments(<%=request.getAttribute("comment_json")%>,<%= isLogin %>));
				$("#commentform").submit(function(e){
					e.preventDefault();
					
					if($("#commenttext").val().trim()!=""&&$("#commenttext").val().trim()!=null&&$("#commenttext").val().trim()!="<br/>"){
					
					$.post("add_comment.act" , 
						{
							'commenttext'  : $("#commenttext").val(),
							'v'	:	<%=dto.getVideoid()%>
						},function(data){ 
							
							$("#comments").html(getComments(data, <%= isLogin %>));	
							$("#commenttext").val(null);
							$("#commenterror").text("");
						});
						
					}else{
						$("#commenterror").text("Your Comment Can not Empty!");
					}
				});
			});
		</script>
		
		<%if(request.getAttribute("playlist_json")!=null){ %>
		<script>
			$(document).ready(function(){
				$("#playlist").html(getPlaylist(<%=request.getAttribute("playlist_json")%>));
				$("#playlistsidebar").html(getPlaylistSidebar(<%=request.getAttribute("playlist_json")%>));
			});
			</script>
		<%} %>		
		
		<script type="text/javascript">
		function isNotLogin(){
			
		}
		
		

		</script> 
		
		
		<%if(request.getAttribute("logid")!=null){ %>
		<script>
			window.onbeforeunload = function(){
				$.post("stopwatching.act" ,{
					l : '<%= request.getAttribute("logid").toString() %>'
				}, 
					function(data){
						//location.href="index.act";
					}
				);
		
				return "";
			}
		</script>	
		<%} %>
		
		
	</body>

		
</html>