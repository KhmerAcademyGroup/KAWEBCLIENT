<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
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
			
			.owl-carousel .item{
				padding:0px;
				margin:0px;
			}
			.owl-carousel .item img{
				width:100%;
			}
			
			
			/* 
			.akn-slider{
				border:1px solid #dadada;
				min-height:400px;
				max-height:400px;
				width:60%;
				float:left;
				overflow:hidden;
			}
			.akn-slider img{
				width:100%;
			}
			.akn-tag{
				z-index:1;
				position:absolute;
				top:16px;
			}
			.akn-tag p{
				background-color:rgb(78, 156, 80);
				color:#fff;
				padding:3px 7px;
			}
			.title{
				position:absolute;
				top:336px;
				background-color:rgba(0, 0, 0, 0.65);
				width:100%;
				padding:5px 5px 0px 5px;
			}
			.title p{
				color:#fff;
			}
			.title a{
				color:#fff;
			}
			.next-akn{
				border:1px solid #dadada;
				float:right;
				width:39%;
				min-height:400px;
			}
			.clear{
				clear:both;
			}
			
			.button-left{
				background:url('http://news.khmeracademy.org/resources/images/left.png');
				border-top-right-radius:2px;
				border-bottom-right-radius:2px;
			}
			.button-right{
				right:40.3%;
				background:url('http://news.khmeracademy.org/resources/images/right.png');
				border-top-left-radius:2px;
				border-bottom-left-radius:2px;
			}
			.button-left, .button-right{
				cursor:pointer;
				position:absolute;
				min-height:50px;
				width:30px;
				top:calc(400px / 2 - 10px);
				background-repeat:no-repeat;
				background-size:30px 50px;
				background-color:rgba(218, 218, 218, 0.52);
			}
			.button-left:hover, .button-right:hover{
				background-color:rgba(218, 218, 218, 0.68);
			} */
			
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
				            	<div class="row" style="margin-bottom: 0px;padding: 15px;">
<!-- 										<div class="col-lg-12"> -->
<%-- 												<jsp:include page="shared/_banner.jsp"></jsp:include> --%>
<!-- 										</div> -->
<!-- 										<div class="col-lg-2"> -->
<%-- 												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/appstore.png"/> --%>
<!-- 												<div style="height:20px"></div> -->
<%-- 												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/playstore.png"/> --%>
<!-- 										</div> -->

<!-- 											<div id="owl-banner" class="owl-carousel owl-theme"> -->
											
												<div class="owl-carousel" id="owl-banner">
												    <div class="item">
												    	<img src='${pageContext.request.contextPath}/resources/assets/img/banner/KA-MoEYS-Banner.png' alt=''>
												    </div>
													<div class='item'>
												    	<img src='${pageContext.request.contextPath}/resources/assets/img/banner/ShortCourseBanner.png' alt=''>
													</div>
													<div class='item'>
												    	<img src='${pageContext.request.contextPath}/resources/assets/img/banner/KSHRD-Banner.png' alt=''>
													</div>
												</div>

<!-- 											</div> -->
											
