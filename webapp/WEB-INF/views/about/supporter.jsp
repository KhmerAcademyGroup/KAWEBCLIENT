<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
	<head>
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
				<h2><strong>Introduce our supporter</strong></h2>
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
				  <li><a href="${pageContext.request.contextPath}/about">About</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/people">People</a></li>
				  <li class="active">Supporter</li>
				  <li><a href="${pageContext.request.contextPath}/about/partner">Partner</a></li>
				  <li><a href="${pageContext.request.contextPath}/about/contribute">Contribute</a></li>
				</ol>
			<h4 class="page-title">Supporter</h4>
			</div><!-- /.container -->
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div><!-- /.border-bottom -->
		</div>
		
		<!-- <div class="section">
			<div class="container text-center">
				<h4 class="light-font line-height-28 margin-top-50">
				We've got many great supports from Cambodian people, students, institutes, universities 
				and especially Ministry of Education, Youth and Sport of Cambodia. 
				So far, we have made MoU with five universities and government <br>
				</h4>
			</div>/.container
		</div> -->
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="margin-bottom-30"><strong>Korea Software HRD Center</strong> </h3>
						<p>
						Korea HRD center is an IT educational institute in Cambodia, which is built and funded by KOICA(Korea International Cooperation Agency)and WEBCASH. This center is the birthplace of Khmer academy and all the related services. 
						Center has produced 3 generations of IT expert, approximately  200 of alumni, and Khmer academy has been established by those 
						future IT leader of Cambodia. 
						</p>
					</div><!-- /.col-sm-6 -->
					
					<div class="col-sm-6">
						<img style="height:270px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/kshrd.png" class="img-responsive" alt="Section image">
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
							
