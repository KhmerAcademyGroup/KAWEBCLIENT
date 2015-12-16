<%@page import="model.dto.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
 <!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
			<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer IT Study , IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="KHMER ACADEMY">
		<title>Khmer Acedemy Online</title>
 
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
		<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">
		<link href="assets/css/style-responsive.css" rel="stylesheet">
		
		<link href="assets/css/main-page.css" rel="stylesheet">
		<link href="assets/css/main-page-responsive.css" rel="stylesheet">
 
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		 <style>
			#owl-jsp .mitem ,#owl-dephi .mitem{
				/* padding: 30px 0px; */
				margin-right: 10px; 
				color: #FFF;
				-webkit-border-radius: 3px;
				-moz-border-radius: 3px;
				border-radius: 3px;
				text-align: center;
				}
				/* .customNavigation{
				text-align: center;
				}
				//use styles below to disable ugly selection
				.customNavigation a{
				-webkit-user-select: none;
				-khtml-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none;
				-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
				} */
		</style> 
		
	</head>
 
	<body class="tooltips">
		
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
		<jsp:include page="_header.jsp"></jsp:include>
		
			<!-- BEGIN SIDEBAR LEFT -->
			<jsp:include page="_sidebar.jsp"></jsp:include>
			<!-- END SIDEBAR LEFT -->
		
			
			
			
			<!-- BEGIN SIDEBAR RIGHT HEADING -->
			<!-- <div class="sidebar-right-heading">
				<ul class="nav nav-tabs square nav-justified">
				  <li class="active"><a href="#online-user-sidebar" data-toggle="tab"><i class="fa fa-comments"></i></a></li>
				  <li><a href="#notification-sidebar" data-toggle="tab"><i class="fa fa-bell"></i></a></li>
				  <li><a href="#task-sidebar" data-toggle="tab"><i class="fa fa-tasks"></i></a></li>
				  <li><a href="#setting-sidebar" data-toggle="tab"><i class="fa fa-cogs"></i></a></li>
				</ul>
			</div> --><!-- /.sidebar-right-heading -->
			<!-- END SIDEBAR RIGHT HEADING -->
			
			
			
			
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
			
			
				<div class="container-fluid">
					<!-- Begin page heading -->
					<!-- <h1 class="page-heading">Store widget <small>Sub heading here</small></h1> -->
					<!-- End page heading -->
				
					<!-- Begin breadcrumb -->
					<ol class="breadcrumb default square rsaquo sm">
						<li><a ><i class="fa fa-home"></i></a></li>
						<li><a >Courses</a></li>
						<li class="active">All Courses</li>
					</ol>
					<!-- End breadcrumb -->
					
					 
					
					
	
					<div class="the-box">
							
							<span class="small-title">Recommend Video</span>
