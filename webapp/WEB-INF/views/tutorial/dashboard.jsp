
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

		
			
			<div id="listcategory"></div>	
				
			

		</div>





		<!-- BEGIN FOOTER -->
			<jsp:include page="../shared/_footer.jsp" />
		<!-- END FOOTER -->
		<script id="tlistcategory" type="text/x-jquery-tmpl">
				<div class="col-sm-3">
					<!-- BEGIN ITEM STORE -->
					<div class="the-box no-border full store-item text-center">
						<a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}">
							<img alt="Image" class="item-image img-responsive" src="${pageContext.request.contextPath}/resources/uploads/{{= categoryLogoUrl}}">
						</a>
						<div class="the-box bg-primary no-margin no-border item-des">

							<h4 class="bolded">{{= categoryName}}</h4>
							<p>
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</p>
							<div class="btn-group">
								<a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}" class="btn btn-primary active">View</a>
							</div>
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