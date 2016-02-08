<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

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
							<c:if test="${param.logout == null}">
								<div class="alert alert-warning alert-bold-border square fade in alert-dismissable">
		<!-- 						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> -->
									<strong class="alert-link">Please login to your Khmer Academy account!</strong>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-info alert-bold-border square fade in alert-dismissable">
	<!-- 							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> -->
									<strong class="alert-link">You've been logout successfully!</strong>
								</div>
							</c:if>
								

								
								<hr>
								<form role="form" id="frmLogin" action="${pageContext.request.contextPath}/login">
									 
									  <div id="message"></div>
									  
									  <div class="form-group">
										<label>Email address</label>
										<input type="text" id="ka_email" class="form-control" placeholder="Enter email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="ka_username">
									  </div>
									  <div class="form-group">
										<label>Password</label>
										<input type="password" id="ka_password" class="form-control" placeholder="Password" required="required"  oninvalid="this.setCustomValidity('The password is incorrect!')" oninput="setCustomValidity('')" name="ka_password">
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
					                            <a  href="#frmreset" data-toggle='modal'>><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
					                        </div>
					                        <div class="col-sm-5 text-right">
					                            <a href="/register">Create an account</a>
					                        </div>
					                    </div>
								  
								</form>
								<hr>
								
								
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
			
			
			<div class="modal fade" id="frmreset" tabindex="-1" role="dialog" aria-labelledby="DefaultModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
											<div class="modal-content" style="border-radius: 5px;">
											  <div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="DefaultModalLabel">Reset Password</h4>
											  </div>
											  <div class="modal-body" >
												
													<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist" >
													<label> Enter your email here</label>
													<div class="input-group">
													
                                      						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>                                      
                                     						<input type="text" class="form-control" name="email" id="emailaddress" placeholder="Enter your email !">
                                   						 </div>
														 <br/>													 																												 
														 	 <input type="button" id="btn_submit"   class="btn btn-success" value="Submit">
													</form> 													
											  </div>
											  
											</div><!-- /.modal-content -->
										  </div><!-- /.modal-doalog -->
										</div><!-- /#DefaultModal -->	
										
			
						
		</div>
		
		
		
		
		<!-- End My Contend -->
		
		
		<jsp:include page="shared/_footer.jsp" />
		
		  <script type="text/javascript">
		  $(document).ready(function(){
			  
			  $(document).on('click', "#btn_submit", function() {									  
					var address =$("#emailaddress").val()
				 	 $.ajax({
						url : "${pageContext.request.contextPath}/rest/getuseremail?email="+address,
						method: "GET",
						success: function(data){  	    							    					
							if(address==""){alert("Data empty"); return 0;}
							
							if(data.STATUS==true){
								alert("Please check your email ! ")
							}
							else{
								alert("Invalib Email !")
							}														
							 console.log(data);
						}
					});  
				});
			  
		  });
		  </script>
	</body>
</html>