
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Tutorials</title>
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
		
		


		<div class="container" style="margin-top:20px;margin-bottom:50px">
	
<%-- 			<jsp:include page="../shared/_banner.jsp"></jsp:include> --%>
			
			
			
			<div class="section-heading">
					<div class="inner-border"></div>
					<h3 style="color:#4c954d;"><spring:message code="tp_tutorial"/></h3>
				</div>

			<div id="loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"/></div>
			
			
			<div id="listcategory" style="min-height:360px"></div>	
				
			

		</div>





		<!-- BEGIN FOOTER -->
			<jsp:include page="../shared/_footer.jsp" />
		<!-- END FOOTER -->
		<script id="tlistcategory" type="text/x-jquery-tmpl">
				<div class="col-sm-3" style="width: 210px;">
					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}">
							<img style="height: 100px;width:210px" alt="Image" class="item-image img-responsive" src="{{= categoryLogoUrl}}">
						</a>
						<div class="the-box bg-default no-margin no-border item-des" style="border: 1px solid #D5DAE0; padding: 14px;">  
							<h5><a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}"><strong style="color:#E9573F;">{{= categoryName}}</strong></a></h5>
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