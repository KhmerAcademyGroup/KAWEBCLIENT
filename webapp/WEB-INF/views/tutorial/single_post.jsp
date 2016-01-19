<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
	</head>
 
	<body class="tooltips">
		
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
			
			
			
			<!-- BEGIN TOP NAVBAR -->
			<jsp:include page="../shared/_menu.jsp" />
			<!-- END TOP NAVBAR -->
			<!-- BEGIN SIDEBAR LEFT -->
			
				
		
			
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
			
				<div class="container-fluid the-box">
			
					<!-- left side -->
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 the-box no-border clear-padding">
					
					<div class="col-sm-2">
						<jsp:include page="_sidebar.jsp"></jsp:include>
					</div>
					<!-- Video Demo -->
					<div class="col-sm-10">
						<div id="tutorialdetail">
							
						</div>
						<div>
						<hr/>
							<div style="float: left"> 
								<div class="fb-like" data-href="https://www.facebook.com/KhmerAcademy.Org" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
							</div>
							<div style="float: right">
							 <div class="rw-ui-container"></div>
							</div>
							<div style="clear:both;"></div>
						<hr/>
					</div>
					</div>
					<!-- End Video End -->
					
				
					
					
			</div>
			
					
					
				
				</div><!-- /.container-fluid -->
				
				
				
				<!-- BEGIN FOOTER -->
				<jsp:include page="../shared/_footer.jsp" />
				<!-- END FOOTER -->
				
				
			</div><!-- /.page-content -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->
		
		
		
		<!--
		===========================================================
		END PAGE
		===========================================================
		-->
		
		
	</body>
</html>