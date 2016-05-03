<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.google.gson.*" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="Khmer Academy is the first e-learning platform for knowledge sharing in Cambodia. It is developed by Korea Software HRD Center in 2015. All contents are in Khmer language for easy knowledge acquisition. Most contents are related to IT fields and plan to extend more topics. Our mission is to improve education environments of Cambodia by means of IT technologies. Khmer Academy will be a significant education platform which accumulates and shares all kinds of knowledge on internet. ">
		<meta name="keywords" content="Khmer Academy, Learning, Khmer Online">
		<meta name="author" content="Khmer Academy">
		<title>Tutorial Contents | Khmer Academy</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- PLUGINS CSS -->
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/weather-icon/css/weather-icons.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/prettify/prettify.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/icheck/skins/all.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/datepicker.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/markdown/bootstrap-markdown.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/datatable/css/bootstrap.datatable.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/slider/slider.min.css" rel="stylesheet">
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/mycss.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<link href="${pageContext.request.contextPath}/resources/assets/src/perfect-scrollbar.css" rel="stylesheet">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/src/perfect-scrollbar.js"></script>

  		  <style>
			hr{
				margin: 10px;
			}
			
			 @media (max-width: 1236px) {
				#btngr{
					width:150px;
				}
			 } 
 			a:hover{
 				text-decoration: none;
 				color: #FF6600;
 			}
 		 </style>
		<script>
      jQuery(document).ready(function ($) {
        "use strict";
		$('#SuppressScrollX_1').perfectScrollbar({suppressScrollX: true});
      });
      
    
     
    </script>

	
	</head>
		
	<body class="tooltips">
		
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
			
			
			
			<%-- <jsp:include page="../elearning/_header.jsp"></jsp:include> --%>
			<!-- BEGIN SIDEBAR LEFT -->
			
				<jsp:include page="_sidebar.jsp"></jsp:include>
		
			
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
			
				<div class="container-fluid the-box">
			
					<!-- left side -->
			<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12 the-box no-border clear-padding" id="left_side">
					<!-- Video Demo -->
					<div class="col-lg-12 col-md-12 col-sm-12">
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
			<!-- end left side -->
		<!-- right side -->
			<div class="hidden-xs hidden-sm hidden-md col-lg-3 the-box no-border clear-padding" id="right_side">
			
				<!-- <div >
					<img src="../uploads/thumnail/word_banner_ui.png" class="img-responsive"/><br/><br/>
				</div>	 -->			
				<div class="alert alert-default" style="text-align:center;background:white">					
						<img src="../uploads/thumnail/standing_banner-01.jpg"/>					
				</div>
			 
		
				
			</div>
			<!-- end right side -->
					
					
				
				</div><!-- /.container-fluid -->
				
				
				
				<!-- BEGIN FOOTER -->
				<%-- <jsp:include page="_footer.jsp"></jsp:include> --%>
				<!-- END FOOTER -->
				
				
			</div><!-- /.page-content -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->
		
		
		
		<!--
		===========================================================
		END PAGE
		===========================================================
		-->
		
		<!--
		===========================================================
		Placed at the end of the document so the pages load faster
		===========================================================
		-->
		
		<!-- MAIN JAVASRCIPT (REQUIRED ALL PAGE)-->
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/retina/retina.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/nicescroll/jquery.nicescroll.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
 
		<!-- PLUGINS -->
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/skycons/skycons.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/prettify/prettify.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/icheck/icheck.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/timepicker/bootstrap-timepicker.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/mask/jquery.mask.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/bootstrap.datatable.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/markdown.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/to-markdown.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/bootstrap-markdown.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>
		
		<!-- EASY PIE CHART JS -->
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/easypiechart.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>
		
		<!-- KNOB JS -->
		<!--[if IE]>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/jquery.knob.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/knob.js"></script>

		<!-- FLOT CHART JS -->
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.resize.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.selection.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.stack.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.time.js"></script>

		<!-- MORRIS JS -->
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/raphael.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/morris.min.js"></script>
		
		<!-- C3 JS -->
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/d3.v3.min.js" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/c3.min.js"></script>
		
		<!-- MAIN APPS JS -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>
		
		<script src="videoplayer/libs/video-js/video.js"></script>
	    <script src="videoplayer/youtube.js"></script>
		<script src="videoplayer/src/videojs.logobrand.js"></script>
	
	
		
		<script src="${pageContext.request.contextPath}/resources/assets/js/script/comments.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/script/tutorialsingle.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/script/listalltutorials.js"></script>
		<!-- Go to www.addthis.com/dashboard to customize your tools -->
		<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5291b47f21c49656" async="async"></script>
		
		<script>
	
			$(document).ready(function(){
				
		<%-- <%
				boolean isLogin = false;
				int userid = 0;
				User usr = (User) session.getAttribute("ka_user");
				if(usr != null){
					isLogin = true;
					userid = usr.getUserid();
				}
			%> --%>
			
				
				
			});
		</script>
		
	
		 <script>
			$(document).ready(function(){
				$.post("listtitletutorial.act" , 
						{
					categoryid : <%= request.getParameter("cid") %>
						}, 
						function(data){
							
							$("#listalltutorials").html(getTutorialLists(data));
				});
				
				var dis ="";
				dis += '<center><div id="loading">'+
											'<img class="img-responsive" src="${pageContext.request.contextPath}/resources/assets/img/loading.gif">'+
						'</div></center>';
				$("#tutorialdetail").html(dis);
				
				$.post("detail_first.act" , 
						{ 
					categoryid : <%= request.getParameter("cid") %>						 	
						}, 
						function(data){	
							$("#tutorialdetail").html(getTutorialDetail(data));
							//rating();
							$("#tutorialdetail img").addClass("img-responsive");
								
							
							
				});
				
			});
			</script> 
		
		
		<script type="text/javascript">
		function isNotLogin(){
			
		}
		
		

		</script> 
		
		<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=1416160595304905";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<script>

function rating(){
	
	(function(d, t, e, m){
	    
	    // Async Rating-Widget initialization.
	    window.RW_Async_Init = function(){
	                
	        RW.init({
	            huid: "221456",
	            uid: "0c7735d3de292b0250869c1816826be2",
	            source: "website",
	            options: {
	                "size": "medium",
	                "style": "oxygen"
	            } 
	        });
	        RW.render();
	    };
	        // Append Rating-Widget JavaScript library.
	    var rw, s = d.getElementsByTagName(e)[0], id = "rw-js",
	        l = d.location, ck = "Y" + t.getFullYear() + 
	        "M" + t.getMonth() + "D" + t.getDate(), p = l.protocol,
	        f = ((l.search.indexOf("DBG=") > -1) ? "" : ".min"),
	        a = ("https:" == p ? "secure." + m + "js/" : "js." + m);
	    if (d.getElementById(id)) return;              
	    rw = d.createElement(e);
	    rw.id = id; rw.async = true; rw.type = "text/javascript";
	    rw.src = p + "//" + a + "external" + f + ".js?ck=" + ck;
	    s.parentNode.insertBefore(rw, s);
	    }(document, new Date(), "script", "rating-widget.com/"));
}


</script>

<script src="http://memo.khmeracademy.org/resources/js/hrdmemoplugin.js"></script>

	</body>

		
</html>