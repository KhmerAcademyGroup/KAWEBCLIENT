<%@page import="model.dto.User"%>
<%@ page import="com.google.gson.*, java.util.ArrayList, model.dto.Video" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%
 		User usr = (User) session.getAttribute("ka_user");	
	%>
    
 <!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">
		<title>Search | Khmer Acedemy</title>
 <script src="assets/js/angular.js"></script>
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
 
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<link href="assets/css/mycss.css" rel="stylesheet">

		
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
			
			<div class="page-content" >
				
				<div class="container-fluid">
					<!-- Begin page heading -->
					
					<!-- End page heading -->
					<div class="the-box no-border">
					<h1 class="small-title">Search for "<%=request.getParameter("txtsearch") %>"<small></small></h1>
				</div>		
				<%	if(request.getAttribute("video_json")!=null){
						String video_json = request.getAttribute("video_json").toString();
						JsonArray entries = (JsonArray) new JsonParser().parse(video_json);
						for(int i=0; i<entries.size(); i++){
							int videoid = ((JsonObject)entries.get(i)).get("videoid").getAsInt();
							String videoname = ((JsonObject)entries.get(i)).get("videoname").getAsString();
							String description = ((JsonObject)entries.get(i)).get("description").getAsString();
							String youtubeurl = ((JsonObject)entries.get(i)).get("youtubeurl").getAsString();
							boolean publicview = ((JsonObject)entries.get(i)).get("publicview").getAsBoolean();
							String postdate = ((JsonObject)entries.get(i)).get("postdate").getAsString();
							int userid = ((JsonObject)entries.get(i)).get("userid").getAsInt();
							String username = ((JsonObject)entries.get(i)).get("username").getAsString();
							int countvoteplus = ((JsonObject)entries.get(i)).get("countvoteplus").getAsInt();
							int countvoteminus = ((JsonObject)entries.get(i)).get("countvoteminus").getAsInt();
							int countcomments = ((JsonObject)entries.get(i)).get("countcomments").getAsInt();
							int viewcounts = ((JsonObject)entries.get(i)).get("viewcounts").getAsInt();
					%>
					
					<div class="the-box no-border store-list" >
						 <div class="media">
						 	<% if(usr == null && publicview == false){ %>
                            <span class="inline-popups  pull-left">
                                    <a  class="dropdown-toggle" href="#form-login" data-effect="mfp-zoom-in">
                           		 		<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/<%=youtubeurl %>/mqdefault.jpg">
                            		</a>
                            </span>
                            <% }else{ %>
                             <a class="pull-left" href="../elearning/play.act?v=<%=videoid%>">
                           		 <img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/<%=youtubeurl %>/mqdefault.jpg">
                            </a>
                             <% } %>
                            <div class="clearfix visible-xs"></div>
                            <div class="media-body" style="overflow:visible">
                                <a href="#fakelink"></a>
                                
                            
                               
								
                                <ul class="list-inline">
                                	<% if(usr == null && publicview == false){ %>
                                    <span class="inline-popups">
                                    	<li><a class="dropdown-toggle" href="#form-login" data-effect="mfp-zoom-in"><%=videoname %></a></li>
                                    </span>
                                    <% }else{ %>
                                    <li><h4><a href="../elearning/play.act?v=<%=videoid%>"><strong class="text-black"><%=videoname %></strong></a></h4></li>
                                    <% } %>
                                   
                                    <li>
                                    	<span class="label label-success dropdown-toggle" data-toggle="dropdown"><i class="fa fa-globe"></i> <% if(publicview) out.print("Public"); else out.print("Unpublic"); %></span>
                                    </li>
                                </ul>
								  
								  
                                <p class="hidden-xs">
								<%=description %>
								</p>
								<span class="small text-muted">
									<%=countvoteplus %> <i class="fa fa-thumbs-up"></i>     &nbsp;&nbsp;&nbsp;
									<%=countvoteminus %> <i class="fa fa-thumbs-down"></i>  &nbsp;&nbsp;&nbsp;
									<%=viewcounts %> <i class="fa fa-eye"></i>      &nbsp;&nbsp;&nbsp; 
								</span>
								
								
                            </div><!-- /.media-body -->
                        </div><!-- /.media -->
					</div><!-- /.the-box no-border -->
				
					<% 
						}
						}
					%>
					
					
					
					<ul class="pagination separated">
								<%
						if(request.getAttribute("totalvideo")!=null){
							int totalvideo = Integer.parseInt(request.getAttribute("totalvideo").toString());
							int totalpage = Integer.parseInt(request.getAttribute("totalpage").toString());
							String q = "";
							if(request.getParameter("txtsearch")!=null){
								q = request.getParameter("txtsearch");
							}
							int current = 1;
							if(request.getParameter("current")!=null){
								current = Integer.parseInt(request.getParameter("current"));
							}
							int pagenum = 0;
							for(int i=current-4;i<current;i++){
								if(i>0){
									if(i==current){
										out.print("<li class='active'><a href='#'>"+i+"</a></li>");
									}else{
										out.print("<li><a href='?txtsearch="+q+"&current="+i+"'>"+i+"</a></li>");
									}
									pagenum=i+1;
								}
								pagenum=i+1;
							}
							out.print("<li class='active'><a  href='?txtsearch="+q+"&current="+pagenum+"'>"+pagenum+"</a></li>");
							
							for(int i=current+1; i<=totalpage; i++){
								if(i==current){
									out.print("<li class='active'><a href='#'>"+i+"</a></li>");
								}else{
									out.print("<li><a href='?txtsearch="+q+"&current="+i+"'>"+i+"</a></li>");
								}
								if(current==1){
									if(i>=current+8 ){
										break;
									}
								}else{
									if(i>=current+4 ){
										break;
									}	
								}
							}
					%>
					  
					</ul>
					<%
						}
					%>
				
				</div>
				
				
				
				
				<!-- BEGIN FOOTER -->
				<footer>
		&copy; 2014 <a href="#fakelink">Khmer Acedemy</a><br>
		Design and Create contents by Khmer Acedemy

</footer>
				<!-- END FOOTER -->
				
				
			</div>
		
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

	</body>
</html>   