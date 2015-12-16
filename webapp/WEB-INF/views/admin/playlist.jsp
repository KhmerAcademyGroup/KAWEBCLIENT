<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Vuthea Chheang">
		<title>Playlist | Khmer Academy</title>
 
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
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">		
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
					<!-- Begin page heading -->
					<h1 class="page-heading">Playlist</small></h1>
					<!-- End page heading -->
				
				<div class="the-box no-border">
					
						<div class="btn-toolbar top-table" role="toolbar">
							<div class="btn-group">
								<form role="form" id="frmSetRow">
									<select id="setNumrow" class="form-control">
										<option>12</option>
										<option>18</option>
										<option>24</option>
										<option>30</option>
										<option>48</option>
									</select>
								</form>
							</div>
							<div class="btn-group inline-popups">
								<a  class="btn btn-success dropdown-toggle" href="#form-create-playlist" data-effect="mfp-zoom-in"><i class="fa fa-plus"></i> Create new playlist</a>
							</div>
							
							<div class="btn-group" id="btcheck">
								<a  href="#checkAll" id="checkk"    class="btn btn-primary"><input type="checkbox"  id="select-all" name="selectAll" value=""/>Check All</a> 
								
							</div>
							
							<div class="btn-group">
								<a href="javascript:;"  title="getPlayList" id="deleteall"  class="btn btn-danger"><i class="fa fa-ban"></i> Delete selected</a>
							</div>
							<div class="btn-group" id="nextprevious">
											
							</div>
							


							<div class="btn-group pull-right">
								<form role="form">
									<input type="text" id="search" class="form-control" placeholder="Search playlistname">
								</form>
								
							</div><!-- /.btn-group .pull-right -->
						</div>
					
					<div class="row">
					
						
						<div id="getPlayList" style="padding:15px;">
						
						
						</div>
						
					</div>
						
						
				</div>		
				</div><!-- /.container-fluid -->
				
				
				
				<!-- BEGIN FOOTER -->
				<footer>
					&copy; 2014 <a href="#fakelink">Your company</a><br />
					Design by <a href="http://isohdesign.com/" target="_blank">ids</a>. Purchase this item at <a href="http://goo.gl/wSCjxD" target="_blank">Themeforest</a>
				</footer>
				<!-- END FOOTER -->
				
				
			</div><!-- /.page-content -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->
		
		
	<!-- Form popup -->
	
								<div id="form-create-playlist" class="white-popup mfp-with-anim mfp-hide" >
<!-- 								<form method="post" name="frmcreateplaylist" action="/" id="frmcreateplaylist"  class="form-horizontal"> -->
									  <div class="form-group">
										<label for="exampleInputEmail1">Playlist name</label>
										<input type="text" class="form-control" name="playlistname" id="playlistname" placeholder="EG. MyTop">
										<small  class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
									  </div>
									  <div class="form-group">
										<label for="exampleInputPassword1">Description</label>
										<input type="text" name="description" class="form-control" id="description" placeholder="EG. My music">
									 </div>
									 <div class="form-group">
										<label>Set View</label>
										<select class="form-control" id="publicview" name="publicview" tabindex="2">
											<option value="false">Private</option>
											<option value="true">Public</option>
										</select>
									</div>

									<!--   <input type="submit"   class="btn btn-success" value="Create">
								</form> -->

									  <input type="button"  id="adminbtncreateplaylist"  value="Create" class="btn btn-success">
<!-- 								</form> -->

								</div>
								
								<div id="form-update-playlist" class="white-popup mfp-with-anim mfp-hide">
<!-- 								<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist"  class="form-horizontal"> -->
									  <div class="form-group">
										<label for="exampleInputEmail1">Playlist name</label>
										<input type="text" class="form-control" name="playlistname" id="updatename" placeholder="EG. MyTop">
										<input type="hidden" class="form-control" name="playlistid"  id="updateid" placeholder="EG. MyTop">
										<small  class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
									  </div>
									  <div class="form-group">
										<label for="exampleInputPassword1">Description</label>
										<input type="text" name="description" class="form-control" id="updatedescription" placeholder="EG. My music">
									 </div>
									 <div class="form-group">
										<label>Set View</label>
										<select class="form-control" id="updatepublicview" name="updatepublicview" tabindex="2">
											<option value="false">Private</option>
											<option value="true">Public</option>
										</select>
									</div>
									 <button type="button" id="btclosefrmupdate" class="btn btn-default" data-dismiss="modal">Close</button>
									  <input type="button"  id="adminbtnupdateplaylist"  class="btn btn-success" value="Update">
<!-- 								</form> -->
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
		
		<script src="assets/js/myvalidator.js"></script>
		<script src="assets/js/script/playlist.js"></script>
	
	</body>
</html>