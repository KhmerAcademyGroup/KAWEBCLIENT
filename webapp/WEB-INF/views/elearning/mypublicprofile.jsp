<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="model.dto.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dto.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	    if( session.getAttribute("ka_user") == null){
	 		out.println("<script>window.location.href='index.act'; </script>");return;
	 	}
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
		<link href="assets/css/mycss.css" rel="stylesheet">
 
 		
 
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
			}
			

				
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
					<!-- <h1 class="page-heading">My profile</h1> -->
					<!-- End page heading -->
				
					<!-- Begin breadcrumb -->
					<ol class="breadcrumb default square rsaquo sm">
						<li><a href="index.html"><i class="fa fa-home"></i></a></li>
						<li><a href="index.act">Khmer Academy</a></li>
						<li class="active">My profile</li>
					</ol>
					<!-- End breadcrumb -->
					
					<div class="row">
						<div class="col-md-12">
							<!-- BEGIN PROFILE HEADING -->
							<div class="the-box transparent full no-margin profile-heading">
								<form enctype="multipart/form-data" action="changeusercover.act" method="post">
								<div class="right-action">
									<input type="file" id="photoimage" name="cover" class="filestyle" data-input="false" data-iconName="fa fa-edit" onchange="return ValidateFileUpload()">
									<!-- <button class="btn btn-warning btn-square btn-xs" onchange="return ValidateFileUpload()">Change cover</button> -->
								</div><!-- /.right-action -->
								<img id="photoimg" src="<%if(usr.getCoverphoto()!=null){out.print("../uploads/"+ usr.getCoverphoto());}else{out.print("assets/img/jp.jpg");} %>" height="300px" class="bg-cover" alt="Image">
								
								<img src="../uploads/<%=usr.getUserimageurl() %>" class="avatar" alt="Avatar">
								<div class="profile-info ">
									<p class="user-name"><%= usr.getUsername() %></p>
									<div class="right-button">
									<p id="appendbtn" ></p>
									<!-- <a href="#" id="changecover" class="btn btn-primary btn-sm" onclick="changecover()">Change Cover</a> -->
									</div>
								</div><!-- /.profile-info -->
								</form>
							</div><!-- /.the-box .transparent .profile-heading -->
							<!-- END PROFILE HEADING -->
							
							<div class="panel with-nav-tabs panel-primary panel-square panel-no-border">
							  <div class="panel-heading" style="background-color:#558d48">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#panel-videos" data-toggle="tab"><i class="fa fa fa-eye"></i> Videos</a></li>
									<li><a href="#panel-playlist" data-toggle="tab"><i class="fa fa-caret-square-o-right"></i> Playlist</a></li>
									<li><a href="#panel-history" data-toggle="tab"><i class="fa fa fa-eye"></i> History</a></li>
									<li><a href="#panel-myinfo" data-toggle="tab"><i class="fa  fa-user"></i> About</a></li>
									<li class="pull-right">
<!-- 										 <span class="btn btn-group inline-popups"> -->
																<a class="btn btn-success btn-rounded-lg" href="video.act"  data-effect="mfp-zoom-in">
																	<i class="fa fa-cloud-upload"></i> Upload video
																</a>
