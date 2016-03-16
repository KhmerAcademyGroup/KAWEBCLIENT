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
			<jsp:include page="../shared/_banner.jsp"></jsp:include>
			
			<div class="row">
				<div class="section-heading">
					<div class="inner-border"></div>
					<h3 style="color:#4c954d;">SHORT COURSE</h3>
				</div>
				<div class="col-sm-7">
					<div class="sc-info">
						
						<div class="panel-group">
						    <div class="panel panel-primary">
						      <div class="panel-heading">IOS APP DEVELOPMENT</div>
						      <div class="panel-body">
						      	<img src="${pageContext.request.contextPath }/resources/assets/img/2.png">
						      </div>
						    </div>
						</div>
						
					</div>
				</div>
				<div class="col-sm-5">
					<div class="sc-register">
						<div class="panel-group">
						    <div class="panel panel-primary">
						      <div class="panel-heading">REGISTER</div>
						      <div class="panel-body">
						      	<form role="form">
								    <div class="form-group">
								      <label for="email">Name:</label>
								      <input type="text" class="form-control" id="nmae" placeholder="Enter Name">
								    </div>
								    <div class="form-group">
								      <label for="email">Email:</label>
								      <input type="email" class="form-control" id="email" placeholder="Enter Email">
								    </div>
								    <div class="form-group">
								      <label for="gender">Gender:</label>
								      <select class="form-control" name="gender">
								      		<option value="1">Male</option>
								      		<option value="0">Female</option>	
								      </select>
								    </div>
								     <div class="form-group">
								      <label for="course">Course:</label>
								      <select class="form-control">
								      		<option>IOS</option>
								      		<option>Android</option>
								      		<option>Spring</option>
								      </select>
								    </div>
								    
								    <div class="form-group">
								      <label for="course">Time:</label>
								      <select class="form-control">
								      		<option>2:00pm - 4:00pm</option>
								      		<option>6:00pm - 8:00pm</option>
								      		<option>2:00pm - 4:00pm</option>
								      </select>
								    </div>
								   
								    <button type="submit" class="btn btn-default pull-right">Register</button>
								 </form>
						      </div>
						    </div>
						  </div>
						
						
					</div>
				</div>
				
			</div>
			
		</div>
		
		<jsp:include page="../shared/_footer.jsp" />
	
	</body>
	
</html>