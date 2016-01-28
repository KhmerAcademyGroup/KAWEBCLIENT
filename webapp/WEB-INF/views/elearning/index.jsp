<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
			
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3 style="color:#4c954d;">E-LEARNING</h3>
				</div><!-- /.section-heading -->
				
				<ul class="work-category-wrap">
					<li class="filter" data-filter="all">ALL</li>
					<c:forEach items="${data.MAINCATEGORY}" var="category">
						<li class="filter" data-filter="${category.maincategoryname}">${category.maincategoryname}</li>
					</c:forEach>
				</ul>
				
				<div id="work-mixitup" class="work-content">
					<div class="row">
					
						<!-- Begin work item -->
						<c:forEach items="${data.PLAYLIST}" var="playlist">
						<div class="col-sm-4 col-md-3 col-xs-6 mix ${playlist.maincategoryname}">
							<div class="work-item">
								<div class="hover-wrap">
									<a href="${pageContext.request.contextPath}/elearning/playvideo?v=${playlist.videoId}&playlist=${playlist.playlistId}">	
									<i class="glyphicon glyphicon-eye-open icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img src="${pageContext.request.contextPath}/${playlist.bgImage}" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">${playlist.playlistName}</p>
									<p class="project-category">${playlist.maincategoryname}</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						</c:forEach>
						<!-- End work item -->
					
					</div><!-- /.row -->
				</div><!-- /#work-mixitup -->
				
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