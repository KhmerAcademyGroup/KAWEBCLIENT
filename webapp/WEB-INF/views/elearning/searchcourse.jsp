<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Profile</title>
	<jsp:include page="../shared/_header.jsp" />
		<!-- sweet alert -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/sweetalert2.css">
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
  		<!-- Player -->
  		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video-js.css">
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.css">
		<!-- Player Responsive -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/player-responsive.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/profile.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
		<!-- chhoin  style add -->
		<style type="text/css">
		 
		</style>
</head>
<body >
	
	<c:set var="usertype"  value="${usertype }"/>		
	<jsp:include page="../shared/_menu.jsp" />
	<br/>
		
		
	<!-- My Contend -->
	<div class="container ">

	        <!-- Sidebar -->
	        
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="" style="background:#fff;">
	            <div class="container-fluid">
	            	<div class="row">
	            		<div class="col-lg-12">
	            		
							<div class="panel with-nav-tabs panel-primary panel-square panel-no-border">
								<center><h2>Search Result</h2></center>
								
								<div class="col-sm-4 col-md-3 col-xs-6 mix " style="display: inline-block;  opacity: 1;">       
								<div class="work-item">        
									<div class="hover-wrap">         
										<a href="/KAWEBCLIENT/elearning/playvideo?v=ODQy&amp;playlist=NDA5"> <i class="glyphicon glyphicon-play icon-plus"></i>  </a> 
										<a style="cursor:pointer" class="btnremovevideofromplaylist" vid="ODQy"><i class="glyphicon glyphicon-remove-sign " style="margin-left: 89%"></i></a> 
									
									</div> <!-- /.hover-wrap -->       
										<i> <a href="playlistdetail.act?playlistid=1"><img src="https://i.ytimg.com/vi/MQlUFcdQw7I/mqdefault.jpg" alt="..."></a>  </i> 
										<div class="the-box no-border transparent no-margin" style="height: 100px;">  
											<div class="media-body">           
											
											<h5 class="media-heading" style="padding: 0px; margin: 0px;">          
												<strong class="text-black">16. Upload Image</strong>          
											</h5>          
											<ul style="list-style: none; padding: 0px; margin: 0px;">           
												<li class="text-muted small">by admin|2015-12-17</li>          
												<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;0&nbsp;&nbsp;            
												<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;0&nbsp;&nbsp;            
												<i class="fa fa-eye"></i>&nbsp;&nbsp;51&nbsp;&nbsp;</li>          
											</ul>        
											</div>        
										</div>        <!-- /.the-box no-border transparent -->      
								 </div>       <!-- /.work-item -->      
							</div>
								
								
							
							  
	                        
	                    	</div><!-- end col-lg-12 -->
	                </div> <!-- row -->
	            </div><!-- end container-fluid -->
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    </div>
	    <!-- /#wrapper -->
	
	
	</div>
	<!-- right content -->
	



	
	
	<!-- End My Contend -->
	 <jsp:include page="../shared/_footer.jsp" />
	<script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>
	 <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/assets/js/jscolor.js"></script>
	   <script src="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
        <script type="text/javascript">
	   
		
		</script>
  
               
	
</body>
</html>
