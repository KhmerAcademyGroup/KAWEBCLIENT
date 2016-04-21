<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en" ng-app="myApp" ng-controller="myCtrl">
	<head>
		<jsp:include page="../shared/_header.jsp" />
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		
		<style>
			.sc-info img{
				width:100%;
			}
			
			.panel-heading{
				background-color:#4E9C50 !important;
			}
			.required{
				color:red;
			}
			.section-heading{
				margin-bottom:15px !important;
			}
			.label{
				cursor:pointer;
				
			}
			a:hover{text-decoration:none;}
			.btn-primary{background-color:#4E9C50 !important;
				margin-bottom:10px;
			}
			.btn{
				border-radius:0px !important;
			}
			.alert{
				margin:15px 30px 0px 30px;
				border-radius:0px;
			}
			
		</style>
		
	</head>
 	
	<body class="tooltips no-padding">
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="../shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		<!-- My Contend -->
		
		<div class="container ka-container" >
			
			<div class="row">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3 style="color:#4c954d;">SHORT COURSE</h3>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">Registered Courses</div>
					<div style="display:none" class="alert alert-success" id="message">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<p>Thanks for registration, Please go to KSHRD Center to pay fee!</p>
					</div>
					<div style="display:none" class="alert alert-info" id="message-no">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<p>You not yet register any courses, Please register a new course!</p>
					</div>	
					<div class="panel-body">
						<div class="col-sm-12">
							<button onclick="location.href='${pageContext.request.contextPath}/kshrd/shortcourse/register'" class="btn btn-primary">Register New Course</button>
							<table class="table table-striped">
								<tr>
									<th>No</th>
									<th>Name</th>
									<th>Email</th>
									<th>Phone Number</th>
									<th>Course</th>
									<th>Time</th>
									<th>Paid</th>
									<th>Action</th>
								</tr>
								<tr ng-repeat="myCourse in myCourses">
									<td>{{$index + 1}}</td>
									<td ng-bind="myCourse.student.fullName"></td>
									<td ng-bind="myCourse.student.email"></td>
									<td ng-bind="myCourse.student.phone">Phone Number</td>
									<td ng-bind="myCourse.course.name"></td>
									<td ng-bind="myCourse.shift.time"></td>
									<td ng-bind="myCourse.paid==true?'Paid':'Not Yet'"></td>
									<td><a href="${pageContext.request.contextPath}/kshrd/shortcourse/update/{{myCourse.id}}" class="label label-warning">Edit</a>
										<a ng-click="removeCourse(myCourse.id);" class="label label-danger">Remove</a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
		
		<jsp:include page="../shared/_footer.jsp" />
		
		
		<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope, $http){
				
				//$http.defaults.headers.common.Authorization = 'Basic S0FBUEkhQCMkOiFAIyRLQUFQSQ==';
				
				var url = "${pageContext.request.contextPath}/rest/kshrd/shortcourse";
				
				$scope.myCourses = [];
				$http({
					method: "GET",
                    url: url
	            })
	            .success(function (response) {
	            	angular.forEach(response.MYCOURSES, function(data, key) {
			    		  $scope.myCourses.push(data);
			    	});
	            	
	            	if($scope.myCourses.length!=0)
						angular.element("#message").css("display","block");
					else
						angular.element("#message-no").css("display","block");
					
	            });
				
				$scope.removeCourse = function(id){
					var sure = confirm("Are you sure?");
					if(sure){
						$http({
							method: "DELETE",
		                    url: url+"/"+id
			            })
			            .success(function (response) {
							location.href="${pageContext.request.contextPath}/kshrd/shortcourse/mycourse";
			            });
					}
				};
				
			});

		</script>
		
	</body>
	
</html>