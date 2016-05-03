<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Register</title>
		<jsp:include page="shared/_header.jsp" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/sweetalert2.css">		
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
							
								<div class="alert alert-default  square fade in alert-dismissable">
									<strong class="alert-link"><spring:message code="rp_sign_up_ka"/></strong>
								</div>
							
								

								
								
								<form class="form-horizontal m-t-20" id="frmSignUp" action="${pageContext.request.contextPath}/signup" method="POST">
	                    
					                    <div id="message-re"></div>
					                    
					                    
					                     <div class="col-lg-12">
							                    <div class="form-group ">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_email"/> <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="email" id="email" placeholder="">
							                        </div>
							                    </div>
							                    
							                    <div class="form-group ">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_username"/> <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('Username is required!')" oninput="setCustomValidity('')" name="username" id="username" placeholder="">
							                        </div>
							                    </div>
							
							                    <div class="form-group">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_pwd"/> <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is required!')" oninput="setCustomValidity('')" name="password"  id="password" placeholder="">
							                        </div>
							                    </div>
							                    
							                    <div class="form-group">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_conf_pwd"/> <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The Confirm Password is required!')" oninput="setCustomValidity('')" name="repassword"  id="repassword" placeholder="">
							                        </div>
							                    </div>
							                
							                    <div class="form-group">
							                    	<div class="col-lg-12">
							                    			<label><spring:message code="rp_department"/> <span style="color:red">*</span></label>
															<select placeholder="<spring:message code="rp_department"/>" class="form-control rounded bold-border" id="getDepartment">
																
															</select>
													</div>
												</div>
												
							                    <div class="form-group">
							                    	<div class="col-lg-12">
							                    			<label><spring:message code="rp_university"/> <span style="color:red">*</span></label>
															<select placeholder="<spring:message code="rp_university"/>" class="form-control rounded bold-border" id="getUniversity">
																
															</select>
													</div>
												</div>
												
										</div>
					                    
					                    
					                    <div class="form-group text-center m-t-40">
					                        <div class="col-xs-12">
					                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit"><spring:message code="rp_sign_up"/></button>
					                        </div>
					                    </div>
						
						 				<div class="form-group text-center m-t-40">
					                        <div class="col-xs-12">
					                            <spring:message code="rp_already_acc"/> <a href="${pageContext.request.contextPath}/login"><spring:message code="rp_login"/></a>
					                        </div>
					                    </div>
					                    
					            </form>
								<hr>
								
								
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
						
						
						
						
						
						<div class="col-sm-6">
							<div class="the-box bg-default no-border" id="fbDiv" style="display:none">
							
								<div class="alert alert-default  square fade in alert-dismissable">
									<strong class="alert-link"><spring:message code="rp_sign_up_with_facebook"/></strong>
								</div>
								
								<button onclick="Login()" style="background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block btn-lg"><i class="fa fa-facebook"></i> Facebook</button>
								
									
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
			
			
										
										
			
						
		</div>
		
		
		
		
		<!-- End My Contend -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/facebookscript.js"></script>
		<jsp:include page="shared/_footer.jsp" />
		
		<script type="text/javascript">
		   var path =  "${pageContext.request.contextPath}";
		</script>
		  
		  
		  <script type="text/javascript">
		  $(document).ready(function(){
				  listDepartment_University = function(){
// 						KA.createProgressBarWithPopup();
						$.ajax({ 
						    url: "${pageContext.request.contextPath}/rest/listuniversity_department", 
						    type: 'GET',
						    beforeSend: function(xhr) {
			                    xhr.setRequestHeader("Accept", "application/json");
			                    xhr.setRequestHeader("Content-Type", "application/json");
			                },
						    success: function(data) { 
// 								console.log(data);
								$("#department_tmpl").tmpl(data.DEPARTMENT).appendTo("#getDepartment");
								$("#university_tmpl").tmpl(data.UNIVERSITY).appendTo("#getUniversity");
								KA.destroyProgressBarWithPopup();
						    },
						    error:function(data,status,er) { 
// 						    	KA.destroyProgressBarWithPopup();
						        console.log("error: "+data+" status: "+status+" er:"+er);
						    }
						});
					};
				listDepartment_University();
				
				
				$("#fbDiv").show();
				   
		  });
		  </script>
		  
		  
		
		
		  
		  
	</body>
</html>