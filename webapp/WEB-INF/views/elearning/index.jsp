<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	<body>
	
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<jsp:include page="../shared/_menu.jsp" />	
	
		<!-- BEGIN LATEST WORK SECTION -->
		<div class="section work-section">
			<div class="container" style="margin-top: -30px;">
			
<%-- 				<jsp:include page="../shared/_banner.jsp"></jsp:include> --%>
			
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3 style="color:#4c954d;">E-LEARNING</h3>
				</div><!-- /.section-heading -->
				
				
				
				
				<div class="col-lg-3" style="padding-left:0">
							<div class="panel panel-primary">
									  <div class="panel-heading" style="background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0);">
										<h3 class="panel-title">
											<strong style="color:#fff;">COURSE</strong>
										</h3>
									  </div>
										<div id="panel-collapse-course" class="collapse in">
										  <div class="panel-body" style="padding: 5px;">
											
											<div class="panel-group work-category-wrap"" id="accordion-2" >
					            
					            	
									            	<div class="panel panel-primary filter"  data-filter="all">
														  <div class="panel-heading" style="background:#F5F7FA;">
															<h3 class="panel-title">
																<a  href="#${category.maincategoryname}" class=" block-collapse collapsed" style="color:#434a54;" data-parent="#accordion-2" data-toggle="collapse"  aria-expanded="false">
																	<b>All Courses</b>
																</a>
															</h3>
														  </div>
														</div><!-- /.panel panel-primary -->
														
									            	<c:forEach items="${data.MAINCATEGORY}" var="category">
													
														<div class="panel panel-primary filter" data-filter="${category.maincategoryname}">
														  <div class="panel-heading" style="background:#F5F7FA;">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" style="color:#434a54;" data-parent="#accordion-2" data-toggle="collapse" href="#${category.maincategoryname}" aria-expanded="false">
																	<b>${category.maincategoryname}</b>
																</a>
															</h3>
														  </div>
														</div><!-- /.panel panel-primary -->
														
														
													
													</c:forEach>
									
												</div><!-- End panel group -->
											
											
										  </div><!-- /.panel-body -->
										</div><!-- /.collapse in -->
								</div><!-- /.panel panel-primary -->
								
								
								<div class="panel panel-primary">
									  <div class="panel-heading" style="background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0);">
										<h3 class="panel-title">
											<strong style="color:#fff;">KSHRD - Short Course</strong>
										</h3>
									  </div>
										<div id="panel-collapse-course" class="collapse in">
										  <div class="panel-body" style="padding: 5px;">
											
											<div class="panel-group work-category-wrap"" id="accordion-2" >
					            
					            					<a  href="#${category.maincategoryname}" class=" block-collapse collapsed" style="color:#434a54;" data-parent="#accordion-2" data-toggle="collapse"  aria-expanded="false">
														<img src="http://localhost:8080/KAAPI/resources/upload/file/playlist/thumbnail/math1_thumbnail_ui.png"/>
													</a>
					            	
									            	
														
									            	
												</div><!-- End panel group -->
											
											
										  </div><!-- /.panel-body -->
										</div><!-- /.collapse in -->
								</div><!-- /.panel panel-primary -->
								
								
				</div>
				
				<div class="col-lg-9" style="padding-left:60px;padding-right:0">
				
						<div id="work-mixitup" class="work-content">
								<div class="row">
								
									<!-- Begin work item -->
									<c:forEach items="${data.PLAYLIST}" var="playlist">
									<%-- <div class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
										<div class="work-item">
											<div class="hover-wrap">
												<a href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">	
												<i class="glyphicon glyphicon-play-circle icon-plus"></i>
												</a>
											</div><!-- /.hover-wrap -->
											<img src="${playlist.thumbnailUrl}" alt="Img work">
											<div class="the-box no-border transparent no-margin">
												<p class="project-category shortenString">${playlist.maincategoryname}</p>
												<p class="project-name shortenString">${playlist.playlistName}</p>
											</div><!-- /.the-box no-border transparent -->
										</div><!-- /.work-item -->
									</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix --> --%>
									
									
											<div class=" mix ${playlist.maincategoryname}">
												<div class="owl-item" style="width: 228px;margin-right:30px">
				            						<div class="mitem">
				            							<div>
				            								<div class="thumbnail media-lib-item" style="height: 250px;padding: 0px;">
				            									<a href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">
				            										<img src="${playlist.thumbnailUrl}" alt="Img work">
				            									</a>
				            									<div class="caption text-left">
				            										<p class="small shortenString">
				            											<a class="no-underline" href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}" style="color:#50a253;font-size: 16px;">
				            												<b>${playlist.playlistName}</b>
				            											</a>
				            											<br>
				            											<span class="text-muted" style="color:#4D4D4D">${playlist.description}</span>
				            										</p>
				            										<span class='small text-muted' style='color:#4D4D4D'>${playlist.countVideos} Videos | By ${playlist.username}</span>
				            									</div>
				            								</div>
				            							</div>
				            						</div>
				            					</div> 
			            					</div>
	            					
									</c:forEach>
									<!-- End work item -->
								
								</div><!-- /.row -->
							</div><!-- /#work-mixitup -->
				
				</div>
				
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END LATEST WORK SECTION -->
		
		<%-- <!-- BEGIN CLIENT LOGO SECTION -->
		<div class="section">
			<div class="container">
				<div id="owl-client-logo" class="owl-carousel client-logo">
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/MoEYS.png" alt="MoEYS logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/aeu.png" alt="AEU logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/num.png" alt="NUM logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/koica-logo.jpg" alt="KOICA logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/webcash.jpg" alt="WebCash logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/kosign.png" alt="KOSIGN logo">
					</div><!-- /.item -->
				</div><!-- /#owl-client-logo -->
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END CLIENT LOGO SECTION --> --%>
		
		<jsp:include page="../shared/_footer.jsp" />
	</body>
</html>