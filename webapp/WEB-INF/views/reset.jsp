<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Reset Password</title>
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

						 <!-- change password -->
												    <div class="panel panel-success">
												      <div class="panel-heading">Reset your password</div>
												      <div class="panel-body">
												      	<div class="col-xs-12">
												      		<form class="form-horizontal bootstrap-validator-form">												      		
															<div class="form-group">
																<label class="col-lg-3 control-label">New Password<span class="required">*</span></label>
																<div class="col-lg-5">
																	<input type="password" onkeyup="validatNewPass();" class="form-control" name="newpassword" id="newpassword"  data-bv-field="oldpassword">
																<small id="checknewpassword" class="help-block" style="color: red;"></small></div>
																
															</div>
															<div class="form-group">
																<label class="col-lg-3 control-label">Confirm Password<span class="required">*</span></label>
																<div class="col-lg-5">
																	<input type="password" onkeyup="validatConPass(); validatebothpass()" class="form-control" name="conpassword" id="conpassword"  data-bv-field="oldpassword">
																	<small id="checkconpassword" class="help-block" style="color: red;"></small>
																	<small id="checkbothpassword" class="help-block" style="color: red;"></small></div>
															</div>
															
															<!-- Button Post -->
															<div class="form-group">
																<div class="col-lg-9 col-lg-offset-3">
																	<input type="button"  class="btn btn-info btn-perspective " id="btnupdate" value="Update"/>
																</div>
															</div>
															</form>
															</div>
															<br/>
															<br/>
												      </div>
												    
												</div>
										</div>
			
		
		<!-- End My Contend -->
		
		
		<jsp:include page="shared/_footer.jsp" />
		
		  <script type="text/javascript">
		  
		  function validatebothpass(){
				var pass1= $("#newpassword").val();
				var pass2= $("#conpassword").val();
				if(pass1 != pass2){
					$("#newpassword").css("border", "solid 1px red");
					$("#conpassword").css("border", "solid 1px red");
					$("#checkbothpassword").text("Check New Password and Confirm Password");
					checkpass= false;
				}else{
					$("#checkbothpassword").text("");
					$("#newpassword").css("border", "solid 1px green");
					$("#conpassword").css("border", "solid 1px green");
					checkpass= true;
				}
			}
			function validatNewPass(){
				var name= $("#newpassword").val();
				var characterReg = /^[a-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{6,16}$/;
				    if(!characterReg.test(name)) {
				    	$("#newpassword").css("border", "solid 1px red");
				    	$("#checknewpassword").text("Require and at least 6 charactors less than 16 charactors");
				    	newpass=false;
				    }else{
				    	$("#newpassword").css("border", "solid 1px green");
				    	$("#checknewpassword").text("");
				    	newpass=true;
				    }
			}
		  
			function validatConPass(){
				var name= $("#conpassword").val();
				var characterReg = /^[a-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{6,16}$/;
				    if(!characterReg.test(name)) {
				    	$("#conpassword").css("border", "solid 1px red");
				    	$("#checkconpassword").text("Require and at least 6 charactors less than 16 charactors");
				    	conpass=false;
				    
				    }else{
				    	$("#conpassword").css("border", "solid 1px green");
				    	$("#checkconpassword").text("");
				    	conpass=true;
				    }
			}
			
		  $(document).ready(function(){
			  
			  $(document).on('click', "#btnupdate", function() {
				   var code = "${param.code}";
				   
					var password =$("#newpassword").val()
					
				 	 $.ajax({
						url : "${pageContext.request.contextPath}/rest/reset?code="+code+"&password="+password,
						method: "GET",
						success: function(data){  	    							    					
							if(password==""){alert("Data empty"); return 0;}
							
							if(data.STATUS==true){
								alert("Your password has been resetted successfully! ")
								 window.location = '${pageContext.request.contextPath}/login';
							}
							else{
								alert("Your password has not been resetted. Please request a new code to reset your password!")
								$("#frmreset").bPopup();
							}														
// 							 console.log(data);
						}
					});  
				});
			  
		  });
		  </script>
	</body>
</html>