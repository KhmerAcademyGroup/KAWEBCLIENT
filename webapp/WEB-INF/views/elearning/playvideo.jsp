<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="myApp" ng-controller="myController">
	<head>
		<jsp:include page="../shared/_header.jsp" />
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/angular.min.js"></script>
		<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.0-rc.1/angular-sanitize.js"></script>
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
		
		
		<div> 
		
		<div id="wrapper">
		
		

	        <!-- Sidebar -->
	        <div id="sidebar-wrapper" style="height: auto !important;">
	        	<br />
	        	
	            <div class="panel panel-primary">
					  <div class="panel-heading" style="background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0);">
						<h3 class="panel-title">
							<a class="block-collapse" style="color:#006a00;" data-toggle="collapse" href="#panel-collapse-course">
							<strong style="color:#fff;">COURSE</strong>
							<span class="right-content">
								<span class="right-icon">
									<i class="glyphicon glyphicon-chevron-down icon-collapse"></i>
								</span>
							</span>
							</a>
						</h3>
					  </div>
						<div id="panel-collapse-course" class="collapse in">
						  <div class="panel-body" style="padding: 5px;">
							
							<div class="panel-group" id="accordion-2">
	            
	            
	            	<c:forEach items="${data.MAINCATEGORY}" var="category">
					
						<div class="panel panel-primary">
						  <div class="panel-heading" style="background:#F5F7FA;">
							<h3 class="panel-title">
								<a class="block-collapse collapsed" style="color:#50a253;" data-parent="#accordion-2" data-toggle="collapse" href="#${category.maincategoryname}" aria-expanded="false">
								<b>${category.maincategoryname}</b>
								<span class="right-content">
									<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
								</span>
								</a>
							</h3>
						  </div>
							
							
							<div id="${category.maincategoryname}" class="collapse" aria-expanded="false" style="height: 0px;">
							  <div class="panel-body" style="padding: 0px;">
							  	<c:forEach items="${data.PLAYLIST_SIDEBAR}" var="playlist">
									<c:if test="${playlist.maincategory==category.maincategory}">
										 <%-- <a href="playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}" style="cursor:pointer;"><span><i class="fa fa-play-circle"></i></span>&nbsp;${playlist.playlistName}</a><br />  
									 --%>
										 <a class="list-group-item mail-list" href="playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}" style="height: 45px; overflow: hidden;  position: relative;    text-overflow: ellipsis; white-space: nowrap;">										
												<span class="fa fa-th-list text-primary"></span>												
												<strong class="text-info">&nbsp;${playlist.playlistName}</strong>																			
										</a>
									</c:if>
								</c:forEach>
							  </div><!-- /.panel-body -->
							</div><!-- /.collapse in -->
							
							
						</div><!-- /.panel panel-primary -->
						
						
					
					</c:forEach>
					
				</div><!-- End panel group -->
							
							
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
				</div><!-- /.panel panel-primary -->
	            
	            <!-- Recent Views -->
	        		<div >
	        		<div class="panel panel-primary">
					  <div class="panel-heading" style="background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0);">
						<h3 class="panel-title">
							<a class="block-collapse" style="color:#006a00;" data-toggle="collapse" href="#panel-collapse-history">
							<strong style="color:#fff;">RECENT VIEW</strong>
							<span class="right-content">
								<span class="right-icon">
									<i class="glyphicon glyphicon-chevron-down icon-collapse"></i>
								</span>
							</span>
							</a>
						</h3>
					  </div>
						<div id="panel-collapse-history" class="collapse in">
						  <div class="panel-body" style="padding: 0px;">
							<div >
							<c:forEach items="${data_user_history.RES_DATA}" var="history">
									<c:choose>
								      <c:when test="${fn:length(history.videoName) < 28 }">
								      		<%-- <a href="playvideo?v=${history.videoId}" style="cursor:pointer;color:#006a00;"><span style="color:#880000;"><i class="fa fa-play-circle"></i></span>&nbsp;${history.videoName}</a><br />
								      --%>
											  <a class="list-group-item mail-list" href="playvideo?v=${history.videoId}" style="height: 45px; overflow: hidden;  position: relative;    text-overflow: ellipsis; white-space: nowrap;">										
												<span class="favorite fa fa-play-circle text-warning"></span>
												
												<span>${history.videoName}</span>																			
											  </a>
											  
											
											
								      </c:when>
								
								      <c:otherwise>
								      		<%-- <a href="playvideo?v=${history.videoId}" style="cursor:pointer;color:#006a00;"><span style="color:#880000;"><i class="fa fa-play-circle"></i></span>&nbsp;${fn:substring(history.videoName, 0, 28)}&nbsp;...</a><br />
								       --%>
											  <a class="list-group-item mail-list" href="playvideo?v=${history.videoId}" style="height: 45px; overflow: hidden;  position: relative;    text-overflow: ellipsis; white-space: nowrap;">										
												<span class="favorite fa fa-play-circle text-warning"></span>												
												<span>${fn:substring(history.videoName, 0, 28)}</span>																			
											  </a>
								      </c:otherwise>
								    </c:choose>
							</c:forEach>
							</div>
							
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
					</div><!-- /.panel panel-primary -->
				</div>
	            
	            
	            	            
	        </div>
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="page-content-wrapper" style="background:#dcdcdc;">
	            <div class="container-fluid">
	            	<div class="row" style="background:#fff;">
	            		<div class="col-lg-12">
	            		
	            			<h4 id="courseTitle" style="color:#4c954d;margin-bottom: 0px;font-weight: bold;">E-LEARNING</h4>
	            		
	            			<input type="hidden" value="{{LOGID}}" id="hiddenLogId" />
	            			<br />
	            			
	            
				            <!-- left side -->
				            <div class="col-sm-12 col-xs-12 the-box no-border clear-padding" id="left_side">
				            	
				            	
				            	
								<!-- Video Demo -->
								<div class="col-lg-9 col-md-7 col-sm-12">
									
									<div class="alert alert-danger square fade in alert-dismissable" ng-show="VIDEOSTATUS==false" style="display:none" id="videoMESSAGE">
									  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
									  <strong>Video Not Found!</strong>
									</div>
								
								
									<div id="myplayerwrapper" >
										<video id="vid1" class="video-js vjs-default-skin" controls autoplay preload="auto"></video>
									</div>
								</div>
								<!-- End Video End -->
								
								
								
								<!-- PLAY LIST -->
								<div class="col-lg-3 col-md-5 col-sm-12" ng-show="VIDEOSTATUS==true">
								
									<div class="contentHolder bg-gray" id="SuppressScrollX_1" ng-show="${data.PLAYLIST!=null }">
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
											        <ul class="list-inline" style="color:#fff;">
											            <%-- <li class="text-muted">by ${plist.username }</li> --%>
											            <li style="color:#a6a6a6;">by ${plist.username }</li>
											        </ul>
											        </div><!-- /.media-body -->
											    </div><!-- /.media -->
											</div>
			
										</c:forEach>
										
										
										
										</div><!-- /.content -->
									</div>
						
								</div>
								<!-- END PLAYLIST -->
								
								<!-- div-column -->
								<div class="col-lg-9 col-md-7 col-sm-12" ng-show="VIDEOSTATUS==true">
								
									<!-- Video Info -->
									<div class="col-sm-12">
										<h3><strong style="color:#5f5f5f;"><span ng-bind-html="VIDEO.videoName"></span></strong></h3>
									</div>
									
									<div class="row">
									<div class="col-sm-5 col-xs-12" style="height:75px">
										<div class="the-box no-border store-list">
											 <div class="media">
					                            <a class="pull-left" >
					                            <img class="media-object img-circle" ng-src="{{VIDEO.userImageUrl}}" alt="Avatar" style="width:50px">
					                            <div class="clearfix visible-xs"></div>
					                            <div class="media-body">
					                                <a href="#"></a>
					                                <h4 class="media-heading" style="font-size:14px">
					                                 <strong class="text-black"><span ng-bind-html="VIDEO.username"></span></strong>
													 </h4>
					                            </div><!-- /.media-body -->
					                        </div><!-- /.media -->
										</div>
									</div>
									
									
									
									<div class="col-sm-7 col-xs-12">
										<ul class="pull-right" style="list-style:none" id="btngr">
											<li><br></li>
											
											<!-- <li style="text-align:right"><strong><i class="fa fa-eye" style="padding:0px 10px"></i>{{VIDEO.viewCounts}}&nbsp;views</strong></li> -->
											
											
											<li style="font-size:12px">
											
												<span><strong><i class="fa fa-eye" style="padding:0px 10px"></i>{{VIDEO.viewCounts}}&nbsp;views</strong></span>
												
												<span id="vote">
													 
													
												</span>&nbsp; 
												
												<div class="btn-group">
												
													  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
														<i class="fa  fa-plus"></i> Add To <span class="caret"></span>
													  </button>
													  
													  <ul class="dropdown-menu" role="menu" style="max-height: 400px;overflow: auto;padding:15px">
														<li><a>Playlist:</a></li>
														<li class="divider"></li>
														<div id="getmoreli">
														
														</div>
														<li class='divider'></li>
														<li><a href='#' onclick=popupfrmadd()>Create new playlist</a></li>
													  </ul>
												</div>
												</span>&nbsp;
												<div class="pull-right">
													<div class="btn-group" ng-show="VIDEO.fileUrl!=null && VIDEO.fileUrl!='' && VIDEO.fileUrl!='#'">
													  <a class="btn btn-success" ng-href="{{VIDEO.fileUrl}}" target="_blank">
														<i class="fa fa-download"></i> Download 
													  </a>
													</div>
												</div>
											
											</li>
										</ul>
									</div>
									</div>
									<!-- End Video Info -->
									
									
									<!-- Video Description -->
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									
									<hr class="hr-style-one">
										<span class="pull-left"><i class="fa fa-calendar-o"></i>&nbsp; {{VIDEO.postDate }} <i class="fa fa-folder-open"></i>&nbsp; <span ng-bind-html="VIDEO.categoryName"></span></span>
										
										<!-- <div class="pull-right">
											<div class="btn-group" ng-show="VIDEO.fileUrl!=null && VIDEO.fileUrl!='' && VIDEO.fileUrl!='#'">
											  <a class="btn btn-success" ng-href="{{VIDEO.fileUrl}}" target="_blank">
												<i class="fa fa-download"></i> Download 
											  </a>
											</div>
										</div> -->
										<br /><br />
										<p ng-bind-html="VIDEO.description"></p>
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
										
											<button type="submit" class="btn btn-primary">Submit comment</button>
											
											</div>
										</form>
				
										<div class="the-box no-border">
											<h4 class="small-heading more-margin-bottom">COMMENTS</h4>
											<ul class="media-list media-sm media-dotted" id="comments">
										
											</ul>
											
										</div>
										
										<form name="frmloadmorecomment">
											<input type="hidden" id="commentonvideoid" />
											<input type="hidden" value="1" id="pagecommentvalue" />
											<div class="loadMoreComment text-center">
												<button onclick="btnLoadMoreComment()" class="btn btn-xs btn-primary">More comment</button>
											</div>
										</form>
										
									</div>
									<!-- End Video Comment -->
								
								
								
								
								
								</div><!-- div-column -->
								
								
								
						</div>
						<!-- end left side -->
						
						
						
						<%-- <!-- right side -->
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
									        <ul class="list-inline" style="color:#fff;">
									            <li class="text-muted">by ${plist.username }</li>
									            <li style="color:#a6a6a6;">by ${plist.username }</li>
									        </ul>
									        </div><!-- /.media-body -->
									    </div><!-- /.media -->
									</div>

								</c:forEach>
								
								
								
								</div><!-- /.content -->
							</div>
							<!-- END PLAYLIST -->
							
						
						 	<!-- <div class="related_videos" ng-repeat="relate in RELATEDVIDEO">
								<div class="the-box no-border store-list" style="margin-bottom:5px;padding-bottom:5px;">
									 <div class="media">
			                            <a class="pull-left" ng-href="playvideo?v={{relate.videoId}}" style="width:40%">
			                            <img alt="image" class="store-image img-responsive" ng-src="https://i.ytimg.com/vi/{{relate.youtubeUrl}}/mqdefault.jpg" style="width:100%;"></a>
			                            <div class="media-body">                                
			                                <h4 class="media-heading">
			                                   <a ng-href="playvideo?v={{relate.videoId}}"><strong class="text-black"><span ng-bind-html="relate.videoName"></span></strong></a>
											 </h4>
			                                <ul class="list-inline">
			                                	<li>{{relate.viewCounts}} Views</li>
			                                    <li>by <span ng-bind-html="relate.username"></span></li>
			                                </ul>
			                            </div>
			                        </div>
								</div>
							</div> --> 
							
						</div>
						<!-- end right side --> --%>
	                        
	                    </div><!-- end col-lg-12 -->
	                </div> <!-- row -->
	            </div><!-- end container-fluid -->
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    </div>
	    <!-- /#wrapper -->
	    
	    
	    <div id="form-add-playlist" class="white-popup mfp-with-anim mfp-hide" >
			<form method="post" name="frmcreateplaylist" action="/" id="frmcreateplaylist"  class="form-horizontal">
				  <div class="form-group">
					<label for="txtplaylistname">Playlist name</label>
					<input type="text" class="form-control" name="txtplaylistname" id="txtplaylistname" placeholder="EG. MyTop">
					<small  class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
				  </div>
				  <div class="form-group">
					<label for="txtdescription">Description</label>
					<input type="text" name="txtdescription" class="form-control" id="txtdescription" placeholder="EG. My music">
				 </div>
				 <!-- <div class="form-group">
					<label>Set View</label>
					<select class="form-control" id="publicview" name="publicview" tabindex="2">
						<option value="false">Private</option>
						<option value="true">Public</option>
					</select>
				</div> -->
				<button type="button" id="btclosefrmupdate" class="btn btn-default" data-dismiss="modal">Close</button>
				  <button type="submit"   class="btn btn-success">Create</button>
			</form>
		</div>
	    
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
		<script>var URL="${pageContext.request.contextPath}";</script>
		<script>var IMGURL="${IMGURL}";</script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/script/playlist.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/script/comments.js"></script>
		
		<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5291b47f21c49656" async="async"></script>
		
		<script>
			var app = angular.module('myApp', ['ngSanitize']);
			app.controller('myController', function($scope, $http, $sce) {
				
				loadVideo(getURLParameter("v"));
				getVoteVideo(getURLParameter("v"));
				getCommentVideo(getURLParameter("v"));
				getUserPlayList(getURLParameter("v"));
				$scope.changeUrlVideo = function(vid){
					stopWatch();
					var newParam = vid + "&playlist=" + getURLParameter("playlist");
					changeUrlParam ("v", newParam);
					loadVideo(vid);
					getUserPlayList(vid);
					getVoteVideo(vid);
					getCommentVideo(vid);
				}
				
				function loadVideo(vid){
					$http.get("${pageContext.request.contextPath}/rest/elearning/getplayvideo?v="+ vid).then(function(response) {
						if(response.data.STATUS != false && response.data.VIDEO.status != false){	
					        $scope.COMMENT = response.data.COMMENT;
					        $scope.VIDEO = response.data.VIDEO;
					        $scope.LOGID = response.data.LOGID;
					        $scope.VIDEOSTATUS = true;
					        $scope.title=response.data.VIDEO.videoName;
					        playVideo(response.data.VIDEO.youtubeUrl);
					        console.log("Course " + response.data.PLAYLISTNAME);
					        $("#courseTitle").text(response.data.PLAYLISTNAME);
						}else{
							$scope.VIDEOSTATUS = false;
					        $scope.title= "Not Found";
					        playVideo(null);
					        $("#videoMESSAGE").show();
						}
				    });
					
				}
			    
			});
			
			/* $("#sidebar-wrapper").height($("#page-content-wrapper").outerHeight()); */
		    $("#menu-toggle").click(function(e) {
		        $("#wrapper").toggleClass("toggled");
		    });
		    
		    
		    function getUserPlayList(vid){
		    	if(vid!=null){
		    		$.get("${pageContext.request.contextPath}/rest/elearning/getuserplaylist", function(data){
		    			if(data.STATUS==true){
		    				$("#getmoreli").replaceWith(getPlaylistname(data,vid));
							checkifexist(data,vid);
		    			} 
					});
		    	}	
			}
			
			$('#btclosefrmupdate').click(function(){
				 $.magnificPopup.close();
			});
			
			$("#frmcreateplaylist").submit(function(){
				event.preventDefault();
				if($("#txtplaylistname").val().trim() == ""){
					$(".msg").css("display","block");
				}else{
					$.post("${pageContext.request.contextPath}/rest/elearning/playlist/createplaylist",{
						playlistname : $("#txtplaylistname").val() ,
						description : $("#txtdescription").val() ,
						publicview : false
					},function(data){
						 location.reload();
						 $.magnificPopup.close();
					});
				}
				
			});
			
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
			
			function stopWatch(){
				var logid = $("#hiddenLogId").val();
				if(logid !="" && logid!=null){
					$.get("${pageContext.request.contextPath}/rest/elearning/stopwatch?logid="+ logid, function(data){
						if(data.STATUS){
							console.log("Stop watch video log id = " + logid);
						}
				    });
				}
				
			}
			
			function getVoteVideo(vid){
				
				$.get("${pageContext.request.contextPath}/rest/elearning/video/getvote?v="+ vid, function(data){
					
					var str = "";
					if(data.CHECKVOTE && data.STATUS){
						str += "<i class='fa fa-thumbs-up fa-2x' style='padding:0px 10px; color: #007500; cursor:pointer;' onclick=unVoteVideo('"+ vid +"')></i>" +
						       "<strong>Like&nbsp;<b style='color:#007500;'>" + data.COUNTVOTE + "</b></strong>";
					}else{
						str += "<i class='fa fa-thumbs-o-up fa-2x' style='padding:0px 10px; color: #333333; cursor:pointer;' onclick=voteVideo('"+ vid +"')></i>" +
							   "<strong>Like&nbsp;<b style='color:#007500;'>" + data.COUNTVOTE + "</b></strong>";
					}
					
					$("#vote").html(str);
				
			    });
			}
			
			function voteVideo(vid){
				$.post("${pageContext.request.contextPath}/rest/elearning/video/vote?v="+ vid, function(data){
					if(data.STATUS){
						getVoteVideo(vid);
					}
			    });
			}
			
			function unVoteVideo(vid){
				 $.post("${pageContext.request.contextPath}/rest/elearning/video/unvote?v="+ vid, function(data){
					 if(data.STATUS){
						getVoteVideo(vid);
					 }
				 });
			}
			
			function btnLoadMoreComment(){
				$("#pagecommentvalue").val(parseInt($("#pagecommentvalue").val()) + 1);
				getCommentVideo($("#commentonvideoid").val());
			}
			
			function getCommentVideo(vid){
				$("#commentonvideoid").val(vid);
				var page = parseInt($("#pagecommentvalue").val());
				var getCommentUrl = "";
				if(page==1){
					getCommentUrl = "${pageContext.request.contextPath}/rest/elearning/video/comment?v="+ vid + "&page=" + page;
				}else{
					getCommentUrl = "${pageContext.request.contextPath}/rest/elearning/video/comment?v="+ vid + "&page=1" + "&item=" + (page*10);
				}
				$.get(getCommentUrl, function(data){
				
					if(data.STATUS==true){ // alert(data.COMMENT[0].userImageUrl);
						$("#comments").html(getCommentHTML(data.COMMENT, data.REPLY, page));
						
						if(page < parseInt(data.PAGINATION.totalPages)){
							$(".loadMoreComment").show();
						}else{
							$(".loadMoreComment").hide();
						}
					}else{
						$("#comments").html("");
						$(".loadMoreComment").hide();
					}
					
			    });
				
			}
			
			
			
			$("#commentform").submit(function(e){
				e.preventDefault();
				
				if($("#commenttext").val().trim()!=""&&$("#commenttext").val().trim()!=null&&$("#commenttext").val().trim()!="<br/>"){
					var vdoid = $("#commentonvideoid").val();
					$.post("${pageContext.request.contextPath}/rest/elearning/video/addcomment" , 
						{
							'commenttext'  : $("#commenttext").val(),
							'v'	: vdoid
						},function(data){ 
							$("#comments").html(getCommentVideo(vdoid));	
							$("#commenttext").val(null);
							$("#commenterror").text("");
							//send(vdoid);
						});
					
				}else{
					$("#commenterror").text("Your Comment Can not Empty!");
				}
			});

			$(window).unload(function(){
				stopWatch();	
		    });
		</script>
		
		<!-- <script type="text/javascript">
			var webSocket = 
				new WebSocket('ws://'+ document.location.host + '${pageContext.request.contextPath}/websockets/comment');
			
			webSocket.onerror = function(event) {
				onError(event)
			};
			
			webSocket.onopen = function(event) {
				onOpen(event)
			};
			
			webSocket.onmessage = function(event) {
				onMessage(event)
			};
			
			function onMessage(event) {
				getCommentVideo(event.data);
				console.log(event.data);
			}
			
			function onOpen(event) {
				console.log("OPEN...");
			}
			
			function onError(event) {
				alert(event.data);
			}
			
			function send(txt) {
// 				var txt = "SENT";
				webSocket.send(txt);
				return false;
			}
		</script> -->
		
		
	</body>
</html>