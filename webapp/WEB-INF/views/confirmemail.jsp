<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Email Verification</title>
		<jsp:include page="shared/_header.jsp" />
		
		<style type="text/css">
			#message, .processing{
				text-align: center;
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
		<jsp:include page="shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		<!-- My Contend -->
		
		<div class="container ka-container" style='min-height:300px' >
<!-- 
															<div class="form-group">
																<div class="col-lg-9 col-lg-offset-3">
																	<input type="button"  class="btn btn-info btn-perspective " id="btnconfirm" value="Cofirm"/>
																</div>
															</div>
															
															</div>
 -->				
 	<img src="${pageContext.request.contextPath}/resources/assets/img/processing.gif" class="processing"  >											
	<h1 id="message"></h1>
	</div>
			
		
		<!-- End My Contend -->
		
		
		<jsp:include page="shared/_footer.jsp" />
		
		  <script type="text/javascript">
		
		  $(document).ready(function(){
			   
			 setTimeout(function(){
			  var code = "${param.code}";				   					
			 	 $.ajax({
					url : "${pageContext.request.contextPath}/rest/confirm?code="+code,
					method: "GET",
					success: function(data){  
						if(data.STATUS==true){
							$(".processing").hide();
							$("#message").replaceWith("<div > <h1>Email Verification!</h1> <h4>Your email is verified. Thank you.</4><h4>You have registered successfully.</h4> <br/> <a href='${pageContext.request.contextPath}/login' class='btn btn-primary btLogin9999'>Login</a> </p> </div>")
							 //window.location = '${pageContext.request.contextPath}/login';
						}
						else{
							$(".processing").hide();
							$("#message").replaceWith("<div ><h1>Your email has been verified! Thank you.</h1> <br/> <a href='${pageContext.request.contextPath}/login' class='btn btn-primary btLogin999' >Login</a></div> ");
						}														
// 						 console.log(data);
					}
				}); 
			 }, 3000 );
		
			
		    
		 });
		  </script>
	</body>
</html>