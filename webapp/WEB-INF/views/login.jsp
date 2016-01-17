<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="shared/_header.jsp" />
	</head>
 
	<body class="tooltips no-padding">
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		<!-- My Contend -->
		
		<div class="container ka-container" >
	
						<div class="col-sm-6">
							<div class="the-box bg-default no-border">
							
<!-- 							<h4 class="small-title">You are not authorized to access this page!</h4> -->
							
								<div class="alert alert-warning alert-bold-border square fade in alert-dismissable">
<!-- 								  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> -->
								 <strong>Please login to your Khmer Academy account to access this page!</strong>
								</div>
								<hr>
								<form role="form" id="frmLogin" action="${pageContext.request.contextPath}/login">
									 
									  <div class="form-group">
										<label>Email address</label>
										<input type="text" class="form-control" placeholder="Enter email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="ka_username">
									  </div>
									  <div class="form-group">
										<label>Password</label>
										<input type="password" class="form-control" placeholder="Password" required="required"  oninvalid="this.setCustomValidity('The password is incorrect!')" oninput="setCustomValidity('')" name="ka_password">
									  </div>
									  
									  
									   <div class="form-group ">
					                        <div class="col-xs-12">
					                            <div class="checkbox checkbox-primary">
					                                <input id="checkbox-signup" type="checkbox">
					                                <label for="checkbox-signup">
					                                    Remember me
					                                </label>
					                            </div>
					                            
					                        </div>
					                    </div>
					                    
					                    <div class="form-group text-center">
					                    	<button type="submit" class="btn btn-primary">Login</button>
					                    </div>
					                    
					                    <div class="form-group m-t-30">
					                        <div class="col-sm-7">
					                            <a href="#"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
					                        </div>
					                        <div class="col-sm-5 text-right">
					                            <a href="/register">Create an account</a>
					                        </div>
					                    </div>
								  
								</form>
								<hr>
								
								
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
			
			
						
		</div>
		
		
		
		
		<!-- End My Contend -->
		
		
		<jsp:include page="shared/_footer.jsp" />
		
		
	</body>
</html>