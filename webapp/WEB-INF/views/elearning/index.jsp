<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	</head>
	<body>
	
		<div ng-app="myApp" ng-controller="myController">
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
					<li class="filter" data-filter="{{ x.maincategoryname }}" ng-repeat="x in myCategory">{{ x.maincategoryname }}</li>
					<li class="filter" data-filter="Web">TEMPLATE</li> 
					<li class="filter" data-filter="Mobile">MOBILE APPS</li>
					<!-- <li class="filter" data-filter="printing">PRINTING</li>
					<li class="filter" data-filter="other">OTHER</li> -->
				</ul>
				
				<div id="work-mixitup" class="work-content">
					<div class="row">
						
						<!-- Begin work item -->
						<div class="col-sm-4 col-md-3 col-xs-6 mix {{p.maincategoryname}}" ng-repeat="p in myPlaylist">
							<div class="work-item">
								<div class="hover-wrap">
									<a ng-href="${pageContext.request.contextPath}/elearning/playvideo?playlist={{p.playlistId}}">	
									<i class="glyphicon glyphicon-plus icon-plus"></i>
									</a>
								</div><!-- /.hover-wrap -->
								<img ng-src="${pageContext.request.contextPath}/{{ p.bgImage }}" alt="Img work">
								<div class="the-box no-border transparent no-margin">
									<p class="project-name">{{ p.playlistName }}</p>
									<p class="project-category">{{ p.maincategoryname }}</p>
								</div><!-- /.the-box no-border transparent -->
							</div><!-- /.work-item -->
						</div><!-- /.col-sm-4 col-md-3 col-xs-6 mix -->
						<!-- End work item -->
					
						
					</div><!-- /.row -->
				</div><!-- /#work-mixitup -->
				
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END LATEST WORK SECTION -->
		
		
		
		
		<!-- BEGIN CLIENT LOGO SECTION -->
		<div class="section">
			<div class="container">
				<div id="owl-client-logo" class="owl-carousel client-logo">
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/graphicriver.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/photodune.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/themeforest.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/codecanyon.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/3docean.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/graphicriver.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/photodune.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/themeforest.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/codecanyon.png" alt="Client logo">
					</div><!-- /.item -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/resources/assets/img/client-logo/3docean.png" alt="Client logo">
					</div><!-- /.item -->
				</div><!-- /#owl-client-logo -->
			</div><!-- /.container -->
		</div><!-- /.section -->
		<!-- END CLIENT LOGO SECTION -->
		
		</div>
		
		<jsp:include page="../shared/_footer.jsp" />
		
		<script>
		var app = angular.module('myApp', []);
		app.controller('myController', function($scope, $http) {
		  $http.get("${pageContext.request.contextPath}/admin/rest/elearning/index").then(function (response) {
		      $scope.myCategory = response.data.MAINCATEGORY;
		      $scope.myPlaylist = response.data.PLAYLIST;
		  });
		});
		
		if ($('#work-mixitup').length > 0){
			$('#work-mixitup').mixitup({
				effects: ['fade','scale','grayscale']
			});
		}
		</script>
		
	</body>
</html>