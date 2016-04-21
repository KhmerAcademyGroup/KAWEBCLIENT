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
			
			.btn{
				border-radius:0px !important;
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
							<div class="alert alert-danger" id="error-message" style="display:none">
								<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
								<p>{{errorMessage}}</p>
							</div>
							
							<form id="${formId }" class="form-horizontal" role="form" ng-hide="isAdd">
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="course">Course:<span class="required">*</span></label>
							      <div class="col-sm-9">
						      		  <select class="form-control" ng-model="course" ng-change="courseChange(course)">
						      			 <option ng-repeat="course in courses" ng-value="course.id" ng-bind="course.name" required="required"></option>
						      		  </select>
							      </div>
							    </div>
							   <div class="form-group">
							      <label class="control-label col-sm-3" for="shift">Shift:<span class="required">*</span></label>
							      <div class="col-sm-9">
						      		  <select class="form-control" ng-model="shift" ng-change="shiftChange(shift)">
						      			 <option ng-repeat="shift in shifts" ng-value="shift.id" ng-bind="shift.time"></option>
						      		  </select>
							      </div>
							    </div>
								<div class="form-group">        
							      <div class="col-sm-offset-2 col-sm-10">
							        <button type="submit" class="btn btn-primary pull-right">${actionText }</button>
							        <input type="button" class="btn btn-default pull-right" style="margin-right:5px" onclick="location.href='${pageContext.request.contextPath}/kshrd/shortcourse/mycourse'" value="Cancel"/>
							      </div>
							    </div>
							</form>
							
							<form id="frmRegister" class="form-horizontal" role="form" ng-show="isAdd">
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="course">Course:<span class="required">*</span></label>
							      <div class="col-sm-9">
						      		  <select class="form-control" ng-model="course" ng-change="courseChange(course)">
						      			 <option ng-repeat="course in courses" ng-value="course.id" ng-bind="course.name" required="required"></option>
						      		  </select>
							      </div>
							    </div>
							   <div class="form-group">
							      <label class="control-label col-sm-3" for="shift">Shift:<span class="required">*</span></label>
							      <div class="col-sm-9">
						      		  <select class="form-control" ng-model="shift" ng-change="shiftChange(shift)">
						      			 <option ng-repeat="shift in shifts" ng-value="shift.id" ng-bind="shift.time"></option>
						      		  </select>
							      </div>
							    </div>
							    <div class="form-group">
								    <label for="fullname" class="control-label col-sm-3">Full Name:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" ng-model="fullName" required="required">
									</div>
								</div>
							    <div class="form-group">
								    <label for="tel" class="control-label col-sm-3">Tel:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" ng-model="telephone" required="required">
									</div>
								</div>
								<div class="form-group">
								    <label for="email" class="control-label col-sm-3">Email:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="email" class="form-control" ng-model="email" required="required">
									</div>
								</div>
								<div class="form-group">
							      <label class="control-label col-sm-3" for="">University:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control" ng-model="university">
							      			<option ng-repeat="university in universities" ng-value="university" ng-bind="university"></option>
							      		</select>
							      </div>
							    </div>
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Year:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control"  ng-model="year" ng-change="yearChange(year)">
							      			<option ng-repeat="year in years" ng-value="year" ng-bind="year"></option>
							      		</select>
							      </div>
							    </div>
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Gender:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control" ng-model="gender" ng-change="genderChange(gender)">
							      			<option ng-repeat="gender in genders" ng-value="gender" ng-bind="gender"></option>
							      		</select>
							      </div>
							    </div>
							    
								<div class="form-group">
							      <label class="control-label col-sm-3" for="">Address:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<textarea class="form-control" ng-model="address" required="required"></textarea>
							      </div>
							    </div>
							    
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Comment:</label>
							      <div class="col-sm-9">
							      		<textarea class="form-control" ng-model="comment"></textarea>
							      </div>
							    </div>
							    <div class="form-group">        
							      <div class="col-sm-offset-2 col-sm-10">
							        <button type="submit" class="btn btn-primary pull-right">${actionText }</button>
							        <button class="btn btn-default pull-right" style="margin-right:5px">Cancel</button>
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
				
				$scope.isAdd = ${isAdd};
				
				$scope.errorMessage = "";
				
				$scope.courses = [];
				$scope.shifts = [];
				$scope.universities = [];
				$scope.years = ["Year1", "Year2", "Year3", "Year4", "Graduated"];
				$scope.genders = ["Male", "Female"];
				
				$scope.courseId = 0;
				$scope.shiftId = 0;
				$scope.kaUserId = "${userid}";
				$scope.year = 0;
				$scope.gender = "Female";
				$scope.fullName = "";
				$scope.telephone = "";
				$scope.email = "";
				$scope.university = "Other";
				$scope.year = "Graduated";
				$scope.gender = "";
				$scope.address = "";
				$scope.comment = "";
				
				$scope.shiftChange = function(shift){
					$scope.shiftId = shift;
				};
				
				$scope.genderChange = function(gender){
					$scope.gender = gender;
				};
				
				$scope.courseChange = function(course){
					$scope.courseId = course;
				};
				
				$scope.yearChange = function(year){
					$scope.year = year;
				};
				
				$('#frmRegister').submit(function(e){
					e.preventDefault();
					var data = {
						"shiftId":$scope.shiftId,
						"courseId":$scope.courseId,
						"typeId":1,
						"generation" : 1 ,
						"kauserId":$scope.kaUserId,
						"frmStudent":{
							"fullName":$scope.fullName,
							"telephone":$scope.telephone,
							"email":$scope.email,
							"university":$scope.university,
							"year":$scope.year,
							"gender":$scope.gender,
							"address":$scope.address,
							"comment":$scope.comment,
							"kauserId":$scope.kaUserId
						}
					}; 
					
					$http({
						method: "POST",
	                    url: url+"/add",
	                    data:data
		            })
		            .success(function (response) {

		            	if(response.STATUS == true){
							location.href="${pageContext.request.contextPath}/kshrd/shortcourse/mycourse";	            		
		            	}
		            	else{
		            		angular.element("#error-message").css("display","block");	
							$scope.errorMessage = response.MESSAGE;		            		
		            	}
		            }); 
				});
				
				$('#'+"${formId}").submit(function(e){
					e.preventDefault();
					var data1 = {
						"id":"${sdId}",
						"kauserId":$scope.kaUserId,
						"shiftId":$scope.shiftId,
						"courseId":$scope.courseId,
						"generation":1
					}; 
					
					$http({
						method: "${formMethod}",
	                    url: url+"${formAction}",
	                    data:data1
		            })
		            .success(function (response) {

		            	if(response.STATUS == true){
		            		location.href="${pageContext.request.contextPath}/kshrd/shortcourse/mycourse";
		            	}
		            	else{
		            		angular.element("#error-message").css("display","block");	
		            		$scope.errorMessage = response.MESSAGE;		            		
		            	}
		            		
		            }); 
 				});
				var url = "http://localhost:8080/KAAPI/api/shortcourse";
				
				$http({
					method: "GET",
                    url: url+"/getcourseinfo"
	            })
	            .success(function (response) {
	            	
	            	if($scope.isAdd==false){
	            		$http({
							method: "GET",
		                    url: url+"/edit/${sdId}"
			            })
			            .success(function (response) {
							var data = response.COURSE;
							$scope.courseId = data.course.id;
		    				$scope.shiftId = data.shift.id;
		    				
		            		$scope.courses.push({"id":data.id, "name":data.course.name}); 
		            		$scope.shifts.push({"id":data.id, "time":data.shift.time});
			            });   
	            	}
	            	
	            	angular.forEach(response.UNIVERSITY, function(data, key) {
			    		  $scope.universities.push(data);
			    	});
	            	
	            	$scope.courses.push({"id":0, "name":"Course To Study..."});
	            	angular.forEach(response.COURSE, function(data, key) {
			    		  $scope.courses.push(data);
			    	});
	            	$scope.shifts.push({"id":0, "time":"Time To Study..."});
	            	angular.forEach(response.SHIFT, function(data, key) {
			    		  $scope.shifts.push(data);
			    	});
	            	
	            });
				
				
			});

		</script>
		
	</body>
	
</html>