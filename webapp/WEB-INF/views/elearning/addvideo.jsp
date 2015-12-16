<%@page import="model.dto.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="com.google.gson.*, java.util.ArrayList, model.dto.Category, model.dto.Video, java.lang.reflect.Type"%>
<%

	if( session.getAttribute("ka_user") == null){
			out.println("<script>window.location.href='index.act'; </script>");return;
	}
	User usr = (User) session.getAttribute("ka_user");
 	int usrtype = usr.getUsertypeid();



	String title = "Academy Khmer | Form Add Video";
	String pageHeading = "Form Add Video";
	String action = "addvideo_pro.act";
	String buttonValue = "Add";
	Video video = null;
	if (request.getAttribute("video") != null) {
		title = "Academy Khmer | Form Update Video";
		pageHeading = "Form Update Video";
		action = "updatevideopro.act";
		buttonValue = "Save";
		video = (Video) request.getAttribute("video");
	};
 %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">
		<title>Add Videos | Khmer Academy</title>
 
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

		<!--  CSS (REQUIRED ALL PAGE)-->
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"	rel="stylesheet">
</head>

<body class="tooltips">



	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">
		<!-- BEGIN TOP NAV -->
		<jsp:include page="_header.jsp"></jsp:include>
		<!-- END TOP NAV -->



		<!-- BEGIN SIDEBAR LEFT -->
		<jsp:include page="_sidebar.jsp"></jsp:include>
		<!-- END SIDEBAR LEFT -->





		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">


			<div class="container-fluid">
				<div class="row">
						<br>
						<div class="col-sm-12">
						
							<% if(usrtype != 2){ %>		
							
							<div class="panel panel-primary">
								  <div class="panel-heading">
											
										Add Video:
										
								  </div>
								  
								  <div class="panel-body">
								  
					  
								  
							<form id="video" name="video" method="post"	action="<%=action %>" class="form-horizontal">
								<fieldset>

									<%if(video != null) {%>
									<input name="txtvideoid" type="hidden"
										value="<%=video.getVideoid() %>" />
									<%}%>

									<div class="form-group">
										<label class="col-lg-3 control-label">Video Name<span
											class="required">*</span></label>
										<div class="col-lg-5">
											<%if(video != null) {%>
											<input type="text" class="form-control" name="videoname"
												id="videoname" value="<%=video.getVideoname() %>" />
											<%} else { %>
											<input type="text" class="form-control" name="videoname"
												id="videoname" />
											<%} %>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-3 control-label">Youtube URL<span
											class="required">*</span></label>
										<div class="col-lg-5">
											<%if(video != null) {%>
											<input type="text" class="form-control" name="youtubeurl"
												id="youtubeurl" onblur="changeurl()"
												value="<%=video.getYoutubeurl() %>" />
											<%} else { %>
											<input type="text" class="form-control" name="youtubeurl"
												id="youtubeurl" onblur="changeurl()" />
											<%} %>
										</div>
									</div>

									<div class="form-group">
										<label class="col-lg-3 control-label">File URL<span
											class="required">*</span></label>
										<div class="col-lg-5">
											<%if(video != null) {%>
											<input type="text" class="form-control" name="fileurl"
												id="fileurl" value="<%=video.getFileurl() %>" />
											<%} else { %>
											<input type="text" class="form-control" name="fileurl"
												id="fileurl" />
											<%} %>
										</div>
									</div>

									<div class="form-group">
										<label class="col-lg-3 control-label">Description</label>
										<div class="col-lg-5">
											<%if(video != null) {%>
											<textarea class="form-control" name="description"
												id="description"><%=video.getDescription() %></textarea>
											<%} else { %>
											<textarea class="form-control" name="description"
												id="description"></textarea>
											<%} %>
										</div>
									</div>
								
							

									<div class="form-group">
										<label class="col-lg-3 control-label">View<span
											class="required">*</span></label>
										<div class="col-lg-5">
											<div class="radio">
												<label> <input type="radio" name="publicview"
													id="public" value="1" required=""
													data-bv-notempty-message="A view is required"
													data-bv-field="publicview"> Public
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" name="publicview"
													id="private" checked="checked"> Private
												</label>
											</div>

										</div>
									</div>

									<div class="form-group">
										<label class="col-lg-3 control-label">Category<span
											class="required">*</span></label>
										<div class="col-lg-5">
											<select data-placeholder="Select categories" name="category" 
												id="category" multiple class="chosen-select-width"
												tabindex="16">
												<%
							          if(request.getAttribute("category_json")!=null){
											String category_json = request.getAttribute("category_json").toString();
											JsonArray entries = (JsonArray) new JsonParser().parse(category_json);
											for(int i=0; i<entries.size(); i++){
												int categoryid = ((JsonObject)entries.get(i)).get("categoryid").getAsInt();
												String categoryname = ((JsonObject)entries.get(i)).get("categoryname").getAsString();
							          %>
												<option value="<%=categoryid%>"><%=categoryname %></option>
												<%	} 
										} 
									   %>
											</select>

											
										</div>
										
										<% if(request.getAttribute("errorcat")!= null){
											out.print("<span style='color:red'>" + request.getAttribute("errorcat") +"</span>");
										}
										%>
									</div>




								</fieldset>

								<div class="form-group">
									<div class="col-lg-9 col-lg-offset-3">
										<button type="submit" class="btn btn-success"><%=buttonValue %></button>
									</div>
								</div>

							</form>
							
							
							
							
							</div>
						</div>
						<!-- /.the-box -->

						<% } else{ %>
							
							 
							 	<div class="alert alert-warning fade in alert-dismissable">
								  <a href="mypublicprofile.act" class="close">×</a>
								  <strong>You don't have permission to upload video.</strong>
								</div>
							
							
							<%  } %>
							
					</div>
					<!-- /.col-sm-8 -->

					<!-- <div class="col-sm-4">
						<div class="the-box">
						<iframe id="player" width="560" height="315" src="//www.youtube.com/embed/l5nEUWiCXPs" frameborder="0" allowfullscreen></iframe>
						</div>
					</div> -->

				</div>
				<!-- /.row -->



			</div>
			<!-- /.container-fluid -->



			<!-- BEGIN FOOTER -->
			<jsp:include page="_footer.jsp"></jsp:include>
			<!-- END FOOTER -->


		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
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
	<script
		src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
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


	<script src="assets/plugins/validator/example.js"></script>
	<script src="assets/js/myvalidator.js"></script>

	<!-- MAIN APPS JS -->
	<script src="assets/js/apps.js"></script>
	<%
		if(request.getAttribute("video")!=null){
			Video dto = (Video) request.getAttribute("video");
		%>
	<script>
				document.getElementById("videoname").value = "<%=dto.getVideoname() %>";
				document.getElementById("youtubeurl").value = "<%=dto.getYoutubeurl() %>";
				document.getElementById("fileurl").value = "<%=dto.getFileurl() %>";
				document.getElementById("description").value = "<%=dto.getDescription() %>";
				document.getElementById("public").checked = <%=dto.isPublicview()%>;
				var optionsToSelect = [<%="\""+dto.getCategorynames().replace(", ", "\", \"")+"\""%>];
				var select=document.getElementById("category");
				for(var i=0, o; i<select.options.length; i++){
				  o = select.options[i];
				  if(optionsToSelect.indexOf(o.text)!=-1){
				    o.selected = true;
				  }
				}
				document.video.action = "updatevideo_pro.act?v="+<%=dto.getVideoid()%>;
	</script>
	<%
		}
	%>

	<script>
		// 			var url = document.getElementById("youtubeurl").value;
		// 			if(url!="")
		// 				document.getElementById("player").src = "//www.youtube.com/embed/"+url;
		// 			function changeurl(){
		// 				var url = document.getElementById("youtubeurl").value;
		// 				if(url!="")
		// 					document.getElementById("player").src = "//www.youtube.com/embed/"+url;
		// 			}
	</script>
</body>
</html>