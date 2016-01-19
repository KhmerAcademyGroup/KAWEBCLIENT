<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/angular.min.js"></script>
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
  		<!-- Player -->
  		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video-js.css">
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.css">
		<!-- Player Responsive -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/player-responsive.css" rel="stylesheet">
		<!-- style -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/mycss.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/perfect-scrollbar.css" rel="stylesheet">
		
		
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
		
		
		<div ng-app="myApp" ng-controller="myController"> 
		
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
										<a href="playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}" style="cursor:pointer;">${playlist.playlistName}</a><br /> 
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
									<h3><strong class="text-black"><a>{{VIDEO.videoName}} </a></strong></h3>
								</div>
								
								<div class="col-sm-4 col-xs-12" style="height:75px">
									<div class="the-box no-border store-list">
									 <div class="media">
			                            <a class="pull-left" >
			                            <img class="media-object img-circle" ng-src="${pageContext.request.contextPath}/resources/uploads/{{VIDEO.userImageUrl}}" alt="Avatar" style="width:50px">
			                            <div class="clearfix visible-xs"></div>
			                            <div class="media-body">
			                                <a href="#"></a>
			                                <h4 class="media-heading" style="font-size:14px">
			                                 <strong class="text-black">{{VIDEO.username}}</strong>
											 </h4>
			                            </div><!-- /.media-body -->
			                        </div><!-- /.media -->
								</div>
								</div>
								<div class="col-sm-8 col-xs-12">
									<ul class="pull-right" style="list-style:none" id="btngr">
										<li><br></li>
										<li style="text-align:right"><strong><i class="fa fa-eye" style="padding:0px 10px"></i>{{VIDEO.viewCounts}}</strong></li>
										<li style="font-size:12px">
										
											<span id="vote">
												<%if(request.getSession().getAttribute("ka_user") != null){ %>
												<a href="javascript:votes('vote.act?v=getVideoid() %>&type=uservote>0 ? 0 : 1%>')">
													<i class="fa fa-thumbs-up fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
														<strong id="plus">+</strong>
												</a>
												<a href="javascript:votes('vote.act?v=getVideoid() %>&type=uservote<0 ? 0 : -1%>')">
													<i class="fa fa-thumbs-down fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
													<strong id="minus">-</strong>
												</a>
												<%}else{ %>
													<i class="fa fa-thumbs-up fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
														<strong id="plus">+</strong>
													<i class="fa fa-thumbs-down fa-2x" style="padding:0px 10px; color: #3BAFDA;"></i>
													<strong id="minus">-</strong>	
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
											
												<div class="btn-group" ng-show="VIDEO.fileUrl!=null && VIDEO.fileUrl!='' && VIDEO.fileUrl!='#'">
												  <a class="btn btn-success" ng-href="{{VIDEO.fileUrl}}" target="_blank">
													<i class="fa fa-download"></i> Download 
												  </a>
												</div>
												
											
											<%-- <c:if test="{{VIDEO.fileUrl}}!='' && {{VIDEO.fileUrl}}!=null && {{VIDEO.fileUrl}}!='#'}">
												<div class="btn-group">
												  <a class="btn btn-success" ng-href="{{VIDEO.fileUrl}}" target="_blank">
													<i class="fa fa-download"></i> Download 
												  </a>
												</div>
											</c:if> --%>
										</li>
									</ul>
								</div>
								<!-- End Video Info -->
								<!-- Video Description -->
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<hr class="hr-style-one">
									<span class="pull-left"><i class="fa fa-calendar-o"></i>&nbsp; {{VIDEO.postDate }} <i class="fa fa-folder-open"></i>&nbsp; {{VIDEO.categoryName}}</span>
									<div class="pull-right"><div class="rw-ui-container"></div></div><br>
									<p>{{VIDEO.description}}</p>
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
						
							<!-- PLAY LIST -->
							<div class="contentHolder bg-gray hidden-xs" style="left:-15px" id="SuppressScrollX_1" ng-show="${data.PLAYLIST!=null }">
								<div class="content" id="playlist">
								
								
								<c:forEach items="${data.PLAYLIST}" var="plist">
									<div class="the-box no-border store-list bg-gray" style="margin-bottom:5px;padding-bottom:5px" ng-click="changeUrlVideo('${plist.videoId }')">
										<div class="media">
											<a class="pull-left">
									    		<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/${plist.youtubeUrl }/mqdefault.jpg" style="width:100px;height:60px">
									    	</a>
									    	<div class="clearfix visible-xs"></div>
									    	<div class="media-body">
									        <h4 class="media-heading">
									        	<a style="color:white">${plist.videoName}</a>
											</h4>
									        <ul class="list-inline">
									            <li class="text-muted">by ${plist.username }</li>
									        </ul>
									        </div><!-- /.media-body -->
									    </div><!-- /.media -->
									</div>

								</c:forEach>
								
								
								
								</div><!-- /.content -->
							</div>
							<!-- END PLAYLIST -->
							
						
						 	<div class="related_videos" ng-repeat="relate in RELATEDVIDEO">
								<div class="the-box no-border store-list" style="margin-bottom:5px;padding-bottom:5px;">
									 <div class="media">
			                            <!-- <a class="pull-left" ng-href="play.act?v={{relate.videoId}}" style="width:40%"> -->
			                            <a class="pull-left" ng-href="playvideo?v={{relate.videoId}}" style="width:40%">
			                            <img alt="image" class="store-image img-responsive" ng-src="https://i.ytimg.com/vi/{{relate.youtubeUrl}}/mqdefault.jpg" style="width:100%;"></a>
			                            <div class="media-body">                                
			                                <h4 class="media-heading">
			                                   <a ng-href="playvideo?v={{relate.videoId}}"><strong class="text-black">{{relate.videoName}}</strong></a> -->
											 </h4>
			                                <ul class="list-inline">
			                                	<li>{{relate.viewCounts}} Views</li>
			                                    <li>by {{relate.username}}</li>
			                                </ul>
			                            </div>
			                        </div>
								</div>
							</div> 
							
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
		
	    
	    </div><!-- controller angular -->
		
	
		
	    
		<script>
	      jQuery(document).ready(function ($) {
	        "use strict";
			$('#SuppressScrollX_1').perfectScrollbar({suppressScrollX: true});
	      }); 
	    </script>
	    
	    <script src="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/videoplayer/youtube.js"></script>
		<script src="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/change-parameter-url.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/perfect-scrollbar.js"></script>
		
		<script>
		
		function playVideo(videoURL){
			// save a reference to the video element
			video = document.querySelector('video');
			if(video==null){
				$('#myplayerwrapper').html('<video id="vid1" class="video-js vjs-default-skin" controls autoplay preload="auto"></video>');
				video = document.querySelector('video');
			}
			// save a reference to the video.js player for that element
			player = videojs(video, {'techOrder': ['youtube'], 'src': 'https://www.youtube.com/watch?v='+ videoURL});

			// initialize the plugin with some custom options:
			player.logobrand({
				//height: "32px",
				//width: "32px",
				image: "${pageContext.request.contextPath}/resources/videoplayer/logoka.png",
				destination: "http://www.khmeracademy.org/"
			});
			
		}
		</script> 
		
		<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5291b47f21c49656" async="async"></script>
		
		<script type="text/javascript">(function(d, t, e, m){
			//	if (RW && RW.initRating) return;
		
		    // Async Rating-Widget initialization.
		    window.RW_Async_Init = function(){
		                
		        RW.init({
		            huid: "221456",
		            uid: "0c7735d3de292b0250869c1816826be2",
		            source: "website",
		            options: {
		                "size": "medium",
		                "style": "oxygen",
		                "forceSync": false
		            } 
		        });
		        RW.render();
		    };
		        // Append Rating-Widget JavaScript library.
		    var rw, s = d.getElementsByTagName(e)[0], id = "rw-js",
		        l = d.location, ck = "Y" + t.getFullYear() + 
		        "M" + t.getMonth() + "D" + t.getDate(), p = l.protocol,
		        f = ((l.search.indexOf("DBG=") > -1) ? "" : ".min"),
		        a = ("https:" == p ? "secure." + m + "js/" : "js." + m);
		    if (d.getElementById(id)) return;              
		    rw = d.createElement(e);
		    rw.id = id; rw.async = true; rw.type = "text/javascript";
		    rw.src = p + "//" + a + "external" + f + ".js?ck=" + ck;
		    s.parentNode.insertBefore(rw, s);
		    }(document, new Date(), "script", "rating-widget.com/"));
		</script>
		
		
		<script>
			var app = angular.module('myApp', []);
			app.controller('myController', function($scope, $http) {
				
				loadVideo(getURLParameter("v"));
				
				$scope.changeUrlVideo = function(vid){
					var newParam = vid + "&playlist=" + getURLParameter("playlist");
					changeUrlParam ("v", newParam);
					loadVideo(vid);
				}
				
				function loadVideo(vid){
					$http.get("${pageContext.request.contextPath}/rest/elearning/getplayvideo?v="+ vid).then(function(response) {
				        $scope.RELATEDVIDEO = response.data.RELATEVIDEO;
				        $scope.COMMENT = response.data.COMMENT;
				        $scope.VIDEO = response.data.VIDEO;
				        $("title").text(response.data.VIDEO.videoName);
				        playVideo(response.data.VIDEO.youtubeUrl);
				    });
				}
			    
			});
			
			$("#sidebar-wrapper").height($("#page-content-wrapper").outerHeight());
		    $("#menu-toggle").click(function(e) {
		        $("#wrapper").toggleClass("toggled");
		    });
		    
		</script>
		
	    
	</body>
</html>	