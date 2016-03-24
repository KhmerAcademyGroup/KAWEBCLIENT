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
				<h2><strong>Memorandum of Understanding for E-Learning Service</strong></h2>
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
				  <li><a href="${pageContext.request.contextPath}/about/supporter">Supporter</a></li>
				  <li class="active">Partner</li>
				  <li><a href="${pageContext.request.contextPath}/about/contribute">Contribute</a></li>
				</ol>
			<h4 class="page-title">Our Partners</h4>
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
						<h3 class="margin-bottom-30"><strong>Ministry of Education, Youth and Sport Cambodia</strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-MoEYS.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						 Khmer academy and Ministry of Education, youth and sports, Kingdom of Cambodia signed MOU at 17 December, 2015. 
						 Through this MOU, We agreed to share every content on Khmer academy with government-run website called OEU (Open Educational Resources). 
						 Also, MoEYS agreed to encourage public schools to use contents in Khmer academy by means of conducting workshops nationwide. 
						 We also are planning to collaborate on lots of long-term projects which will shape the future of Cambodia.
						</p>
					</div>
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong>Chungbuk University, (CBNU) Korea </strong> </h3>
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
						<br/>
						<p>
						Khmer academy and Chungbuk University of South Korea signed MOU at 3 July, 2015. 
						We’ve agreed to share resources together including educational, research materials and human resources. 
						So far, lots of instructors of Khmer academy went to Chungbuk University for master degree and students
						of the university also annually comes to our organization for Volunteer work. 
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		
		 <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong>Bright University (BBU) Cambodia</strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-BBU.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						Khmer academy and Build Bright University of Cambodia signed MOU at 3 Jun, 2015.  
						We had an agreement to share and promote Khmer academy to improve education of Cambodia.
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
			
		 <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong>Asia Euro University (AEU) Cambodia</strong> </h3>
						<img style="height: 170px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/kshrd-logo.png" class="img-responsive" alt="Section image">
						<br/>
						<p>
						Khmer academy and Asia Euro University of Cambodia signed MOU at 30 June, 2015.
						We had an agreement to share and promote Khmer academy to improve education of Cambodia.
						</p>
					</div>
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>	
			  
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong>University of Technology (IIC) Cambodia</strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-IIC.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						Khmer academy and IIC University of Technology of Cambodia signed MOU at 1 July, 2015.
						We had an agreement to share and promote Khmer academy to improve education of Cambodia.
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong>University of Management (NUM) Cambodia</strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-NUM.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						Khmer academy and National University of Management of Cambodia signed MOU at 18 August, 2015.
						We had an agreement to share and promote Khmer academy to improve education of Cambodia.
						</p>
					</div><!-- /.col-sm-6 -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</div>
		
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-6">
						<h3 class="margin-bottom-30"><strong>National Institute of Posts, Telecommunication and ICT, (NIPTCIT) Cambodia</strong> </h3>
						<img style="height: 370px;" src="${pageContext.request.contextPath}/resources/assets/img/about/supporter/mou-NIPTCIT.jpg" class="img-responsive" alt="Section image">
						<br/>
						<p>
						28 January, 2015.		
						</p>
						<span class="more">
					      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					    </span>
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
							
