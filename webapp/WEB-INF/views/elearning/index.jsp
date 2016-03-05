<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
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
			<div class="container">
			
				<jsp:include page="../shared/_banner.jsp"></jsp:include>
			
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3 style="color:#4c954d;">E-LEARNING</h3>
				</div><!-- /.section-heading -->
				
				
				
				
				<div class="col-lg-3">
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
				</div>
				
				<div class="col-lg-9">
				
						<div id="work-mixitup" class="work-content">
								<div class="row">
								
									<!-- Begin work item -->
									<c:forEach items="${data.PLAYLIST}" var="playlist">
									<div class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
										<div class="work-item">
											<div class="hover-wrap">
												<a href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">	
												<i class="glyphicon glyphicon-play-circle icon-plus"></i>
												</a>
											</div><!-- /.hover-wrap -->
											<img src="${playlist.thumbnailUrl}" alt="Img work">
											<div class="the-box no-border transparent no-margin">
												<p class="project-name shortenString">${playlist.playlistName}</p>
												<p class="project-category shortenString">${playlist.maincategoryname}</p>
											</div><!-- /.the-box no-border transparent -->
										</div><!-- /.work-item -->
									</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
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