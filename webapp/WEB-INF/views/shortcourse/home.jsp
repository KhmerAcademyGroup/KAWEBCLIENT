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
					<div class="panel-heading">Short Course Registration</div>
					<div class="panel-body">
						<div class="col-sm-6">
							
							<form id="frmRegister" class="form-horizontal" role="form">
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="course">Course:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control" name="courseId">
							      			<option ng-repeat="course in courses" ng-value="course.id" ng-bind="course.name"></option>
							      		</select>
							      </div>
							    </div>
							   <div class="form-group">
							      <label class="control-label col-sm-3" for="shift">Shift:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control" name="shiftId">
							      			<option ng-repeat="shift in shifts" ng-value="shift.id" ng-bind="shift.time"></option>
							      		</select>
							      </div>
							    </div>
							    <div class="form-group">
								    <label for="fullname" class="control-label col-sm-3">Full Name:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" name="frmStudent.fullName" id="fullname">
									</div>
								</div>
							    <div class="form-group">
								    <label for="tel" class="control-label col-sm-3">Tel:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" name="frmStudent.telephone" id="tel">
									</div>
								</div>
								<div class="form-group">
								    <label for="email" class="control-label col-sm-3">Email:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="email" class="form-control" name="frmStudent.email" id="email">
									</div>
								</div>
								<div class="form-group">
							      <label class="control-label col-sm-3" for="">University:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control">
							      			<option ng-repeat="university in universities" name="frmStudent.university" ng-value="university" ng-bind="university"></option>
							      		</select>
							      </div>
							    </div>
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Year:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control" name="frmStudent.year">
							      			<option value="Year 1">Year 1</option>
							      			<option value="Year 2">Year 2</option>
							      			<option value="Year 3">Year 3</option>
							      			<option value="Year 4">Year 4</option>
							      			<option value="Graduated">Graduated</option>
							      		</select>
							      </div>
							    </div>
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Gender:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control" name="frmStudent.gender">
							      			<option value="male">Male</option>
							      			<option value="female">Female</option>
							      		</select>
							      </div>
							    </div>
							    
								<div class="form-group">
							      <label class="control-label col-sm-3" for="">Address:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<textarea class="form-control" name="frmStudent.address"></textarea>
							      </div>
							    </div>
							    
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Comment:</label>
							      <div class="col-sm-9">
							      		<textarea class="form-control" name="frmStudent.comment"></textarea>
							      </div>
							    </div>
							    
							    <div class="form-group">        
							      <div class="col-sm-offset-2 col-sm-10">
							        <button type="submit" class="btn btn-primary pull-right">Register</button>
							        <button class="btn btn-default pull-right">Cancel</button>
							      </div>
							    </div>
							 </form>
							 <div>
								<h5>ព័ត៌មានលម្អិតបន្ថែមសូមចូលទៅកាន់តំណភ្ជាប់៖</h5>
								<h5><a href="https://goo.gl/51Mc3Q" target="_blank">- ខិត្តប័ណ្ណៈ https://goo.gl/51Mc3Q</a></h5>
								<h5><a href="https://goo.gl/is4JiS" target="_blank">- កម្មវិធីសិក្សាៈ https://goo.gl/is4JiS</a></h5>
								<h5></h5>
								
								<h4>ទូរស័ព្ទទំនាក់ទំនងៈ ០២៣ ២៩ ១៣ ១៤/ ០៨៦ ២៩ ២៩ ១៤/ ០៩៩ ៧៦ ៨៤ ៨១/ ០១៧ ២២០ ៧០៧</h4>
							</div>
							 
						</div>
						<div class="col-sm-6">
							<img width="100%" src="${pageContext.request.contextPath }/resources/uploads/shortcourse.jpg">
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
		
		<jsp:include page="../shared/_footer.jsp" />
		
		
		<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope, $http){
				$http.defaults.headers.common.Authorization = 'Basic S0FBUEkhQCMkOiFAIyRLQUFQSQ==';
				
				$scope.courses = [];
				$scope.shifts = [];
				$scope.universities = [];
				
				$('form').submit(function(e){
					e.preventDefault();
					//var data = $(this).serializeArray();
					var data = JSON.stringify($(this).serializeArray());
					console.log(data);
					
					var data = {
						"shiftId":1,
						"courseId":1,
						"typeId":1,
						"kaUserId":1,
						"frmStudent":{
							"fullName":"tse",
							"telephone":"087654",
							"email":"dsfsd@fam",
							"university":"rupp",
							"year":"111",
							"gender":"f",
							"address":"pp",
							"comment":"dfdsfsd"
						}
					};
					$http({
						method: "POST",
	                    url: url+"/add",
	                    data:data
		            })
		            .success(function (response) {
		            	alert(response);
		            });
					
					
				});
				
				/* $scope.register = {
						"shiftId":$scope.shiftId,
						"courseId":$scope.courseId,
						"typeId":$scope.typeId,
						"kaUserId":$scope.kaUserId,
						"frmStudent":{
							"fullName":$scope.fullName,
							"telephone":$scope.telephone,
							"email":$scope.email,
							"university":$scope.university,
							"year":$scope.year,
							"gender":$scope.gender,
							"address":$scope.address,
							"comment":$scope.comment
						}
				}; */
				
				var url = "http://localhost:8080/KAAPI/api/shortcourse";
				
				$http({
					method: "GET",
                    url: url+"/getcourseinfo"
	            })
	            .success(function (response) {
	            	angular.forEach(response.UNIVERSITY, function(data, key) {
			    		  $scope.universities.push(data);
			    	});
	            	angular.forEach(response.COURSE, function(data, key) {
			    		  $scope.courses.push(data);
			    	});
	            	angular.forEach(response.SHIFT, function(data, key) {
			    		  $scope.shifts.push(data);
			    	});
	            });

			});

		</script>
		
	</body>
	
</html>