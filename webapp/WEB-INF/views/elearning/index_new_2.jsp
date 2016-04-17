<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
			
			
			.new-playlist{
				position:absolute !important;
				width:40%;
				height:100%;
				background-color:black;
				opacity:.7;
				left:60%;
				padding-top:17%;
			}
			.store-item:hover  .new-playlist{
				width:100%;
				left:0%;
				z-index:100;
				cursor:pointer;
			}
			.new-playlist ul{
				list-style:none;
				padding:0px;
				font-size:150%;
				font-weight:bold;
				color:white;
			}
	 	</style>
	</head>
	<body>
	
		<jsp:include page="../shared/_menu.jsp" />
		
		<button class="btn btn-default" id="menu-toggle"><i class="fa fa-list" title="Browse Course"></i></button>
		
		
		<div> 
		
		<div id="wrapper">
		
		

	        <!-- Sidebar -->
	        <div id="sidebar-wrapper" style="height: auto !important;">
	        	<br />
	        	
	            <div class="panel panel-primary" style="margin-left:10px">
					  <div class="panel-heading" style="background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0);">
						<h3 class="panel-title">
							<!-- <a class="block-collapse" style="color:#006a00;" href="#panel-collapse-course"> -->
							<strong style="color:#fff;"><spring:message code="ep_e-learning"/></strong>
							<!-- <span class="right-content">
								<span class="right-icon">
									<i class="glyphicon glyphicon-chevron-down icon-collapse"></i>
								</span>
							</span> -->
							<!-- </a> -->
						</h3>
					  </div>
						<div id="panel-collapse-course" class="collapse in">
						  <div class="panel-body" style="padding: 5px;">
							
							<div class="panel-group work-category-wrap" id="accordion-2" >
							
								
				
					            
					            					<div class="panel panel-primary filter">
														  <div class="panel-heading" style="background:#F5F7FA;">
															<h3 class="panel-title">
																<a class="block-collapse collapsed listByMainCategory"  data-id="empty" style="color:#434a54;"  href="script:">
																	<b id="mName">ទាំងអស់</b>
																</a>
															</h3>
														  </div>
														</div><!-- /.panel panel-primary -->
									            	
														
									            	<c:forEach items="${data.RES_DATA}" var="category">
													
														<div class="panel panel-primary filter">
														  <div class="panel-heading" style="background:#F5F7FA;">
															<h3 class="panel-title">
																<a class="block-collapse collapsed listByMainCategory" data-id="${category.mainCategoryId}" style="color:#434a54;"  href="#${category.maincategoryname}">
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
	        <div id="page-content-wrapper" style="background:white;    min-height:700px;">
	            <div class="container">
	            
	            <%-- <div class="section-heading">
									<div class="inner-border"></div>
									<h3 style="color:#4c954d;"><spring:message code="ep_e-learning"/></h3>
								</div> --%>
	            	
	            	<div id="recent" style="margin-bottom:80px">
	            		<div id="owl-recent" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
	            			<div class="owl-wrapper-outer">
	            				
	            				
	            				<div id="getCourse" class="owl-wrapper" style="width: 101%; left: 0px; display: list-item;;">
	            					
	            					
	            					
	            				</div>
	            				
	            				</div>
	            			</div>
	            			
	            			
	            			 <div id="loading" class="text-center" style="display: none;"><img src="/KAWEBCLIENT/resources/assets/img/loading.gif"></div>
				        
					        <div class="text-center">
								<button class="btn btn-primary" data-id="empty" id="btLoadMore"><spring:message code="ep_more"/></button>
							</div>
	            			
	            			
	            		</div>
	            	
	            	
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
		
		 <script id="course_tmpl" type="text/x-jquery-tmpl">
								<div class="owl-item" style="width: 220px;    margin-right:10px;">
	            						<div class="mitem">
	            							<div>
	            								<div class="thumbnail media-lib-item" style="height: 225px;padding: 0px;">
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
	            									</div>
	            								</div>
	            							</div>
	            						</div>
	            					</div>
		</script>
		
		 <script id="elearning_tmpl" type="text/x-jquery-tmpl">
					<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3" style="width: 245px;">
																							<div class="the-box full store-item text-center checkchb">
																								<a href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}">
																									<div class="new-playlist">
																										<ul>
																											<li><i class="fa fa-play-circle"></i></li>
																										</ul>
																									</div>
																								</a>
																								<img  src="{{= thumbnailUrl }}" alt="{{= playlistName }}" class="img-responsive">
																								<div class="the-box no-margin no-border item-des">
																									<div class="row">
																										<div class="col-xs-12">
																											<p class="text-danger shortenString">
																												<strong class="text-danger">{{= playlistName }}</strong>
																											</p>
																										</div>
																										<!-- /.col-xs-7 -->
																									</div>
																									<!-- /.row -->
																								</div>
																							</div>
																							<!-- /.the-box .no-border .full .store-item -->
																							<!-- END ITEM STORE -->
																						</div>
		</script>
		
		
		<script>
	      jQuery(document).ready(function ($) {
	        "use strict";
			$('#SuppressScrollX_1').perfectScrollbar({suppressScrollX: true});
	      }); 

		
			
			
	      $(document).ready(function(){
				
	    	  /* $("#sidebar-wrapper").height($("#page-content-wrapper").outerHeight()); */
			    $("#menu-toggle").click(function(e) {
			        $("#wrapper").toggleClass("toggled");
			    });
	    	  
				var page = 1;
				var totalPage = 0;
				
				course = function (mid,page){
					$("#loading").show();
		  			$("#btLoadMore").hide();
					$.ajax({
		    			url :"${pageContext.request.contextPath}/rest/elearning/plalylistByMainCateogryWithPagin/"+mid+"?page="+page+"&item=12",
						method: 'GET',
						 beforeSend: function(xhr) {
			                    xhr.setRequestHeader("Accept", "application/json");
			                    xhr.setRequestHeader("Content-Type", "application/json");
			                },
						success:function(data){ 
// 							console.log(data);
							if(data.STATUS == true ){
								$("#elearning_tmpl").tmpl(data.RES_DATA).appendTo("#getCourse");
								if(page >= data.PAGINATION.totalPages){ 
									$("#btLoadMore").hide();
								}else{
									$("#btLoadMore").show();
								}
							}else{
// 								$("#getCourse").appendTo("<h1>No data!</h1>");
							}
							$("#loading").hide();
						}
					});	
				};
				
				course("empty",1);
				
				
				$("#btLoadMore").click(function(){  
					page++;
					empty = false;
					course($(this).data("id"),page);
				});
				
				$(document).on('click',".listByMainCategory" , function(){  
					$("#getCourse").empty();
					$("#btLoadMore").attr("data-mid",$(this).data("id"));
					course($(this).data("id"),1);
				});
				
			});
			    
	    </script>
		
	</body>
</html>