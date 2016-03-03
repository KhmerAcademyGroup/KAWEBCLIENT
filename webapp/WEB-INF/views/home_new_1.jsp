<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>

		<jsp:include page="shared/_header.jsp" />
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
  		
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
		</style> 
		
	</head>
 
	<body class="tooltips no-padding" >
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="shared/_menu.jsp" />	
		<!-- END TOP NAVBAR -->
		
<!-- 	style="background:#E8E9EE" style="background:#fff;" -->
	        <!-- Page Content -->
	        <div class="container ka-container"  >
	            		
	            		
	            			
	            			
				            <div class="row">
				            	
				            	
				            	<!-- Bannner -->
				            	<div class="row" style="margin-bottom: 20px;padding: 15px;">
										<div class="col-lg-10">
												<jsp:include page="shared/_banner.jsp"></jsp:include>
										</div>
										<div class="col-lg-2">
												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/appstore.png"/>
												<div style="height:20px"></div>
												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/playstore.png"/>
										</div>
								</div><!-- /.the-box -->
								
								
								
								<!-- BEGIN OWL CAROUSEL -->
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Recent Courses</span>
										<br/>
										<br/>
									   	<div id="recent">
									    
										</div>
								</div><!-- /.the-box -->
								
								
								
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">General Education</span>
										<br/>
										<br/>
										<div id="generalEdu">	
																    
										</div>
								</div>
								
								
								
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Computer Science</span>
										<br/>
										<br/>
										<div id="computerScience">	
																    
										</div>
								</div>
								
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Language</span>
										<br/>
										<br/>
										<div id="language">	
																    
										</div>
								</div>
								
								
							</div>
						
	                        
	                   
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    <!-- /#wrapper -->
	    
	    
	    
		
		<!-- BEGIN FOOTER -->
		<jsp:include page="shared/_footer.jsp" />
		
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>
		
		<script type="text/javascript">
			
			
		    $(document).ready(function() {
		    	
		    	//$.post("dashboard.act", {
				//}, function(data) {
					
		
	 			 	var recent="";
	 				recent = "<div id='owl-recent' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						recent+=	 "<div class='mitem'>"
										+"<div>"
											+"<div class='thumbnail media-lib-item'>"
												+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
									 			+"<div class='caption text-left'>"
													+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
													+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
												+"</div>"
											+"</div>"
										+"</div>"
									 +"</div>";
					} 
					
					recent+= "</div>";
					$("#recent").html(recent);
					
					var generalEdu="<div id='owl-generalEdu' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						generalEdu+="<div class='mitem'>"
										+"<div>"
											+"<div class='thumbnail media-lib-item'>"
												+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
										 		+"<div class='caption text-left'>"
													+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
													+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
												+"</div>"
											+"</div>"
										+"</div>"
									+"</div>";
					} 
						
					generalEdu+= "</div>";
					$("#generalEdu").html(generalEdu);
						
						
					var computerScience="<div id='owl-computerScience' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						computerScience+="<div class='mitem'>"
												+"<div>"
												+"<div class='thumbnail media-lib-item'>"
													+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
										 			+"<div class='caption text-left'>"
														+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
														+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
					} 
						
					computerScience+= "</div>";
					$("#computerScience").html(computerScience);	
						
						
					var language="<div id='owl-language' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						language		+="<div class='mitem'>"
												+"<div>"
												+"<div class='thumbnail media-lib-item'>"
													+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
										 			+"<div class='caption text-left'>"
														+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
														+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
					} 
						
					language+= "</div>";
					$("#language").html(language);
					
						
					showme(); 
				//});
		    	
		    });
			
		    function showme(){
				var owl_recent = $("#owl-recent");
				owl_recent.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			     
			    var owl_generalEdu = $("#owl-generalEdu");
			     
			    owl_generalEdu.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_computerScience = $("#owl-computerScience");
			     
			    owl_computerScience.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_language = $("#owl-language");
			     
			    owl_language.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
		    }
		    
		    
		    
		</script>  
		
	</body>
</html>