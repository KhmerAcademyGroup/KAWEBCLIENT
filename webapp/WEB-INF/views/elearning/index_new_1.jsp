<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:include page="../shared/_header.jsp" />
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/angular.min.js"></script>
		<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.0-rc.1/angular-sanitize.js"></script>
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
		<!-- style -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/mycss.css" rel="stylesheet">
		<!-- style -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/mycss.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/perfect-scrollbar.css" rel="stylesheet">
 		<!-- Carousel -->
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		
		<style>
			.owl-carousel .mitem{
				/* padding: 30px 0px; */
				margin-right: 10px; 
				color: #FFF;
				-webkit-border-radius: 3px;
				-moz-border-radius: 3px;
				border-radius: 3px;
				text-align: center;
			}
			.media-lib-item:hover{
				box-shadow: 2px 5px 10px -4px #4D4D4D;
			}
			.media-lib-item{
				box-shadow:2px 5px 10px 0px #E8E9EE;
			}
			
			.owl-carousel .item{
				padding:0px;
				margin:0px;
			}
			.owl-carousel .item img{
				width:100%;
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
							<!-- <a class="block-collapse" style="color:#006a00;" href="#panel-collapse-course"> -->
							<strong style="color:#fff;">Category</strong>
							<!-- <span class="right-content">
								<span class="right-icon">
									<i class="glyphicon glyphicon-chevron-down icon-collapse"></i>
								</span>
							</span> -->
							</a>
						</h3>
					  </div>
						<div id="panel-collapse-course" class="collapse in">
						  <div class="panel-body" style="padding: 5px;">
							
							<div class="panel-group work-category-wrap"" id="accordion-2" >
					            
					            	
									            	
														
									            	<c:forEach items="${data.RES_DATA}" var="category">
													
														<div class="panel panel-primary filter">
														  <div class="panel-heading" style="background:#F5F7FA;">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" id="listByMainCategory" data-id="${category.mainCategoryId}" style="color:#434a54;"  href="#${category.maincategoryname}">
																	<b id="mName">${category.mainCategoryName}</b>
																</a>
															</h3>
														  </div>
														</div><!-- /.panel panel-primary -->
														
														
													
													</c:forEach>
									
												</div><!-- End panel group -->
							
							
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
				</div><!-- /.panel panel-primary -->
	            
	          
	            
	            
	            	            
	        </div>
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="page-content-wrapper" style="background:white;">
	            <div class="container-fluid">
	            	<div class="row" style="background:#fff;">
	            		<div class="col-lg-12" style="min-height:500px">
	            			
	            			<div id="clickMain" class="the-box no-border clear-padding" style="margin-bottom: 0px;display:none">
										<span class="small-title" style="font-weight: bold;" id="getMainCate"> </span>
										<br/>
										<br/>
									   	<div id="getCourse">
									    
										</div>
							</div>
	            			
	            			<div id="loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"/></div>
	            			
	            			<div id="default" style="display: none">
	            			
	            			
	            			   <!-- BEGIN OWL CAROUSEL -->
								
							<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Recent Courses</span>
										<br/>
										<br/>
									   	<div id="recent">
									    
										</div>
							</div><!-- /.the-box -->
							
							<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Popular Videos</span>
										<br/>
										<br/>
									   	<div id="popVideo">
									    
										</div>
							</div><!-- /.the-box -->
							
							
								
						<sec:authorize access="isAuthenticated()" var="logged"/>
								
							<sec:authorize access="isAuthenticated()">
								
								<!-- Recommended Courses -->
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Recommended Courses</span>
										<br/>
										<br/>
									   	<div id="recommended_courses">
									    
										</div>
								</div><!-- /.the-box -->
								
								
								
								<!-- Recommended Videos -->
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Recommended Videos</span>
										<br/>
										<br/>
									   	<div id="recommended_videos">
									    
										</div>
								</div><!-- /.the-box -->
								
							</sec:authorize>
							
								
								<!-- End  OWL CAROUSEL -->
	                        
	                        
	                        </div> <!-- End Default -->
	                        
	                        
	                        
	                    </div><!-- end col-lg-12 -->
	                </div> <!-- row -->
	            </div><!-- end container-fluid -->
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    </div>
	    <!-- /#wrapper -->
	    
	    
	    
	    
	    <jsp:include page="../shared/_footer.jsp" />
		
	    
	    </div><!-- controller angular -->
		
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/perfect-scrollbar.js"></script>
		<script>
	      jQuery(document).ready(function ($) {
	        "use strict";
			$('#SuppressScrollX_1').perfectScrollbar({suppressScrollX: true});
	      }); 

		
			
			
			    $(document).ready(function() {
			    	
			    	/* $("#sidebar-wrapper").height($("#page-content-wrapper").outerHeight()); */
				    $("#menu-toggle").click(function(e) {
				        $("#wrapper").toggleClass("toggled");
				    });
			    	
				   
				    
				    $.ajax({
						url :"${pageContext.request.contextPath}/rest/elearning/index_new_1/${userid}",
						type: "GET",
						dataType: "JSON",
						success: function(data){ console.log(data);
						
							var recent="";
			 				recent = "<div id='owl-recent' class='owl-carousel owl-theme'>";
							$.each(data.RESP_DATA, function(key, value){
								recent+="<div class='mitem'>"
												+"<div>"
												+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
													+"<a title='"+value.playlistName+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
										 			+"<div class='caption text-left'>"
														+"<p class='small shortenString'><a title='"+value.playlistName+"' class='no-underline' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.playlistName+"</b></a><br>"
														+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
														+"<span class='small text-muted' style='color:#4D4D4D'>"+value.countVideos+" Videos | By "+value.username+"</span>"
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
							});
							recent+= "</div>";
							$("#recent").html(recent);	
								
							var popV="<div id='owl-pop' class='owl-carousel owl-theme'>";
							$.each(data.POPULAR_VIDEOS, function(key, value){
								popV+="<div class='mitem'>"
									+"<div>"
									+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
										+"<a href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' title='"+value.videoTitle+"'><img  src='https://i.ytimg.com/vi/"+value.youtubeUrl+"/mqdefault.jpg' alt='...'></a>"
										+"<div class='caption text-left'>"
											+"<p class='small shortenString'><a class='no-underline' title='"+value.videoTitle+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.videoTitle+"</b></a><br>"
											+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
											+"<span class='small text-muted' style='color:#4D4D4D'>"+value.view+" Views | By "+value.username+"</span>"
											+"<br/><span class='small text-muted' style='color:#4D4D4D'>Course : "+value.playlistName+"</span>"
										+"</div>"
									+"</div>"
								+"</div>"
							 +"</div>";
							});
							popV+= "</div>";
							$("#popVideo").html(popV);	
							
							
							
							showme();
							
							
							if('${logged}' == 'true'){
								
								var recommended_courses="";
								recommended_courses = "<div id='owl-recommend-courses' class='owl-carousel owl-theme'>";
								$.each(data.RECOMMENDED_COURSE, function(key, value){
									recommended_courses+="<div class='mitem'>"
													+"<div>"
													+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
														+"<a title='"+value.playlistName+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
											 			+"<div class='caption text-left'>"
															+"<p class='small shortenString'><a class='no-underline' title='"+value.playlistName+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.playlistName+"</b></a><br>"
															+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
															+"<span class='small text-muted' style='color:#4D4D4D'>"+value.countVideos+" Videos | By "+value.username+"</span>"
														+"</div>"
													+"</div>"
												+"</div>"
											 +"</div>";
								});
								recommended_courses+= "</div>";
								$("#recommended_courses").html(recommended_courses);
								
								var recommend_videos="<div id='owl-recommend-videos' class='owl-carousel owl-theme'>";
								$.each(data.RECOMMENDED_VIDEOS, function(key, value){
									recommend_videos+="<div class='mitem'>"
														+"<div>"
														+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
															+"<a href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' title='"+value.videoTitle+"'><img  src='https://i.ytimg.com/vi/"+value.youtubeUrl+"/mqdefault.jpg' alt='...'></a>"
															+"<div class='caption text-left'>"
																+"<p class='small shortenString'><a class='no-underline' title='"+value.videoTitle+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.videoTitle+"</b></a><br>"
																+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
																+"<span class='small text-muted' style='color:#4D4D4D'>"+value.view+" Views | By "+value.username+"</span>"
																+"<br/><span class='small text-muted' style='color:#4D4D4D'>Course : "+value.playlistName+"</span>"
															+"</div>"
														+"</div>"
													+"</div>"
												 +"</div>";
								}); 
									
								recommend_videos+= "</div>";
								$("#recommended_videos").html(recommend_videos);
								
								showRecommend();
								
							}
							
							
							
							$("#default").show();
							$("#loading").hide();
							
						}
			    	});
			    
				    
				    $(document).on('click',"#listByMainCategory" , function(){ 
				    	$("#default").hide();
						$("#loading").show();
						$("#clickMain").hide();
				    	 $.ajax({
								url :"${pageContext.request.contextPath}/rest/elearning/index_new_1/get/"+$(this).data("id"),
								type: "GET",
								dataType: "JSON",
								success: function(data){
									console.log(data);
									if(data.RESP_DATA.length>0){
										$("#getCourse").empty();
										$("#getMainCate").text(data.RESP_DATA[0].maincategoryname);
										$("#course_tmpl").tmpl(data.RESP_DATA).appendTo("#getCourse");
										$("#loading").hide();
										$("#clickMain").show();
									}
								}
							});
	    			});
				    
				    
				    
			    });
			    
			    
			
			
			    function showme(){
			    	var owl_recent = $("#owl-recent");
					owl_recent.owlCarousel({
				    items : 5, //10 items above 1000px browser width
				    itemsDesktop : [1024,4], //5 items between 1000px and 901px
				    itemsDesktopSmall : [900,3], // betweem 900px and 601px
				    itemsTablet: [600,2], //2 items between 600 and 0
				    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
				    });
					
					var owl_recent = $("#owl-pop");
					owl_recent.owlCarousel({
				    items : 5, //10 items above 1000px browser width
				    itemsDesktop : [1024,4], //5 items between 1000px and 901px
				    itemsDesktopSmall : [900,3], // betweem 900px and 601px
				    itemsTablet: [600,2], //2 items between 600 and 0
				    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
				    });
					
			    }
			    
			    function showRecommend(){
			    	var owl_recommend_videos = $("#owl-recommend-videos");
				     
			    	owl_recommend_videos.owlCarousel({
				    items : 5, //10 items above 1000px browser width
				    itemsDesktop : [1024,4], //5 items between 1000px and 901px
				    itemsDesktopSmall : [900,3], // betweem 900px and 601px
				    itemsTablet: [600,2], //2 items between 600 and 0
				    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
				    });
				    
				    var owl_recommend_courses = $("#owl-recommend-courses");
				     
				    owl_recommend_courses.owlCarousel({
				    items : 5, //10 items above 1000px browser width
				    itemsDesktop : [1024,4], //5 items between 1000px and 901px
				    itemsDesktopSmall : [900,3], // betweem 900px and 601px
				    itemsTablet: [600,2], //2 items between 600 and 0
				    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
				    });
			    }
			    
	    </script>
		
		
		<script id="course_tmpl" type="text/x-jquery-tmpl">
								
	            						<div class="mitem" style="width:228px;float:left;margin-right:10px">
	            							<div>
	            								<div class="thumbnail media-lib-item" style="height: 250px;padding: 0px;">
	            									<a href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}">
	            										<img src="{{= thumbnailUrl }}" alt="...">
	            									</a>
	            									<div class="caption text-left">
	            										<p class="small shortenString">
	            											<a class="no-underline" href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}" style="color:#50a253;font-size: 16px;">
	            												<b>{{= playlistName }}</b>
	            											</a>
	            											<br>
	            											<span class="text-muted" style="color:#4D4D4D">{{= description }}</span>
	            										</p>
														<span class="small text-muted" style="color:#4D4D4D">{{= countVideos }} Videos | By {{= username }}</span>
	            									</div>
	            								</div>
	            							</div>
	            						</div>
	            					
		</script>
		
		
		
	</body>
</html>