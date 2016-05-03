<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Contribute</title>
		<jsp:include page="../shared/_header.jsp" />
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css" rel="stylesheet">
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
		
		
		
		
		
		
		
		
		
		<div class="section" style="min-height: 320px;">
			<div class="container text-center ka-container">
				<h2><strong><spring:message code="cp_cambodia_future"/>	</strong></h2>
			</div><!-- /.container -->
		</div>
		
		
						
		<div class="page-title-wrap">
			<div class="container">
				<ol class="breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/about"><spring:message code="m_about"/></a></li>
<%-- 				  <li><a href="${pageContext.request.contextPath}/about/people">People</a></li> --%>
				  <li><a href="${pageContext.request.contextPath}/about/supporter"><spring:message code="m_supporter"/></a></li>
				  <li><a href="${pageContext.request.contextPath}/about/partner"><spring:message code="m_partner"/></a></li>
				  <li class="active"><spring:message code="m_contribute"/></li>
				</ol>
			<h4 class="page-title"><spring:message code="cp_join_khmeracademy"/></h4>
			</div><!-- /.container -->
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div><!-- /.border-bottom -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
<!-- 						<h3 class="margin-bottom-30"><strong>Korea Software HRD Center</strong> </h3> -->
						<p>
						<spring:message code="cp_join_khmeracademy_detial"/>						
						</p>
						
						<img src="${pageContext.request.contextPath}/resources/assets/img/about/volunteer/about_bigdas.jpg" alt="Image" class="mfp-fade item-gallery img-responsive">
						
							
							
					</div><!-- /.col-sm-6 -->
					<div class="col-sm-6">
							<div class="the-box">
							<h4 class="small-title"><spring:message code="cp_join_khmeracademy"/></h4>
								<form role="form" id="frmVolunteer" action="#">
								
								<div id="message"></div>
								
								  <div class="form-group">
									<label><spring:message code="cp_full_name"/></label>
									<input type="text" class="form-control" required="required" id="fullname" placeholder="">
								  </div>
								  <div class="form-group">
									<label><spring:message code="cp_email"/></label>
									<input type="email" class="form-control" required="required" id="email" placeholder="">
								  </div>
								   <div class="form-group">
									<label><spring:message code="cp_phone"/></label>
									<input type="text" class="form-control" required="required" id="phone" placeholder="">
								  </div>
								   <div class="form-group">
									<label><spring:message code="cp_explain"/></label>
									<textarea rows="5" class="form-control" required="required" id="detail"></textarea>
								  </div>
								  <input type="submit" class="btn btn-success" value="<spring:message code="cp_submit"/>"><i class="fa fa-sign-in"></i> 
								</form>
							</div><!-- /.the-box -->
							
					</div><!-- /.row -->
					
				</div>
			</div><!-- /.container -->
		</div>
		
		 
	
		
		
		
			
			
			  
		
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	<script type="text/javascript">
	
            $(document).ready(function(){
            	
            
				$("#frmVolunteer").submit(function(e){
			           		
				         		  e.preventDefault(); // alert($(this).serialize());
				         		  
				         		  frmData = { 
				         				 fullname : $("#fullname").val(),
				         				 email : $("#email").val(),
				         				 phone : $("#phone").val(),
				         				 detail : $("#detail").val()
				         				 
				         		}; 
				         		  console.log(frmData);
				         		  KA.createProgressBar();
				         		  $.ajax({
					    	            url: "${pageContext.request.contextPath}/rest/about/volunteer",
					    	            type: "POST",
					    	            datatype : "JSON",
					    	            data: JSON.stringify(frmData),
					    	            beforeSend: function(xhr) {
						                    xhr.setRequestHeader("Accept", "application/json");
						                    xhr.setRequestHeader("Content-Type", "application/json");
						                },
					    	            success: function(data) {
					    	            	KA.destroyProgressBar();
					    	            	$("#message").replaceWith('<div id="message" class="alert alert-success alert-bold-border square fade in alert-dismissable"> '+ 
						   		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
						 				  				   '<strong class="alert-link">Your request has been submitted to Khmer Academy.</strong>'+ 
						 				     '</div>');
					    	            },
					    	         	error: function(data){
					    	         		KA.destroyProgressBar();
					    	         		console.log(data);
					    				}
					    	        });
				         			
								});
			    	
            });
            
            
         </script>
    	
				
	</body>
</html>
							
