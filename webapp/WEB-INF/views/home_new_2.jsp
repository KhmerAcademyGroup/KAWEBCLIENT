<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<%
response.setHeader("Cache-Control", "public, , max-age=86400,must-revalidate"); // HTTP 1.1.
// response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
// response.setHeader("Expires", "120"); // Proxies.
%>

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
				            	<div class="row" style="margin-bottom: 0px;padding: 15px;height:397px">
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
								
						
							
						
							
							</div>	 <!-- End List Courses -->
							
							
				<div  class="row" style="margin-left:0px;margin-top:40px;    margin-bottom: 70px;">
								
							
							
							
						<div class="row" style="margin-bottom: 30px;">
							
								<div class="col-lg-8">
										<div class="panel panel-primary panel-square panel-no-border">
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
															<h3 class="panel-title"><a href="${pageContext.request.contextPath}/elearning">E-Learning</a></h3>
														  </div>
												
														 <div class="panel with-nav-tabs panel-default">
															  <div class="panel-heading">
																<ul class="nav nav-tabs">
																	<li class="active"><a href="#panel-recent" data-toggle="tab" class="eTab"  data-mid="empty" data-id="getRecent" aria-expanded="true">ថ្មីៗ</a></li>
																	<li class=""><a href="#panel-general" data-toggle="tab" class="eTab"       data-mid="MjU="  data-id="getGeneral" aria-expanded="false">ចំណេះ​ទូទៅ</a></li>
																	<li class=""><a href="#panel-computerBasic" data-toggle="tab" class="eTab" data-mid="MjQ="  data-id="getComputerBasic" aria-expanded="false">កុំព្យូទ័រ​កម្រិត​មូលដ្ឋាន</a></li>
																    <li class=""><a href="#panel-language" data-toggle="tab" class="eTab"      data-mid="MjM="  data-id="getLanguage" aria-expanded="false">ភាសា</a></li>
																    <li class=""><a href="#panel-programming" data-toggle="tab" class="eTab"   data-mid="MQ=="  data-id="getProgramming" aria-expanded="false">Programming</a></li>
																	<li class=""><a href="#panel-web" data-toggle="tab" class="eTab"           data-mid="MTc="  data-id="getWeb" aria-expanded="false">ការរចនា​គេហទំព័រ</a></li>
																	<li class=""><a href="#panel-mobile" data-toggle="tab" class="eTab"        data-mid="MjE="  data-id="getMobile" aria-expanded="false">Mobile</a></li>
																	<li class=""><a href="${pageContext.request.contextPath}/elearning"> Other</a></li>
																</ul>
															  </div>
																<div id="panel-collapse-1" class="collapse in" aria-expanded="true">
																	<div class="panel-body">
																		<div class="tab-content">
																			<div class="tab-pane fade active in" id="panel-recent">
																				<div  id="getRecent" class="row" style="height:  auto; overflow: hidden;">
															  							
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-general">
																					<div  id="getGeneral" class="row" style="min-height: 453px; overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-computerBasic">
																					<div  id="getComputerBasic" class="row" style="min-height: 453px;overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-language">
																					<div  id="getLanguage" class="row" style="min-height: 453px;overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-programming">
																					<div  id="getProgramming" class="row" style="min-height: 453px; overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-web">
																					<div  id="getWeb" class="row" style="min-height: 453px;overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-mobile">
																					<div  id="getMobile" class="row" style="min-height: 453px; overflow: hidden;">
															  						
																					</div>
																			</div>
																			
																				
																					<!-- <div class="row text-center">
															  								<button class="btn btn-primary btn-xs" id="btLoadMore" style="display: inline-block;"> < </button>
																							<button class="btn btn-primary btn-xs"  id="btLoadMore" style="display: inline-block;"> > </button>
																					</div> --> 		
																						
																			<!-- /.tab-pane fade -->
																		</div><!-- /.tab-content -->
																	</div><!-- /.panel-body -->
																</div><!-- /.collapse in -->
															</div>
			            								
										</div>				
													
							   </div>
							  <div class="col-lg-4" style="padding-left: 0px;" >
							  		<div class="panel panel-primary panel-square panel-no-border">
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
															<h3 class="panel-title"><a href="${pageContext.request.contextPath}/elearning"  >Forum - Recent Questions  </a></h3>
														  </div>
												
														<div class="inbox"  id="getQuestion" style="padding: 15px;    height: 579px;  border: 1px solid #D5DAE0;">	
																
											</div>	
									 </div> 					
								</div> 
						</div>  	
							
						<div class="row" >
							
								<div class="col-lg-8">
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
																	<li class=""><a href="#panel-life" data-toggle="tab" class="newsTab" data-id="getAKNLife"  aria-expanded="false">Life</a></li>
																	<li class=""><a href="#panel-sport" data-toggle="tab" class="newsTab" data-id="getAKNSport"  aria-expanded="false">Sport</a></li>
																	<li class=""><a href="http://news.khmeracademy.org/"  target="_blank"> Other</a></li>
																</ul>
															  </div>
																<div id="panel-collapse-1" class="collapse in" aria-expanded="true">
																	<div class="panel-body">
																		<div class="tab-content">
																			<div class="tab-pane fade active in" id="panel-home-1">
																				<div  id="getAKN" style="height:  500px; overflow: hidden;">
														  	
																				</div>
																				
																				<!-- <div class="row text-center">
															  								<button class="btn btn-primary btn-xs" id="btLoadMore" style="display: inline-block;"> < </button>
																							<button class="btn btn-primary btn-xs"  id="btLoadMore" style="display: inline-block;"> > </button>
																				</div>  -->
																						
																			</div>
																			<div class="tab-pane fade" id="panel-scholarship-1">
																				<div  id="getAKNScholarship" style="height:  500px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-technology-1">
																				<div  id="getAKNTechnology" style="height:  500px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-national-1">
																				<div  id="getAKNNational" style="height:  500px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-international-1">
																				<div   id="getAKNInternational" style="height:  500px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-life">
																				<div   id="getAKNLife" style="height:  500px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-sport">
																				<div   id="getAKNSport" style="height:  500px; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<!-- /.tab-pane fade -->
																		</div><!-- /.tab-content -->
																	</div><!-- /.panel-body -->
																</div><!-- /.collapse in -->
															</div>
			            								
										</div>				
													
							   </div>
							  <div class="col-lg-4" style="padding-left: 0px;" >
							  		<div class="panel panel-primary panel-square panel-no-border">
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
															<h3 class="panel-title"><a href="${pageContext.request.contextPath}/tutorial" >Tutorials</a></h3>
														  </div>
												
														 <div class="inbox" style="    height: 395px;overflow: hidden;padding: 15px;  border: 1px solid #D5DAE0; "  id="listcategory">	
																
														</div>	
									 </div> 					
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
		
		
		 <script id="tlistcategory_tmpl" type="text/x-jquery-tmpl">
					<div class="caption text-left" style="    border-bottom: 1px solid  #D5DAE0;margin-bottom: 5px;padding-bottom: 5px;">
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
		
		
		 <script id="elearning_tmpl" type="text/x-jquery-tmpl">
					<div class="col-md-3" style="width: 50%;height:50px;display: -webkit-box;">		
							<div>
								<a href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}">
										<img width="40px" height="40px" src="{{= thumbnailUrl }}" alt="...">
								</a>
							</div>
							<div class="caption text-left  shortenString" style="padding: 10px;width:80%;padding-top: 0px;">                       
									<p class="small shortenString">                       
											<a class="no-underline" href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}" style="color:#50a253;font-size: 17px;">                         
													<b>{{= playlistName }}</b>                  
											</a>   
									</p>               
							</div>
					</div>
		</script>	
		
		
		
		 <script id="elearning_tmpl_NOT_USE" type="text/x-jquery-tmpl">
					<div class="col-md-3" style="width: 50%;height:90px;display: -webkit-box;">		
							<div>
								<a href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}">
										<img width="80px" height="80px" src="{{= thumbnailUrl }}" alt="...">
								</a>
							</div>
							<div class="caption text-left  shortenString" style="padding: 10px;width:80%;padding-top: 0px;">                       
									<p class="small shortenString">                       
											<a class="no-underline" href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}" style="color:#50a253;font-size: 16px;">                         
													<b>{{= playlistName }}</b>                  
											</a>   
											<br/>
											<span class="text-muted" style="color:#4D4D4D"> {{= description }}</span> 
											<br/>                      
											<span class="small text-muted" style="color:#4D4D4D">{{= countVideos }} Lessons</span> 
									</p>               
							</div>
					</div>
		</script>	
		
		<script type="text/javascript">
			
				 function displayNews(block,data){
					 var akn1 = '<table class="shortenString">';
						for(var j=0; j<data.length; j++){
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
							url:'${pageContext.request.contextPath}/rest/forum/question?page=1&item=10',
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
					url : "${pageContext.request.contextPath}/tutorial/rest/list_tutorial?item=12",
					method: "GET",
					success : function(data){ console.log(data);
// 						console.log(data.RES_DATA); 
						$("#tlistcategory_tmpl").tmpl(data.RES_DATA).appendTo("#listcategory");
					}
				});
		    	// End Tutorial
		    	
		    	
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
				
				
				showNews("getAKN");
				
				$(document).on('click',".newsTab" , function(){  
					 if ($("#"+$(this).data("id")).find('table').length > 0) { 
						 return; 
					  }else{
						 showNews($(this).data("id"));
					  }
					 
	    		});
				//end akn-block
		    
				
				//E-Learning-block	
		    	var eID="getRecent";
				showElearning = function(mainCategoryId){ 
		    		$.ajax({
		    			url :"${pageContext.request.contextPath}/rest/elearning/plalylistByMainCateogryWithPagin/"+mainCategoryId+"?page=1&item=20",
						method: 'GET',
						success:function(data){
							console.log(data);
							$("#elearning_tmpl").tmpl(data.RES_DATA).appendTo("#"+eID);
						}
					});	
		    	};
				
		    	showElearning("empty");
		    	
		    	
		    	$(document).on('click',".eTab" , function(){  
					 if ($("#"+$(this).data("id")).find('div').length > 0) { 
						 return; 
					  }else{
						  eID = $(this).data("id");
						  showElearning($(this).data("mid"));
					  }
					 
	    		});
				
			});
			
		   
		    
		   
		</script>  
		
		
		
		
	</body>
</html>