<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Partner</title>
		<jsp:include page="../shared/_header.jsp" />
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css" rel="stylesheet">

	<style>
		.morecontent span {
	    display: none;
		}
		.morelink {
		    display: block;
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
		<jsp:include page="../shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		
		
		
		
		
		
		
		<div class="section" style="min-height: 320px;">
			<div class="container text-center ka-container">
				<h2><strong><spring:message code="tp_mou"/></strong></h2>
				<!-- <h4 class="light-font line-height-28 margin-top-50">
				Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.<br>
				Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem.<br>
				Investigationes demonstraverunt lectores legere me lius quod<br>
				</h4> -->
			</div><!-- /.container -->
		</div>
		
		
						
		<div class="page-title-wrap">
			<div class="container">
				<ol class="breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/about"><spring:message code="m_about"/></a></li>
<%-- 				  <li><a href="${pageContext.request.contextPath}/about/people">People</a></li> --%>
				  <li><a href="${pageContext.request.contextPath}/about/supporter"><spring:message code="m_supporter"/></a></li>
				  <li class="active"><spring:message code="m_partner"/></li>
				  <li><a href="${pageContext.request.contextPath}/about/contribute"><spring:message code="m_contribute"/></a></li>
				</ol>
			<h4 class="page-title"><spring:message code="tp_our_partner"/></h4>
			</div><!-- /.container -->
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div><!-- /.border-bottom -->
		</div>
		
		<!-- <div class="container">
			<div class="section-heading">
				<div class="inner-border"></div>
					<h3>Memorandum of Understanding for E-Learning Service</h3>
			</div>
		</div> -->
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="tp_moeys"/></strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-MoEYS.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						<spring:message code="tp_moeys_detail"/>
						</p>
					</div>
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="tp_cbnu"/></strong> </h3>
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
						<br/>
						<p>
						<spring:message code="tp_cbnu_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		
		 <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="tp_bbu"/></strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-BBU.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						<spring:message code="tp_bbu_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
			
		 <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="tp_aeu"/></strong> </h3>
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
						<br/>
						<p>
						<spring:message code="tp_aeu_deail"/>
						</p>
					</div>
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>	
			  
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="tp_iic"/></strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-IIC.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						<spring:message code="tp_iic_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="tp_num"/></strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-NUM.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						<spring:message code="tp_num_detail"/>
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong><spring:message code="tp_niptcit"/></strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-NIPTCIT.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						<spring:message code="tp_niptcit_detail"/>	
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		

		
		
		
		
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
	<script>
	
	$(document).ready(function() {
    // Configure/customize these variables.
    var showChar = 300;  // How many characters are shown by default
    var ellipsestext = "...";
    var moretext = "Show more >";
    var lesstext = "Show less";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
 
            var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
});
    	
	</script> 			
    	
				
	</body>
</html>
							