<!-- 											<div class="slide-button"> -->
<!-- 												<div id="sleft" class="button-left"></div> -->
<!-- 												<div id="sright" class="button-right"></div> -->
<!-- 											</div>   -->

								</div> <!-- End Banner -->
								
								
								
								<!-- BEGIN OWL CAROUSEL -->
								
						
							
						<div id="listCourse" style="display:none">
								
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
									<!-- <div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
											<span class="small-title" style="font-weight: bold;">Recommended Videos</span>
											<br/>
											<br/>
										   	<div id="recommended_videos">
										    
											</div>
									</div> -->
									
								</sec:authorize>
									
									
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
									
									<div class="row" style="    background:rgb(78, 156, 80);text-align: center;margin: 20px 15px 20px;height: 50px;border-radius: 3px;padding-top: 3px;font-size: 30px;">
											<a style="color: white;" href="${pageContext.request.contextPath}/elearning">Browse Courses</a>
									</div>
									
								</div>
							
							</div>	 <!-- End List Courses -->
							
							<div id="loading"​ style="display: none" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"/></div>
							
							<div id="tutorialForum" class="row" style="margin-left:0px;margin-top:40px;    margin-bottom: 70px;">
								
								<!--akn-slider  -->
								<div class="the-box no-border clear-padding">
										<div class="col-lg-8" style="padding-left: 0px;">
											<!-- <div class="akn-tag">
												<p>ព័ត៌មាន អាហារូបករណ៍</p>
											</div>
											<div id="owl-akn" class="owl-carousel owl-theme">
											
											</div>
											<div class="slide-button">
												<div id="sleft" class="button-left"></div>
												<div id="sright" class="button-right"></div>
											</div>  -->
											
											
											<div class="panel panel-primary panel-square panel-no-border">
													  <div class="panel-heading" style="background:rgb(78, 156, 80)">
														<h3 class="panel-title"><a href="http://news.khmeracademy.org/"  target="_blank"> <img  src="http://akn.khmeracademy.org/resources/images/logo/e7229712-6ba2-4b7a-94a0-f4c71df9eb9f.png" style="width:20px;height:20px"> All Khmer News </a></h3>
													  </div>
														
														<div class="panel with-nav-tabs panel-default">
															  <div class="panel-heading">
																<ul class="nav nav-tabs">
																	<li class="active"><a href="#panel-home-1" class="newsTab" data-id="getAKN" data-toggle="tab" aria-expanded="true">All</a></li>
																	<li class=""><a href="#panel-scholarship-1" data-toggle="tab" class="newsTab" data-id="getAKNScholarship"   aria-expanded="false">Scholarship</a></li>
																	<li class=""><a href="#panel-technology-1" data-toggle="tab" class="newsTab" data-id="getAKNTechnology"  aria-expanded="false">Technology</a></li>
																    <li class=""><a href="#panel-national-1" data-toggle="tab" class="newsTab" data-id="getAKNNational"  aria-expanded="false">National News</a></li>
																    <li class=""><a href="#panel-international-1" data-toggle="tab" class="newsTab" data-id="getAKNInternational"  aria-expanded="false">International News</a></li>
																	<li class=""><a href="http://news.khmeracademy.org/"  target="_blank"> Other</a></li>
																</ul>
															  </div>
																<div id="panel-collapse-1" class="collapse in" aria-expanded="true">
																	<div class="panel-body">
																		<div class="tab-content">
																			<div class="tab-pane fade active in" id="panel-home-1">
																				<div  id="getAKN" style="height:  315px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-scholarship-1">
																				<div  id="getAKNScholarship" style="height:  315px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-technology-1">
																				<div  id="getAKNTechnology" style="height:  315px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-national-1">
																				<div  id="getAKNNational" style="height:  315px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-international-1">
																				<div   id="getAKNInternational" style="height:  315px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<!-- /.tab-pane fade -->
																		</div><!-- /.tab-content -->
																	</div><!-- /.panel-body -->
																</div><!-- /.collapse in -->
															</div>
							
											  
														
											</div> 
										</div>
										
										
										
										
										
										<div class="col-lg-4" style="padding-right: 0px;">
												<div class="panel panel-primary panel-square panel-no-border">
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
															<h3 class="panel-title"><a href="${pageContext.request.contextPath}/tutorial" >Tutorials</a></h3>
														  </div>
												
														 <div class="inbox" style="    height: 395px;overflow: hidden;padding: 15px;  border: 1px solid #D5DAE0; "  id="listcategory">	
														 	
														 		
																
														 		
															  
															  
															  
														</div>
			            								
																  
															
												</div>  
										</div>
										<div class="clear"></div>
								</div><!--/end akn-slider  -->
							
								<div class="col-lg-12" style="padding-left: 0px;margin-right:0px" >
													<div class="panel panel-primary panel-square panel-no-border">
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
															<h3 class="panel-title"><a href="${pageContext.request.contextPath}/elearning"  >Forum - Recent Questions  </a></h3>
														  </div>
												
														<div class="inbox"  id="getQuestion" style="padding: 15px;  border: 1px solid #D5DAE0;">	
																
														</div>
																  
															
												</div> 
							  </div>
								<!-- <div class="col-lg-4" style="padding-left: 0px;" >
													<div class="panel panel-primary panel-square panel-no-border">
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
															<h3 class="panel-title"><a href="http://expert.khmeracademy.org" target="_blank">Expert Database</a></h3>
														  </div>
												
														 <div class="inbox" style="padding: 15px;  border: 1px solid #D5DAE0;    height: 457px;"  id="listcategory">	
														 	
														 		
																
														 		
															  
															  
															  
														</div>
			            								
																  
															
												</div> 
							 	 </div>  -->
						
	                        </div>
	                   
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    <!-- /#wrapper -->
	    
	    
	    
		
		<!-- BEGIN FOOTER -->
		<jsp:include page="shared/_footer.jsp" />
		
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>
		
		
		 <script id="tlistcategory_tmpl" type="text/x-jquery-tmpl">
					<div class="caption text-left" style="    border-bottom: 1px solid  #D5DAE0;margin-bottom: 5px;padding-bottom: 5px;">
								<a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}"><img style="width:20px;height:20px" width="20px" height="20px" src="{{= categoryLogoUrl }}" /></a>
								<span class="small shortenString">
										<a title="{{= categoryName}}" class="no-underline ka-question" href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}" style="font-size: 14px;color:#37BC9B">
											{{= categoryName}}
										</a>
								</span> <br/>
					</div> 	
		</script>
																
																
		 <script id="question_tmpl" type="text/x-jquery-tmpl">
				<div class="caption text-left" style="    border-bottom: 1px solid  #D5DAE0;margin-bottom: 5px;padding-bottom: 5px;">
						<span class="small shortenString">
								<a title="{{= title }}" class="no-underline ka-question" href="${pageContext.request.contextPath}/forum/question/{{= commentId }}" style="font-size: 16px;color:#37BC9B">
									{{= title }}
								</a>
						</span> <br/>
						<span class="small text-muted" style="color:#4D4D4D">{{= vote }} Votes | {{= commentCount }} Answers</span>
				</div> 
		</script>
		<script type="text/javascript">
			
				 function displayNews(block,data){
					 var akn1 = '<table class="shortenString">';
// 					 console.log(data);
						for(var j=0; j<data.length; j++){
// 							akn1 +='<li class="list-group-item" style="margin-top: 0px;    border: 0px solid #ddd;">'+
// 												'<div class="row">'+
// 												'<div class="col-xs-1"><a href="'+data[j].url+'" target="_blank">​<img style="width:20px;height:20px" height="20px" src="http://akn.khmeracademy.org/resources/images/logo/'+data[j].site.logo+'" alt="'+data[j].site.name+'"></a></div>'+
// 												'<div class="col-xs-11" style=" white-space: nowrap;width: 80%;overflow: hidden;text-overflow: ellipsis;""><a style="color:#656D78" href="'+data[j].url+'" target="_blank">​'+data[j].title+'</a></div>'+
// 												'</div>'+
// 											''+
// 									'</li>';
							akn1 += '<tr style="height: 40px;"><td><a href="'+data[j].url+'" target="_blank">​<img style="width:20px;height:20px" height="20px" src="http://akn.khmeracademy.org/resources/images/logo/'+data[j].site.logo+'" alt="'+data[j].site.name+'"></a></td>'
								   +'<td><a style="padding-left: 10px;color:#656D78;overflow:hidden;text-overflow: ellipsis;white-space: nowrap;" href="'+data[j].url+'" target="_blank">​'+data[j].title+'</a></td></tr>';
						}
						akn1 += "</table>";
						$("#"+block).html(akn1);
				} 
			 
		    $(document).ready(function() {
		    	
		    	$('#owl-banner').owlCarousel({
		    		navigation:false,
		    		singleItem:true,
		    		autoPlay:true
		    	})
		    	
		    	// Forum 
		    		$.ajax({
							url:'${pageContext.request.contextPath}/rest/forum/question?page=1&item=8',
							method: 'GET',
							success:function(data){
								if(data.RES_DATA.length>0){
// 									console.log(data);
	    							$("#question_tmpl").tmpl(data.RES_DATA).appendTo("#getQuestion");
	    						
	    						}
							}
					});	
		    	// End Forum
		    	
		    	// Tutorial
				$.ajax({
					url : "${pageContext.request.contextPath}/tutorial/rest/listcategory",
					method: "GET",
					success : function(data){
// 						console.log(data.RES_DATA);
						$("#tlistcategory_tmpl").tmpl(data.RES_DATA).appendTo("#listcategory");
					}
				});
		    	// End Tutorial
		    	
		    	
				//}, function(data) {
					
		    	//akn-block	
		    	showNews = function(data){
		    		$.ajax({
						url:'${pageContext.request.contextPath}/akn/scholarship/'+data,
						method: 'GET',
						success:function(data){
							console.log(data);
							displayNews(data.KEY ,data.NEWS.RESPONSE_DATA);
						}
					});	
		    	};
				//end akn-block
				
				showNews("getAKN");
				
				$(document).on('click',".newsTab" , function(){ 
					 if ($("#"+$(this).data("id")).find('table').length > 0) {
						 return;
					  }else{
						 showNews($(this).data("id"));
					  }
					 
	    		});
				
				
				$("#loading").show();
				$.ajax({
					url :"${pageContext.request.contextPath}/rest/elearning/recent/${userid}",
					type: "GET",
					dataType: "JSON",
					success: function(data){ 
						console.log(data);
						var recent="";
		 				recent = "<div id='owl-recent' class='owl-carousel owl-theme'>";
						$.each(data.RES_DATA, function(key, value){
							recent+="<div class='mitem'>"
											+"<div>"
											+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
												+"<a title='"+value.playlistName+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
									 			+"<div class='caption text-left'>"
													+"<p class='small shortenString'><a title='"+value.playlistName+"' class='no-underline' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.playlistName+"</b></a><br>"
													+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
													+"<span class='small text-muted' style='color:#4D4D4D'>"+value.countVideos+" Lessons</span>" 
												+"</div>"
											+"</div>"
										+"</div>"
									 +"</div>";
						});
						recent+= "</div>";
						$("#recent").html(recent);
						
						// Show top 1 recent coursse
						/* if(data.RES_DATA != null){
							topRecentVideos = "";
							if(data.RES_DATA[0].videos != null){
								playVideo(data.RES_DATA[0].videos[0].youtubeUrl);
								$("#getHref").attr("href" ,  '${pageContext.request.contextPath}/elearning/playvideo?v='+data.RES_DATA[0].videos[0].videoId+'&playlist='+data.RES_DATA[0].videos[0].playlistId);
								$("#getNewsTitle").text(data.RES_DATA[0].videos[0].playlistName);
								
								$("#newVideoTitile").text(data.RES_DATA[0].videos[0].videoTitle);
								$("#newVideoTitile").attr("href" ,  '${pageContext.request.contextPath}/elearning/playvideo?v='+data.RES_DATA[0].videos[0].videoId+'&playlist='+data.RES_DATA[0].videos[0].playlistId);
								$("#newVideoView").text(data.RES_DATA[0].videos[0].view + " views | By " + data.RES_DATA[0].videos[0].username);
							
								$.each(data.RES_DATA[0].videos, function(key, value){
									topRecentVideos +='<div class="owl-item" style="width: 100px;float:left;margin-right:10px;">'                	
									+'<div class="mitem">'                    
										+'<div>'                      
											+'<div class="thumbnail media-lib-item" style="height: 100px;padding: 0px;">'                       
												+'<a href="${pageContext.request.contextPath}/elearning/playvideo?v='+value.videoId+'&playlist='+value.playlistId+'">'                       
													+'<img   src="https://i.ytimg.com/vi/'+value.youtubeUrl+'/mqdefault.jpg" alt="'+value.videoTitle+'">'                       
												+'</a>'                       
												+'<div class="caption text-left shortenString">'                        
													+'<a href="${pageContext.request.contextPath}/elearning/playvideo?v='+value.videoId+'&playlist='+value.playlistId+'" class="small">'  
														+'<span class="small text-muted" style="color:#4D4D4D">'+value.videoTitle+'</span>'                  
													+'</a>'             
												+'</div>'                     
											+'</div>'                     
										+'</div>'                    
										+'</div>'                   
									+'</div>';
								});
								$("#getTopRecentVideo").replaceWith(topRecentVideos);			  
							}	
						} */
						// End Show top 1 recent coursse
						
						var generalEdu="<div id='owl-generalEdu' class='owl-carousel owl-theme'>";
						$.each(data.HIGH_SCHOOL, function(key, value){
							generalEdu+="<div class='mitem'>"
												+"<div>"
												+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
													+"<a title='"+value.playlistName+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
													+"<div class='caption text-left'>"
														+"<p class='small shortenString'><a title='"+value.playlistName+"' class='no-underline' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.playlistName+"</b></a><br>"
														+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
														+"<span class='small text-muted' style='color:#4D4D4D'>"+value.countVideos+" Lessons</span>" 
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
						}); 
							
						generalEdu+= "</div>";
						$("#generalEdu").html(generalEdu);
							
							
						var computerScience="<div id='owl-computerScience' class='owl-carousel owl-theme'>";
						$.each(data.COMPUTER_SCIENCE, function(key, value){
							computerScience+="<div class='mitem'>"
													+"<div>"
													+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
														+"<a title='"+value.playlistName+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
														+"<div class='caption text-left'>"
															+"<p class='small shortenString'><a title='"+value.playlistName+"' class='no-underline' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.playlistName+"</b></a><br>"
															+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
															+"<span class='small text-muted' style='color:#4D4D4D'>"+value.countVideos+" Lessons</span>" 
														+"</div>"
													+"</div>"
												+"</div>"
											 +"</div>";
						});
							
						computerScience+= "</div>";
						$("#computerScience").html(computerScience);	
							
							
						var language="<div id='owl-language' class='owl-carousel owl-theme'>";
						$.each(data.LANGUAGES, function(key, value){
							language		+="<div class='mitem'>"
													+"<div>"
													+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
														+"<a title='"+value.playlistName+"' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
														+"<div class='caption text-left'>"
															+"<p class='small shortenString'><a title='"+value.playlistName+"' class='no-underline' href='${pageContext.request.contextPath}/elearning/playvideo?v="+value.videoId+"&playlist="+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+value.playlistName+"</b></a><br>"
															+"<span class='text-muted' style='color:#4D4D4D'>"+value.description+"</span></p>"
															+"<span class='small text-muted' style='color:#4D4D4D'>"+value.countVideos+" Lessons</span>" 
														+"</div>"
													+"</div>"
												+"</div>"
											 +"</div>";
						});
						language+= "</div>";
						$("#language").html(language);
						
						
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
														+"<span class='small text-muted' style='color:#4D4D4D'>"+value.countVideos+" Lessons</span>" 
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
							});
							recommended_courses+= "</div>";
							$("#recommended_courses").html(recommended_courses);
							
							/* var recommend_videos="<div id='owl-recommend-videos' class='owl-carousel owl-theme'>";
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
							$("#recommended_videos").html(recommend_videos); */
							
							showRecommend();
							
						}
						
						
						
						showme(); 
						$("#listCourse").show();
						$("#loading").hide();
// 						$("#tutorialForum").show();
					}
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
			     
			    var owl_generalEdu = $("#owl-generalEdu");
			     
			    owl_generalEdu.owlCarousel({
			    items : 5, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_computerScience = $("#owl-computerScience");
			     
			    owl_computerScience.owlCarousel({
			    items : 5, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_language = $("#owl-language");
			     
			    owl_language.owlCarousel({
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
			    
			    /* var owl_recommend_courses = $("#owl-recommend-courses");
			     
			    owl_recommend_courses.owlCarousel({
			    items : 5, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    }); */
		    }
		    
		    function shorten(text, maxLength) {
				  var ret = text;
				  if (ret.length > maxLength) {
				  ret = ret.substr(0,maxLength-3) + " ...";
				  }
				  return ret;
		 	 }
		    
		    
		    
		    
		   
		</script>  
		
		
		
		
	</body>
</html>