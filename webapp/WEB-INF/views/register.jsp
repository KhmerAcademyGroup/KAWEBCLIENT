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
								<div class="alert alert-default  square fade in alert-dismissable">
		<!-- 						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> -->
									<strong class="alert-link">Login with your Khmer Academy Account</strong>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-info alert-bold-border square fade in alert-dismissable">
	<!-- 							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> -->
									<strong class="alert-link">You've successfully logged out!</strong>
								</div>
							</c:if>
								

								
								
								<form class="form-horizontal m-t-20" id="frmSignUp" action="${pageContext.request.contextPath}/signup" method="POST">
	                    
					                    <div id="message-re"></div>
					                    
					                    
					                     <div class="col-lg-12">
							                    <div class="form-group ">
							                        <div class="col-lg-12">
							                        	<label>Email <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="email" id="email" placeholder="Email">
							                        </div>
							                    </div>
							                    
							                    <div class="form-group ">
							                        <div class="col-lg-12">
							                        	<label>Username <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('Username is required!')" oninput="setCustomValidity('')" name="username" id="username" placeholder="Username">
							                        </div>
							                    </div>
							
							                    <div class="form-group">
							                        <div class="col-lg-12">
							                        	<label>Password <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is required!')" oninput="setCustomValidity('')" name="password"  id="password" placeholder="Password">
							                        </div>
							                    </div>
							                    
							                    <div class="form-group">
							                        <div class="col-lg-12">
							                        	<label>Confirm password <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The Confirm Password is required!')" oninput="setCustomValidity('')" name="repassword"  id="repassword" placeholder="Confirm Password">
							                        </div>
							                    </div>
							                
							                    <div class="form-group">
							                    	<div class="col-lg-12">
							                    			<label>Department <span style="color:red">*</span></label>
															<select placeholder="Choose a department" class="form-control rounded bold-border" id="getDepartment">
																
															</select>
													</div>
												</div>
												
							                    <div class="form-group">
							                    	<div class="col-lg-12">
							                    			<label>University <span style="color:red">*</span></label>
															<select placeholder="Choose a university" class="form-control rounded bold-border" id="getUniversity">
																
															</select>
													</div>
												</div>
												
										</div>
					                    
					                    
					                    <div class="form-group text-center m-t-40">
					                        <div class="col-xs-12">
					                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit">Sign Up</button>
					                        </div>
					                    </div>
						
						 				<div class="form-group text-center m-t-40">
					                        <div class="col-xs-12">
					                            Already have an account? <a href="#" id="btSLogin">Login</a>
					                        </div>
					                    </div>
					                    
					            </form>
								<hr>
								
								
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
						
						
						
						
						
						<div class="col-sm-6">
							<div class="the-box bg-default no-border">
							
								<div class="alert alert-default  square fade in alert-dismissable">
									<strong class="alert-link">Sign up with your Social Account</strong>
								</div>
								
								<button onclick="Login()" style="background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block"><i class="fa fa-facebook"></i> Facebook</button>
								<div id="fb-root"></div>
								<script>(function(d, s, id) {
								  var js, fjs = d.getElementsByTagName(s)[0];
								  if (d.getElementById(id)) return;
								  js = d.createElement(s); js.id = id;
								  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=733594286732881";
								  fjs.parentNode.insertBefore(js, fjs);
								}(document, 'script', 'facebook-jssdk'));</script>
									
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
			
			
										
										
			
						
		</div>
		
		
		
		
		<!-- End My Contend -->
		
		
		<jsp:include page="shared/_footer.jsp" />
		
		<script type="text/javascript">
		   var path =  "${pageContext.request.contextPath}";
		</script>
		  
		  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/facebookscript.js"></script>
		  <script type="text/javascript">
		  $(document).ready(function(){
				  listDepartment_University = function(){
						KA.createProgressBarWithPopup();
						$.ajax({ 
						    url: "${pageContext.request.contextPath}/rest/listuniversity_department", 
						    type: 'GET',
						    beforeSend: function(xhr) {
			                    xhr.setRequestHeader("Accept", "application/json");
			                    xhr.setRequestHeader("Content-Type", "application/json");
			                },
						    success: function(data) { 
								console.log(data);
								$("#department_tmpl").tmpl(data.DEPARTMENT).appendTo("#getDepartment");
								$("#university_tmpl").tmpl(data.UNIVERSITY).appendTo("#getUniversity");
								KA.destroyProgressBarWithPopup();
						    },
						    error:function(data,status,er) { 
						    	KA.destroyProgressBarWithPopup();
						        console.log("error: "+data+" status: "+status+" er:"+er);
						    }
						});
					};
				listDepartment_University();
		  });
		  </script>
		  
		  
	</body>
</html>