
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
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
		
		


		<div class="container" style="margin-top:20px">
	
<%-- 			<jsp:include page="../shared/_banner.jsp"></jsp:include> --%>
			
			
			
			<div class="section-heading">
					<div class="inner-border"></div>
					<h3 style="color:#4c954d;">Tutorials</h3>
				</div>

			<div id="loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"/></div>
			
			
			<div id="listcategory" style="min-height:360px"></div>	
				
			

		</div>





		<!-- BEGIN FOOTER -->
			<jsp:include page="../shared/_footer.jsp" />
		<!-- END FOOTER -->
		<script id="tlistcategory" type="text/x-jquery-tmpl">
				<div class="col-sm-3">
					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}">
							<img alt="Image" class="item-image img-responsive" src="{{= categoryLogoUrl}}">
						</a>
						<div class="the-box bg-info no-margin no-border item-des">
							<h5><a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}" style="color:white">{{= categoryName}}</a></h5>
							<!-- /.btn-group -->
						</div>
						<!-- /.the-box .no-margin .no-border .item-des -->
					</div>
					<!-- /.the-box .no-border .full .store-item -->
					<!-- END ITEM STORE -->
				</div>
		</script>
		<script>
			$(document).ready(function(){
				$.ajax({
					url : "${pageContext.request.contextPath}/tutorial/rest/listcategory",
					method: "GET",
					success : function(data){
						$("#tlistcategory").tmpl(data.RES_DATA).appendTo("#listcategory");
						$("#loading").hide();
					}
					
				});
			});
		</script>
		


	</div>
	<!--
		===========================================================
		END PAGE
		===========================================================
		-->
		
		
	</body>
</html>