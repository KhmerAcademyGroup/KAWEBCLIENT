<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
		
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
							
							<form class="form-horizontal" role="form">
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="course">Course:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control">
							      			<option>IOS Application Development</option>
							      			<option>IOS Application Development</option>
							      			<option>IOS Application Development</option>
							      		</select>
							      </div>
							    </div>
							   <div class="form-group">
							      <label class="control-label col-sm-3" for="shift">Shift:<span class="required">*</span></label>
							      <div class="col-sm-9">
										<input name="shift" type="radio" value="1" required="required"> 02:00 - 04:00 AM (Mon-Fri) <br>
										<input name="shift" type="radio" value="2" required="required"> 06:00 - 08:00 PM (Mon-Fri) <br>
										<input name="shift" type="radio" value="3" required="required"> 08:00 - 10:00 PM (Sat-Sun)
							      </div>
							    </div>
							    <div class="form-group">
								    <label for="fullname" class="control-label col-sm-3">Full Name:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" id="fullname">
									</div>
								</div>
							    <div class="form-group">
								    <label for="tel" class="control-label col-sm-3">Tel:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" id="tel">
									</div>
								</div>
								<div class="form-group">
								    <label for="email" class="control-label col-sm-3">Email:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="email" class="form-control" id="email">
									</div>
								</div>
								<div class="form-group">
								    <label for="calendar" class="control-label col-sm-3">Date of Birth:<span class="required">*</span></label>
								    <div class="col-sm-9">
								    	<input type="text" required name="dob" data-date-format="yyyy-mm-dd" class="form-control datepicker" id="calendar">
									</div>
								</div>
								<div class="form-group">
							      <label class="control-label col-sm-3" for="">University:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control">
							      			<option>IOS Application Development</option>
							      		</select>
							      </div>
							    </div>
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Year:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control">
							      			<option>IOS Application Development</option>
							      		</select>
							      </div>
							    </div>
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Gender:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<select class="form-control">
							      			<option>Male</option>
							      			<option>Female</option>
							      		</select>
							      </div>
							    </div>
							    
								<div class="form-group">
							      <label class="control-label col-sm-3" for="">Address:<span class="required">*</span></label>
							      <div class="col-sm-9">
							      		<textarea class="form-control"></textarea>
							      </div>
							    </div>
							    
							    <div class="form-group">
							      <label class="control-label col-sm-3" for="">Comment:</label>
							      <div class="col-sm-9">
							      		<textarea class="form-control"></textarea>
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
								
								<h4>ទូរស័ព្ទទំនាក់ទំនងៈ ០២៣ ២៩ ១៣ ១៤/ ០៨៦ ២៩ ២៩ ១៤/ ០៩៩ ៧៦ ៨៤ ៨១/ ០១៧ ២២០ ៧០៧</h3>
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
	
	</body>
	
</html>