<!-- 										</span> -->
									</li>
								
								
															
															
															
								</ul>
							  </div>
								<div id="panel-collapse-1" class="collapse in">
									<div class="panel-body">
										<div class="tab-content">
											<!-- Videos -->
											
											<div class="tab-pane fade in active" id="panel-videos">
													
													<div id="v"></div>
													
													<div class="btn-toolbar top-table" role="toolbar">
															
								
															<div class="btn-group pull-right">
																<form role="form">
																	<input type="text" id="searchVideo" class="form-control" placeholder="Search by Video title">
																</form>
																
															</div><!-- /.btn-group .pull-right -->
															
															
															
															
															
														</div>
														
														
														
														<div id="getUserVideos">
															
														</div>
														
											</div>
											
											
											<!-- Info -->
										
										
											<div class="tab-pane fade" id="panel-myinfo">
												<div class="tab-pane fade in" id="panel-about">
												<h4 class="small-heading more-margin-bottom">MY INFOR</h4>
												<form class="form-horizontal" role="form">
												<div class="form-group">
													<label class="col-sm-2 control-label">Username</label>
													<div class="col-sm-10">
													  <p class="form-control-static"><%= usr.getUsername() %></p>
													</div>
												</div><!-- /.form-group -->
												<div class="form-group">
													<label class="col-sm-2 control-label">Email</label>
													<div class="col-sm-10">
													  <p class="form-control-static"><%= usr.getEmail() %></p>
													</div>
												</div><!-- /.form-group -->
												<div class="form-group">
													<label class="col-sm-2 control-label">Gender</label>
													<div class="col-sm-10">
													  <p class="form-control-static"><%= usr.getGender() %></p>
													</div>
												</div><!-- /.form-group -->
												<div class="form-group">
													<label class="col-sm-2 control-label">Date of birth</label>
													<div class="col-sm-10">
													  <p class="form-control-static"><% if(usr.getDateofbirth()!=null){out.print( new SimpleDateFormat("dd-MM-yyyy").format(usr.getDateofbirth()) );} %></p>
													</div>
												</div><!-- /.form-group -->
												<div class="form-group">
													<label class="col-sm-2 control-label">Phone numebr</label>
													<div class="col-sm-10">
													  <p class="form-control-static"><%if(usr.getPhonenumber()!=null){out.print(usr.getPhonenumber());} %>	  </p>
													</div>
												</div><!-- /.form-group -->
												<div class="form-group">
													<label class="col-sm-2 control-label">Register date</label>
													<div class="col-sm-10">
													  <p class="form-control-static"><%= usr.getRegisterdate() %>	  </p>
													</div>
												</div><!-- /.form-group -->
												
												<div class="form-group">
													<label class="col-sm-2 control-label"> playlists</label>
													<div class="col-sm-10">
													  <p class="form-control-static"><%= usr.getCountplaylists()%>	  </p>
													</div>
												</div><!-- /.form-group -->
												</form>
											</div>
											</div>
											<div class="tab-pane fade in" id="panel-history">
												
														<div class="btn-toolbar top-table" role="toolbar">
															<div class="btn-group">
																<form role="form" id="frmSetNumrowHistory">
																	<select class="form-control" id="setNumrowHistory">
																		<option>10</option>
																		<option>20</option>
																		<option>30</option>
																		<option>50</option>
																	</select>
																</form>
															</div>
															<div class="btn-group">
																<a href="#" onclick="deleteallhistory('deleteallhistory.act')" class="btn btn-danger">
																	<i class="fa fa-ban"></i> Clear All History
																</a>
															</div>
									
															<div class="btn-group pull-right">
																<form role="form">
																	<input type="text" class="form-control" id="tfsearchHistory" placeholder="Search category">
																</form>
									
															</div>
															<!-- /.btn-group .pull-right -->
														</div>
														
														
														<div id="getHistory">
														
														
														</div>
													
											</div><!-- /#panel-about -->
											<div class="tab-pane fade in" id="panel-playlist">
													<div class="the-box no-border">
					
														<div class="btn-toolbar top-table" role="toolbar">
															<div class="btn-group">
																<form role="form" id="frmSetRowPlaylist">
																	<select id="setNumrowPlaylist" class="form-control">
																		<option>8</option>
																		<option>12</option>
																		<option>16</option>
																		<option>20</option>
																	</select>
																</form>
															</div>
															<div class="btn-group inline-popups">
																<a class="btn btn-success dropdown-toggle" href="#form-create-playlist" data-effect="mfp-zoom-in"><i class="fa fa-plus"></i> Create new playlist</a>
															</div>
															
															<div class="btn-group" id="btcheck">
																<a href="#checkAll" id="checkk" class="btn btn-primary"><input type="checkbox" id="select-all" name="selectAll" value="">Check All</a> 
																
															</div>
															
															<div class="btn-group">
																<a href="javascript:;" title="getPlayList" id="deleteall" class="btn btn-danger"><i class="fa fa-ban"></i> Delete selected</a>
															</div>
															<div class="btn-group" id="nextprevious"><button type="button" disabled="" class="btn btn-default"><i class="fa fa-chevron-left"></i></button><button type="button" disabled="" class="btn btn-default"><i class="fa fa-chevron-right"></i></button></div>
															
								
								
															<div class="btn-group pull-right">
																<form role="form">
																	<input type="text" id="searchPlaylist" class="form-control" placeholder="Search playlistname">
																</form>
																
															</div><!-- /.btn-group .pull-right -->
														</div>
													
													<div class="row">
													
														
														<div id="getPlayList" style="padding:15px;">`
															
															
															
														</div>
							
							<!-- <div class="row">
								<div class="col-sm-4">
							
								BEGIN ITEM STORE
								<div class="the-box full store-item text-center">
										<div class="new-playlist">
												<ul>
													<li>50</li>
													<li>Videos</li>
													<li><i class="fa fa-bars"></i></li>
												</ul>
										</div>
										<img src="https://i.ytimg.com/vi/EVhH9qbukkY/mqdefault.jpg" class="item-image" alt="Image">
									
										<div class="the-box no-margin no-border item-des">
										<div class="row">
											<div class="col-xs-12">
												<p class="text-danger"><strong>Avengers 2 Age of Ultron</strong></p>
											
											</div>
										</div>
										</div>
									</div>
								
								
								</div>
							</div> -->
							
													</div>
														
												</div>									
												
													<div id="form-create-playlist" class="white-popup mfp-with-anim mfp-hide" style="border-radius:5px" >
<!-- 													<form method="post" name="frmcreateplaylist" action="/" id="frmcreateplaylist"  class="form-horizontal"> -->
														  <div class="form-group">
															<label for="exampleInputEmail1"><h3>Create playlist</h3></label>
														  </div>
									  
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
														  <input type="button" id="btncreate" value="Create" class="btn btn-success">
<!-- 													</form> -->
													</div>
													
													<div id="form-update-playlist" class="white-popup mfp-with-anim mfp-hide" style="border-radius:5px">
<!-- 													<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist"  class="form-horizontal"> -->
														  <div class="form-group">
															<label for="exampleInputEmail1"><h3>Update playlist</h3></label>
														  </div>
														 <div class="form-group">
															<label for="exampleInputEmail1">Playlist name</label>
															<input type="text" class="form-control" name="playlistname" id="updatename" placeholder="EG. MyTop">
															<input type="hidden" class="form-control" name="playlistid"  id="updateid" placeholder="EG. MyTop">
															<input type="hidden" class="form-control" name="thumbnail"  id="thumbnail" placeholder="EG. MyTop">
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
														 	 <input type="button" id="btnupdateplaylist"   class="btn btn-success" value="Update">
														 
					 							</div>
					 							
					 							
					 							
					 						
					 							
					 							
					 							
					 							





					 							
						
					 							
					 							
					 							
					 							
					 							
					 							
					 							
					 							
					 							
											</div>
										</div><!-- /.tab-content -->
									</div><!-- /.panel-body -->
								</div><!-- /.collapse in -->
							</div><!-- /.panel .panel-success -->
							
						</div><!-- /.col-md-8 -->
						
						
					</div><!-- /.row -->
					
					
					
				
				</div><!-- /.container-fluid -->
				
				
				
				<!-- BEGIN FOOTER -->
				<jsp:include page="_footer.jsp"></jsp:include>
				<!-- END FOOTER -->
				
				
			</div>
		<!-- END PAGE CONTENT -->
		
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
		


	    $(document).ready(function() {
	    	
	    $(":file").filestyle({input: false,
	    	iconName: "fa fa-edit"
	    });	
	    
	    $(":file").filestyle('buttonText', 'Choose Cover');
	     
	   
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
	    
	     
	    });


		</script>
		
	<script type="text/javascript">
	var sone = 0;	
    function ValidateFileUpload() {
        var fuData = document.getElementById('photoimage');
        var FileUploadPath = fuData.value;
       // alert(FileUploadPath);
        var imageSize = fuData.files[0].size;
        var maxSize = 1024 * 1024 * 2 ;  // size 2 MB
        if(imageSize> maxSize){
        	alert("Sorry image big size please choose another.");
        	
        	//$("#imgerror").text("Sorry image sizen too big please choose another.");
        	//$("#imgerror").css("color", "red");
        }else{
      //  alert("This is file size of image you have to controller ....."+imageSize);
        //To check if user upload any file
        if (FileUploadPath == '') {
            alert("Please upload an image");
			
        } else {
            var Extension = FileUploadPath.substring(FileUploadPath.lastIndexOf('.') + 1).toLowerCase();
			//The file uploaded is an image
			if (Extension == "gif" || Extension == "png" || Extension == "gif" || Extension == "jpeg" || Extension == "jpg") {				    
                if (fuData.files && fuData.files[0]) {
                    var reader = new FileReader();
                      reader.onload = function(e) {
                         $('#photoimg').attr('src', e.target.result);
                         /* ChangeCover Button */
                         if(sone == 0){
                 	    $("#appendbtn").append("<input type='submit' value='Change Cover' class='btn btn-danger btn-sm'/>");
                 	    	sone=1; //not appear button when change image many times
                         }
                    };
                    reader.readAsDataURL(fuData.files[0]);
                }

            } 

	//The file upload is NOT an image
	else {
	                alert("Photo only allows file types of GIF, PNG, JPG, JPEG and BMP. ");
	
	            }
	        }
	    }
    }
	</script> 

	
	<script type="text/javascript" src="assets/js/bootstrap-filestyle.js"></script>
	
	<script type="text/javascript" src="assets/js/profilescript/uservideo.js"></script>
	<script type="text/javascript" src="assets/js/profilescript/userhistory.js"></script>
	<script type="text/javascript" src="assets/js/profilescript/userplaylist.js"></script>
	
		
	</body>
</html>   