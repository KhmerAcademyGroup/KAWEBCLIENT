<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="model.dto.*" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">
		<title>Single Post | Khmer Acedemy</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- PLUGINS CSS -->
		<link href="assets/plugins/weather-icon/css/weather-icons.min.css" rel="stylesheet">
		<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet">
		<link href="assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet">
		<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet">
		<link href="assets/plugins/datepicker/datepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/validator/bootstrapValidator.min.css" rel="stylesheet">
		<link href="assets/plugins/summernote/summernote.min.css" rel="stylesheet">
		<link href="assets/plugins/markdown/bootstrap-markdown.min.css" rel="stylesheet">
		<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css" rel="stylesheet">
		<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
		<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
		<link href="assets/plugins/slider/slider.min.css" rel="stylesheet">
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">
		<link href="assets/css/style-responsive.css" rel="stylesheet">
		<link href="assets/css/mycss.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<link href="assets/src/perfect-scrollbar.css" rel="stylesheet">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="assets/src/perfect-scrollbar.js"></script>
	
        <link rel="stylesheet" href="videoplayer/libs/video-js/video-js.css">
	  	<link rel="stylesheet" href="videoplayer/src/videojs.logobrand.css">
		
		<!-- Player Responsive -->
		<link href="assets/css/player-responsive.css" rel="stylesheet">
		
  		  <style>
			.vjs-default-skin .vjs-big-play-button{
				left: 40%;
				top: 40%;
				
				
				}
			
 		 </style>
		<script>
      jQuery(document).ready(function ($) {
        "use strict";
		$('#SuppressScrollX').perfectScrollbar({suppressScrollX: true});
      });
    </script>
    
    <script>
	function votes(id, url){
		var xmlhttp;
		if (window.XMLHttpRequest)
			xmlhttp=new XMLHttpRequest();
		else
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		
		xmlhttp.onreadystatechange=function(){
	    	if (xmlhttp.readyState==4 && xmlhttp.status==200){
	    		document.getElementById(id).innerHTML=xmlhttp.responseText;
	    	}
		}
		
		xmlhttp.open("get", url, true);
		xmlhttp.send();
	}
	</script>
	</head>
		
	<body class="tooltips">
	
		<%
		Video dto=null;
		if(request.getAttribute("video")!=null){
			dto = (Video) request.getAttribute("video");
		}
		%>
	
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
			
			
			
			<jsp:include page="_header.jsp"></jsp:include>
			<!-- BEGIN SIDEBAR LEFT -->
			<jsp:include page="_sidebar.jsp"></jsp:include>
			<!-- /.sidebar-left -->
			<!-- END SIDEBAR LEFT -->
			
			
			
			
			
			
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
			
				
				
				
				<div class="container-fluid the-box">
			
					<!-- left side -->
			<div class="col-lg-2 col-md-offset-1 col-md-3 hidden-sm hidden-xs the-box no-border clear-padding">
				<div class="col-lg-5 col-md-5">
					<img class="img-circle" src="assets/img/avatar/avatar-10.jpg" width="100%" alt="Avatar">
				</div>
				<div class="col-sm-7">
					<label><strong class="text-black"><%= dto.getUsername() %></strong></label>
					<br>
					<label class="small text-muted"><i>Member since:<br /><%=new SimpleDateFormat("dd-MMM-yyyy").format(dto.getPostdate())%></i></label>
				</div>
				
				<div class="col-sm-12">
					<hr class="hr-style-one">
					 Hi! Iâm Rob. I have a degree in Mathematics from Cambridge University and you might call me a bit of coding geek.
					After building websites for friends and family for fun, I soon learned that web development was a very lucrative career choice. I gave up my successful (and sometimes stressful) job as a teacher to work part time and today, couldnât be happier. 
					<hr class="hr-style-one">
				</div>
				<div class="col-sm-12">
					<a href="#" class="pull-right">All Videos</a>
					<br>
					<br>
				</div>
				
				<div class="col-sm-12">
							<div class="panel-group" id="accordion-1">
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-1">
										Web Development
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div style="height: 0px;" id="accordion-1-child-1" class="collapse">
									  <div class="panel-body">
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 1</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 2</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 3</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 4</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 5</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 6</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 7</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 8</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 9</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 10</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 11</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 12</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 13</a>
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a class="block-collapse" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-2">
										Graphic Design
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-minus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div style="height: auto;" id="accordion-1-child-2" class="collapse in">
									  <div class="panel-body">
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 1</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 2</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 3</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 4</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 5</a>
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-3">
										Mobile Development
										<span class="right-content">
											<span class="right-icon">
												<i class="glyphicon glyphicon-plus icon-collapse"></i>
											</span>
										</span>
										</a>
									</h3>
								  </div>
									<div id="accordion-1-child-3" class="collapse">
									  <div class="panel-body">
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 1</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 2</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 3</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 4</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 5</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 6</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 7</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 8</a><br><br>
										<i class="fa fa-caret-square-o-right"></i>&nbsp;<a href="#">Chapter 9</a>
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
							</div><!-- /.panel-group -->
				</div>
				<div class="hidden-lg col-md-12">
					<h5><strong class="text-black">Related Videos</strong></h5>
					<hr class="hr-style-one">
				</div>
				<div class="hidden-lg col-md-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="hidden-lg col-md-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
				<div class="hidden-lg col-md-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="hidden-lg col-md-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
				<div class="hidden-lg col-md-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="hidden-lg col-md-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
				<div class="hidden-lg col-md-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="hidden-lg col-md-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
			</div>
			<!-- end left side -->
			<!-- center -->
			<div class="col-lg-6 col-md-7 col-sm-12 col-xs-12 the-box no-border clear-padding">
					<!-- Video Info -->
					<div class="col-sm-3 hidden-xs hidden-md hidden-lg">
						<img class="img-circle" src="assets/img/avatar/avatar-10.jpg" width="100%" alt="Avatar">
					</div>
				
					<div class="col-lg-12 col-md-12 col-sm-9 col-xs-12">
						<h3><strong class="text-black"><%=dto.getVideoname()%></strong></h3>
						<span class="small text-muted"><i class="fa fa-clock-o"></i>&nbsp;<%=new SimpleDateFormat("dd-MMM-yyyy").format(dto.getPostdate())%></span><br>
						<span class="small text-muted"><i class="fa fa-folder-open"></i>&nbsp;<%=dto.getCategorynames()%></span><br>
						<span class="small text-muted"><i class="fa fa-user"></i>&nbsp;&nbsp;<%=dto.getUsername()%></span>
					</div>
					<!-- End Video Info -->
					<!-- Video Demo -->
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<hr class="hr-style-one">
						
						
						
						
						
						<div id="myplayerwrapper">
							<video id="vid1" class="video-js vjs-default-skin" controls preload="auto"></video>
						
						
						</div>
						
						
						
						
						
						
						
						
						<br>
						<br>
						<div class="pull-right">
							<span><a href="javascript:vote('?','plus')"><i class="fa fa-thumbs-up"></i></a></i><span id="plus"><%=dto.getCountvoteplus() %></span></span>&nbsp;&nbsp;
							<span><a><i class="fa fa-thumbs-down"></i></a></i><span id="minus"><%=dto.getCountvoteminus()%></span></span>&nbsp;&nbsp;
							<span><i class="fa fa-eye"></i></i><%=dto.getViewcounts()%> </span>
						</div>
						<hr class="hr-style-one">
					</div>
					<!-- End Video End -->
					<!-- Video Description -->
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<%=dto.getDescription()%>
					</div>
					<!-- End Video Description -->
					<!-- Video Comment -->
					<div class="col-sm-12">
						<hr class="hr-style-one">
						<hr class="hr-style-one">
					</div>
					<!-- End Video Comment -->
			</div>
			<!-- end center -->
			<!-- right side -->
			<div class="col-lg-2 hidden-md hidden-sm hidden-xs the-box no-border clear-padding">
				<div class="col-lg-12">
					<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">Main Categories</h3>
							</div>
							
							<div class="panel-body contentHolder" id="SuppressScrollX" style="">
								<div class="content">
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 1</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 2</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 3</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 4</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 5</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 6</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 7</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 8</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 9</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 10</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 11</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 12</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 13</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 14</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 15</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 16</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 17</a><br><br>
								<i class="fa fa-folder-open"></i>&nbsp;&nbsp;<a href="#">Category 18</a><br><br>
								</div>
							</div><!-- /.panel-body -->
							
					</div><!-- /.panel panel-primary -->
				</div>
				<div class="col-lg-12">
					<h5><strong class="text-black">Related Videos</strong></h5>
					<hr class="hr-style-one">
				</div>
				<div class="col-lg-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="col-lg-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
				<div class="col-lg-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="col-lg-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
				<div class="col-lg-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="col-lg-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
				<div class="col-lg-5" style="padding-right:5px">
					<img alt="image" class="store-image img-responsive" src="assets/img/photo/medium/img-11.jpg"></a>
				</div>
				<div class="col-lg-7" style="padding:0px">
					<label class="small"><strong class="text-black">My first video tutorial for web development</strong></label><br>
					<label class="small text-muted">by Sonn Sorady</label>
					<hr class="hr-style-one">
				</div>
				
			</div>
			<!-- end right side -->
					
					
				
				</div><!-- /.container-fluid -->
				
				
				
				<!-- BEGIN FOOTER -->
				<jsp:include page="_footer.jsp"></jsp:include>
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
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/plugins/retina/retina.min.js"></script>
		<script src="assets/plugins/nicescroll/jquery.nicescroll.js"></script>
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
 
		<!-- PLUGINS -->
		<script src="assets/plugins/skycons/skycons.js"></script>
		<script src="assets/plugins/prettify/prettify.js"></script>
		<script src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="assets/plugins/chosen/chosen.jquery.min.js"></script>
		<script src="assets/plugins/icheck/icheck.min.js"></script>
		<script src="assets/plugins/datepicker/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/timepicker/bootstrap-timepicker.js"></script>
		<script src="assets/plugins/mask/jquery.mask.min.js"></script>
		<script src="assets/plugins/validator/bootstrapValidator.min.js"></script>
		<script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatable/js/bootstrap.datatable.js"></script>
		<script src="assets/plugins/summernote/summernote.min.js"></script>
		<script src="assets/plugins/markdown/markdown.js"></script>
		<script src="assets/plugins/markdown/to-markdown.js"></script>
		<script src="assets/plugins/markdown/bootstrap-markdown.js"></script>
		<script src="assets/plugins/slider/bootstrap-slider.js"></script>
		
		<!-- EASY PIE CHART JS -->
		<script src="assets/plugins/easypie-chart/easypiechart.min.js"></script>
		<script src="assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>
		
		<!-- KNOB JS -->
		<!--[if IE]>
		<script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
		<script src="assets/plugins/jquery-knob/jquery.knob.js"></script>
		<script src="assets/plugins/jquery-knob/knob.js"></script>

		<!-- FLOT CHART JS -->
		<script src="assets/plugins/flot-chart/jquery.flot.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.resize.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.selection.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.stack.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.time.js"></script>

		<!-- MORRIS JS -->
		<script src="assets/plugins/morris-chart/raphael.min.js"></script>
		<script src="assets/plugins/morris-chart/morris.min.js"></script>
		
		<!-- C3 JS -->
		<script src="assets/plugins/c3-chart/d3.v3.min.js" charset="utf-8"></script>
		<script src="assets/plugins/c3-chart/c3.min.js"></script>
		
		<!-- MAIN APPS JS -->
		<script src="assets/js/apps.js"></script>
		
		<script src="videoplayer/libs/video-js/video.js"></script>
	    <script src="videoplayer/youtube.js"></script>
		<script src="videoplayer/src/videojs.logobrand.js"></script>
		 <script>

			// save a reference to the video element
			video = document.querySelector('video'),
			
			// save a reference to the video.js player for that element
			player = videojs(video, {'techOrder': ['youtube'], 'src': 'https://www.youtube.com/watch?v=<%=dto.getYoutubeurl()%>'});

			// initialize the plugin with some custom options:
			player.logobrand({
				//height: "32px",
				//width: "32px",
				image: "https://www.bizplay.co.kr//file/img/20141111_7e4439e2-c3d8-4496-bdfb-e10fe22db212.png",
				destination: "http://www.videojs.com/"
			});
			//player.logobrand().loadImage("http://instasynch.com/images/youtube.png");
			//player.logobrand().setDestination("http://instasynch.com/images/youtube.png");
			// set a flag and then we calculate the ratio from the width and height
			
		</script>
		<script>
			$(document).ready(function(){
				var screenwidth = window.innerWidth;
				if(screenwidth >= 992){
					$(".top-navbar").addClass("toggle");
					$(".sidebar-left").addClass("toggle");
					$(".page-content").addClass("toggle");
				}else{
					$(".top-navbar").removeClass("toggle");
					$(".sidebar-left").removeClass("toggle");
					$(".page-content").removeClass("toggle");
				}
			});
		</script>
	</body>

		
</html>