<!-- 							<span class="pull-right"><a href="category.act?category=1">View All </a><i class="fa fa-plus-square"></i></span> -->
							<br/>
							<br/>
						   	<div id="showdata">
						    
							</div>
					</div>
				</div>
			</div>
						   
						   
				
				
			<div class="page-content">
			
			
				<div class="container-fluid">
					<div class="the-box">
							<span class="small-title">Top Recent</span>
						<!-- 	<span class="pull-right"><a href="_category.jsp">View All </a><i class="fa fa-plus-square"></i></span> -->
							<br/>
							<br/>
							<div id="showtop">						    
							</div>
					</div>
				

			</div><!-- /.page-content -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->
		
		
				<!-- BEGIN FOOTER -->
				<jsp:include page="_footer.jsp"></jsp:include>
				<!-- END FOOTER -->
		
		
		</div>
	
		
		
		
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
		<script>
		<%
			boolean isLogged = false;
 			User usr = (User) session.getAttribute("ka_user");
			if(usr != null){
				isLogged = true;
			}
		%>
		var isLogged = <%= isLogged %>

	    $(document).ready(function() {
	     
			$.post("dashboard.act", {
			}, function(data) {
				
	
 			 	var s="";
 				s = "<div id='owl-jsp' class='owl-carousel owl-theme'>";
				for(var i=0;i<data.playlist.length;i++){
				s+=" <div class='mitem'>"
					+"	<div> <div class='thumbnail media-lib-item'>"
					+"<a href='playlistdetail.act?playlistid="+data.playlist[i].playlistid+"'>"
					+"<img style='width: 232px; height: 131px;' src='https://i.ytimg.com/vi/"
					+data.playlist[i].thumbnailurl+ "/mqdefault.jpg' alt='...'></a>"+
					  "<a href='playlistdetail.act?playlistid="+data.playlist[i].playlistid+"'><p class='text-info' style='padding-top: 6px;'>"
				        +data.playlist[i].playlistname
				   + "</p></a><div class='caption text-center'>"
					+"	<a class='media user-card-sm pull-left'>"
						+"		<img alt='Avatar' src='../uploads/"+data.playlist[i].userimageurl+"' class='media-object img-circle'>"
						+"</a><p class='small'><a class='no-underline'>"+data.playlist[i].username.toUpperCase()+"</a><br>"
						+"<span class='small text-muted'>KSHRD Playlist</span></p>"
						+ "</div></div></div></div>";
				} 
				
				s+= "</div>";
				$("#showdata").html(s);
				
				
				
				
				
				
				var x="<div id='owl-dephi' class='owl-carousel owl-theme'>";
				for(var i=0;i<data.video.length;i++){
					
// 					var click = "href='#' onclick=isNotLogin()";
// 					if(isLogged == true){
// 						click = "href='play.act?v="+data.video[i].videoid +"'";
// 					}
					
// 					var click ="href='play.act?v="+data.video[i].videoid +"'";
					
					x+=" <div class='mitem'>"
						+"	<div> <div class='thumbnail media-lib-item'>"
						+"<a  href='play.act?v="+data.video[i].videoid +"'>"
						+"<img style='width: 232px; height: 131px;' src='https://i.ytimg.com/vi/"+data.video[i].youtubeurl +"/mqdefault.jpg' alt='Thumnail Image'></a>"; 
		
					    if(data.video[i].videoname.length >36){
					    	
					    	x+= "<a  href='play.act?v="+data.video[i].videoid +"'><p class='text-info' Style='padding-top: 10px'>"+ data.video[i].videoname.substring(0,50)+"</p></a>" ;
					    }	
					    else{
					    	x+= "<a  href='play.act?v="+data.video[i].videoid +"'><p class='text-info' Style='padding-top: 30px'>"+ data.video[i].videoname+"</p></a>";
					    	
					    }
						x+= "</p><div class='caption text-center'>"
						+"	<a  class='media user-card-sm pull-left'>"
							+"		<img alt='Avatar' src='../uploads/"+data.video[i].userimageurl +"' class='media-object img-circle'>"
							+"</a><p class='small'><a class='no-underline'>"+data.video[i].username.toUpperCase() +"</a><br>"
							+"<span class='small text-muted'><b>"+data.video[i].viewcounts +"</b> Views</span></p>"
							+ "</div></div></div></div>";
					} 
					
					x+= "</div>";
					$("#showtop").html(x);

				showme(); 
			});

	    // Custom Navigation Events
	   /*  $(".next").click(function(){
	    owl.trigger('owl.next');
	    })
	    $(".prev").click(function(){
	    owl.trigger('owl.prev');
	    })
	    $(".play").click(function(){
	    owl.trigger('owl.play',1000); //owl.play event accept autoPlay speed as second parameter
	    })
	    $(".stop").click(function(){
	    owl.trigger('owl.stop');
	    }) */
	     function showme(){
			var owl = $("#owl-jsp");
		    owl.owlCarousel({
		    items : 5, //10 items above 1000px browser width
		    itemsDesktop : [1024,4], //5 items between 1000px and 901px
		    itemsDesktopSmall : [900,3], // betweem 900px and 601px
		    itemsTablet: [600,2], //2 items between 600 and 0
		    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
		    });
		     
		    var owl1 = $("#owl-dephi");
		     
		    owl1.owlCarousel({
		    items : 5, //10 items above 1000px browser width
		    itemsDesktop : [1024,4], //5 items between 1000px and 901px
		    itemsDesktopSmall : [900,3], // betweem 900px and 601px
		    itemsTablet: [600,2], //2 items between 600 and 0
		    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
		    });
	    }
	    
	    });


	    function isNotLogin(){
	    	$.magnificPopup.open({
	            type: 'inline',
	            items: {src: '#form-login'},
	            preloader: false,
	            modal: true,
	            delegate: 'a',
	    		removalDelay: 500, //delay removal by X to allow out-animation
	    		midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
	    	});
	    }

	    
		</script>
	</body>
</html>   