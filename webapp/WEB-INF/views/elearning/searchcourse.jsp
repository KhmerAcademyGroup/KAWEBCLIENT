<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>

		<jsp:include page="../shared/_header.jsp" />
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
 
	<body class="tooltips no-padding" >
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="../shared/_menu.jsp" />	
		<!-- END TOP NAVBAR -->
		
	        <!-- Page Content -->
	        <div class="container ka-container"  style="min-height:400px" >
	            		
	            	
	            <div class="section-heading" style="text-align:left">
<!-- 					<div class="inner-border"></div> -->
					<h3 style="color:#4c954d;"><spring:message code="pp_search_result_for"/> "${keyword}"</h3>
				</div>	
	            		
	            			
	            	<div id="recent" style="margin-bottom:80px">
	            		<div id="owl-recent" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
	            			<div class="owl-wrapper-outer">
	            				
	            				
	            				<div id="getCourse" class="owl-wrapper" style="width: 100%; left: 0px; display: list-item;;">
	            					
	            					<!-- <div class="owl-item" style="width: 228px;">
	            						<div class="mitem">
	            							<div>
	            								<div class="thumbnail media-lib-item" style="height: 250px;padding: 0px;">
	            									<a href="/KAWEBCLIENT/elearning/playvideo?v=ODI3&amp;playlist=MzM4">
	            										<img src="http://localhost:8080/KAAPI/resources/upload/file/playlist/default-playlist.jpg" alt="...">
	            									</a>
	            									<div class="caption text-left">
	            										<p class="small">
	            											<a class="no-underline" href="/KAWEBCLIENT/elearning/playvideo?v=ODI3&amp;playlist=MzM4" style="color:#50a253;font-size: 16px;">
	            												<b>Codeigniter 3</b>
	            											</a>
	            											<br>
	            											<span class="text-muted" style="color:#4D4D4D">Codeigniter 3</span>
	            										</p>
	            									</div>
	            								</div>
	            							</div>
	            						</div>
	            					</div> -->
	            					
	            					</div>
	            				</div>
	            			</div>
	            			
	            			
	            			 <div id="loading" class="text-center" style="display: none;"><img src="/KAWEBCLIENT/resources/assets/img/loading.gif"></div>
				        
					        <div class="text-center">
								<button class="btn btn-primary" id="btLoadMore" style=""><spring:message code="pp_more"/></button>
							</div>
	            			
	            			
	            		</div>
	            			
				           
				        
				       
						
	                        
	                   
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    <!-- /#wrapper -->
	    
	    
	    
		
		<!-- BEGIN FOOTER -->
		<jsp:include page="../shared/_footer.jsp" />
		
		
		 <script id="course_tmpl" type="text/x-jquery-tmpl">
								<div class="owl-item" style="width: 228px;">
	            						<div class="mitem">
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
														<span class="small text-muted" style="color:#4D4D4D">{{= countVideos }} Lessons</span>
	            									</div>
	            								</div>
	            							</div>
	            						</div>
	            					</div>
		</script>
		
		<script type="text/javascript">
		$(document).ready(function(){
			
			var page = 1;
			var totalPage = 0;
			
			course = function (page){
				$("#loading").show();
	  			$("#btLoadMore").hide();
				$.ajax({
					url:'${pageContext.request.contextPath}/rest/elearning/searchcourse?keyword=${keyword}&page='+page+'&item=10',
					method: 'GET',
					 beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
					success:function(data){ 
// 						console.log(data);
						if(data.RES_DATA.length>0){
							$("#course_tmpl").tmpl(data.RES_DATA).appendTo("#getCourse");
						}
						$("#loading").hide();
						if(page >= data.PAGINATION.totalPages){ 
							$("#btLoadMore").hide();
						}else{
							$("#btLoadMore").show();
						}
					}
				});	
			};
			
			course(page);
			
			
			$("#btLoadMore").click(function(){  
				page++;
				empty = false;
				course(page);
				
				
			});
			
		});
		
		</script>
		
	</body>
</html>