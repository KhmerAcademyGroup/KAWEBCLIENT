<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Profile</title>
	<jsp:include page="../shared/_header.jsp" />
	
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
  		<!-- Player -->
  		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video-js.css">
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.css">
		<!-- Player Responsive -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/player-responsive.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/profile.css" rel="stylesheet">
		<!-- chhoin  style add -->
		<style type="text/css">
		 
		</style>
</head>
<body >
	<jsp:include page="../shared/_menu.jsp" />
		
	<button class="btn btn-default" id="menu-toggle"><i class="fa fa-cog fa-spin"></i></button>
	
	<div id="wrapper">

	        <!-- Sidebar -->
	        <div id="sidebar-wrapper">
	            
	            <div class="panel-group" id="accordion-2" style="padding:5px 5px;">
	            
	            
	            	<c:forEach items="${data.MAINCATEGORY}" var="category">
					
						<div class="panel panel-primary">
						  <div class="panel-heading" style="background:#fff;">
							<h3 class="panel-title">
								<a class="block-collapse collapsed" style="color:#007500;" data-parent="#accordion-2" data-toggle="collapse" href="#${category.maincategoryname}" aria-expanded="false">
								<b>${category.maincategoryname}</b>
								<span class="right-content">
									<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
								</span>
								</a>
							</h3>
						  </div>
							
							

							<div id="${category.maincategoryname}" class="collapse" aria-expanded="false" style="height: 0px;">
							  <div class="panel-body" style="background:#cccccc;">
							  	<c:forEach items="${data.PLAYLIST}" var="playlist">
							  	
									<c:if test="${playlist.maincategory==category.maincategory}">
									
										<a>${playlist.playlistName}</a><br /> 
										
								
									</c:if>
								</c:forEach>
							  </div><!-- /.panel-body -->
							</div><!-- /.collapse in -->
							
							
						</div><!-- /.panel panel-primary -->
						
						
					
					</c:forEach>
					
				</div><!-- End panel group -->
	            
	        </div>
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="page-content-wrapper" style="background:#fff;">
	            <div class="container-fluid">
	            	<div class="row">
	            		<div class="col-lg-12">
	            		
	            			<!-- Start body chhoin -->
		            		<ol class="breadcrumb default square rsaquo sm">
								<li><a href="index.html"><i class="fa fa-home"></i></a></li>
								<li><a href="index.act">Khmer Academy</a></li>
								<li class="active">My profile</li>
							</ol>
							
							<!-- ///////////////////////////////////////////////////////////// -->
							
							<!-- BEGIN PROFILE HEADING -->
							<div class="the-box transparent full no-margin profile-heading">
								<form enctype="multipart/form-data" action="changeusercover.act" method="post">
								<div class="right-action">
									<input type="file" id="photoimage" name="cover" class="filestyle" data-input="false" data-iconname="fa fa-edit" onchange="return ValidateFileUpload()" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);"><div class="bootstrap-filestyle input-group"><span class="group-span-filestyle " tabindex="0"><label for="photoimage" class="btn btn-default "><span class="glyphicon fa fa-edit"></span> <span class="buttonText">Choose Cover</span></label></span></div>
									<!-- <button class="btn btn-warning btn-square btn-xs" onchange="return ValidateFileUpload()">Change cover</button> -->
								</div>
								<img id="photoimg" src="${pageContext.request.contextPath}/resources/uploads/cover/profile.jpg" height="300px" class="bg-cover" alt="Image">
								
								<img src="${pageContext.request.contextPath}/resources/uploads/user/avatar.jpg" class="avatar" alt="Avatar">
								<div class="profile-info ">
									<p class="user-name">hello</p>
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
									<li><a href="#panel-myinfo" data-toggle="tab"><i class="fa  fa-user"></i> UserProfile</a></li>
									<li class="pull-right">
<!-- 										 <span class="btn btn-group inline-popups"> -->
												<a class="btn btn-success btn-rounded-lg"  id="form-upload-video" data-effect="mfp-zoom-in">
													<i class="fa fa-cloud-upload"></i> Upload video
												</a>
<!-- 										</span> -->
									</li>			
								</ul>
							  </div>
								<div id="panel-collapse-1" class="collapse in">
									<div class="panel-body">
										<div class="tab-content">
										
											<!-- ****************Videos tap *********************-->
											<div class="tab-pane fade in active" id="panel-videos">
													<div id="getVideo" style=" display: none;">
															<div class="alert alert-success fade in alert-dismissable">
															<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button><strong>No </strong> video </div>
													</div>
													<div id="videocover">
													<div class="btn-toolbar top-table" role="toolbar">
													<div class="btn-group">
														<form role="form" id="frmSetNumrowHistory">
																<select class="form-control" id="limitvideo" onchange="chooseVideo()" >
																	<option value="5">5</option>
																    <option value="10" selected="selected">10</option>
																    <option value="20">20</option>
																    <option value="50">50</option>
																    <option value="100">100</option>
																</select>
															</form>
													</div>
													
													<div class="btn-group pull-right">
														<form role="form">
															<input type="text" class="form-control" id="searchVideo" onkeyup="mySearchVideo();" placeholder="Search Video">
														</form>
										
													</div>
													
												</div>
													<div id="videoresult"></div>
													
													<!-- page gination -->
													<div class="text-center">
				    									<div id="demo5_top" class="demo5_top"></div>
				    								</div>
				    							</div>
													
											</div>
											
											
											<!--***********************user Prfile Tap ****************-->
											<div class="tab-pane fade" id="panel-myinfo">
												<div class="tab-pane fade in" id="panel-about">
												
													<form class="form-horizontal bootstrap-validator-form" enctype="multipart/form-data" id="myformvalidator1" action="updateusrinfo.act" method="post" novalidate="novalidate">	
														<div class="col-sm-8">
														<div class="form-group">
															<label class="col-lg-3 control-label">Username<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" class="form-control" name="username" value="hello" data-bv-field="username">
															<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The username is required and can't be empty</small><small data-bv-validator="stringLength" class="help-block" style="display: none;">The username must be more than 4 and less than 30 characters long</small></div>
														</div>
						
														<div class="form-group">
															<label class="col-lg-3 control-label">Email<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" class="form-control" name="email" value="test@gmail.com" disabled="" data-bv-field="email">
															<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The email address is required and can't be empty</small><small data-bv-validator="emailAddress" class="help-block" style="display: none;">The input is not a valid email address</small></div>
														</div>
														
														
					
														
														<div class="form-group">
															<label class="col-lg-3 control-label">Department<span class="required">*</span></label>
															<div class="col-lg-5">
																<select name="department" class="form-control" data-bv-field="department">
																	
																	<option value="1">Computer Science Department</option>
																	
																	<option value="2">Business and Economic Department</option>
																	
																	<option value="5">Law and Public Affairs Department</option>
																	
																	<option value="4">Art, Letter and Humanities Department</option>
																	
																	<option value="6">Communication and Media Art Department</option>
																	
																	<option value="7">Architecture and Design Department</option>
																	
																	<option value="8">Management and Economic Department</option>
																	
																	<option value="9">Social Sciences and International Relations Department</option>
																	
																	<option value="11">Department of Science</option>
																	
																	<option value="12">Other</option>
																	
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class=" col-lg-3 control-label">University<span class="required">*</span></label>
															<div class="col-lg-5">
																<select name="university" class="form-control" data-bv-field="university">
																	
																	<option value="1">BBU</option>
																	
																	<option value="2">RUPP</option>
																	
																	<option value="3">SETEC</option>
																	
																	<option value="4">PUC</option>
																	
																	<option value="5">PPIU</option>
																	
																	<option value="6">NU</option>
																	
																	<option value="7">UBB</option>
																	
																	<option value="8">AEU</option>
																	
																	<option value="9">UME</option>
																	
																	<option value="10">RAC</option>
																	
																	<option value="11">CARDI</option>
																	
																	<option value="12">ITC</option>
																	
																	<option value="13">CSUK</option>
																	
																	<option value="14">NIE</option>
																	
																	<option value="15">NTTI</option>
																	
																	<option value="16">PNCA</option>
																	
																	<option value="17">RUA</option>
																	
																	<option value="18">RUFA</option>
																	
																	<option value="19">RULE</option>
																	
																	<option value="20">SRU</option>
																	
																	<option value="21">UHS</option>
																	
																	<option value="22">IIC</option>
																	
																	<option value="23">UC</option>
																	
																	<option value="24">UP</option>
																	
																	<option value="25">PPIT</option>
																	
																	<option value="26">CamEd</option>
																	
																	<option value="27">SPI</option>
																	
																	<option value="28">BELTEI</option>
																	
																	<option value="29">CMU</option>
																	
																	<option value="30">AUPP</option>
																	
																	<option value="31">ZAMAN</option>
																	
																	<option value="32">CUS</option>
																	
																	<option value="33">NUM</option>
																	
																	<option value="35">PCU</option>
																	
																	<option value="36">Other</option>
																	
																</select>
															</div>
					
														</div>
														
														<div class="form-group">
																<label class="col-lg-3 control-label">Gender</label>
																<div class="col-lg-5">
																	<div class="radio">
																		<label>
																			<input type="radio" name="gender" value="male" required="" data-bv-notempty-message="The gender is required" data-bv-field="gender" checked=""> Male
																		</label>
																	</div>
																	<div class="radio">
																		<label>
																			<input type="radio" name="gender" value="female" checked="" data-bv-field="gender"> Female
																		</label>
																	</div>
															
															<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The gender is required</small></div>
														</div>
														
														<div class="form-group">
															<label class="col-lg-3 control-label">Date of birth<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" value="" name="dateofbirth" data-date-format="dd-mm-yyyy" class="form-control datepicker" id="calendar" data-bv-field="dateofbirth">
															<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The date of birth  is required and can't be empty</small></div>
														</div>
														
														
														
														<div class="form-group">
															<label class="col-lg-3 control-label">Phone number<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" class="form-control" name="phonenumber" value="" data-bv-field="phonenumber">
															<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The Phonenumber is required and can't be empty</small><small data-bv-validator="digits" class="help-block" style="display: none;">The value can contain only digits</small></div>
														</div>
										
														
														<div class="form-group">
															<label class="col-lg-3 control-label">User Type<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" class="form-control" name="usertype" disabled="" value="Subscriber" data-bv-field="usertype">
																
														<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The register date is required and can't be empty</small></div>
														</div>	
														<div class="form-group">
															<label class="col-lg-3 control-label">Current Password<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="password" class="form-control" name="oldpassword" id="oldpassword" onchange="checkoldpassword()" data-bv-field="oldpassword">
															<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The Password is required and can't be empty</small></div>
															<small id="pwdvalid" style="display: block; color: red;" class="help-block"></small>
														</div>
														<div class="form-group">
															<label class="col-lg-3 control-label">New Password<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="password" class="form-control" name="oldpassword" id="oldpassword" onchange="checkoldpassword()" data-bv-field="oldpassword">
															<small data-bv-validator="notEmpty" class="help-block" style="display: none;">The Password is required and can't be empty</small></div>
															<small id="pwdvalid" style="display: block; color: red;" class="help-block"></small>
														</div>
														</div>
														<div class="col-sm-4">
																							
															<div class="col-xs-6 col-md-7">
																<div class="imgstyle">
																<a title="Image title here" href="" class="zooming">
																		<img id="photoimg" class="mfp-fade item-gallery img-responsive" alt="Image" src="${pageContext.request.contextPath}/resources/uploads/user/avatar.jpg">
																</a>
																</div>
																<div style="height:10px"></div>
																	<div class="form-group">
																		<div class="input-group">
																			<input type="text" readonly="" class="form-control">
																		<span class="input-group-btn">
																		<span class="btn btn-default btn-file">
																				Browse ... <input type="file" name="photo" id="photoimage" value="" onchange="return ValidateFileUpload()" data-bv-field="photo">																							
																		</span>
																		</span>
																	</div><!-- /.input-group -->
																</div>
															</div>
																							
																							
														</div>	
																							
																						
																						
															
																						
														<!-- Button Post -->
														<div class="form-group">
															<div class="col-lg-9 col-lg-offset-3">
																<button type="reset" class="btn btn-default btn-perspective">Cancel</button>
																<button id="msubmit" class="btn btn-info btn-perspective">Update</button>
															</div>
														</div>
														<!-- Button Post -->
														
																	
																				
														<!-- /From -->
														</form>
												
											</div>
											</div>
											
											<!-- *******************start history****************** -->
											<div class="tab-pane fade in" id="panel-history">
													
														<div id="getHistory" style=" display: none;">
															<div class="alert alert-success fade in alert-dismissable">
															<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button><strong>No </strong> historical video </div>
														</div>
														
														<div id="hiscover">
														<div class="btn-toolbar top-table" role="toolbar">
															<div class="btn-group">
																<form role="form" id="frmSetNumrowHistory">
																	<select class="form-control" id="limithistory" onchange="chooseHistory()" >
																		<option value="5">5</option>searchvideo
																	    <option value="10" selected="selected">10</option>
																	    <option value="20">20</option>
																	    <option value="50">50</option>
																	    <option value="100">100</option>
																	</select>
																</form>
															</div>
															<div class="btn-group">
																<a href="#" onclick="removeAllHistory(userid)" class="btn btn-danger">
																	<i class="fa fa-ban"></i> Clear All History
																</a>
															</div>
									
															<div class="btn-group pull-right">
																<form role="form">
																	<input type="text" class="form-control" id="searchHistory" onkeyup="mySearchHistory();" placeholder="Search History">
																</form>
									
															</div>
															<!-- /.btn-group .pull-right -->
														</div>
														
													<div id="historyresult"></div>
													
													<!-- page gination -->
													<div class="text-center">
				    									<div id="demo4_top" class="demo4_top"></div>
				    								</div>
													</div>
													
											</div><!-- ***************#panel-Playlist****************** -->
											<div class="tab-pane fade in" id="panel-playlist">
													<div class="the-box no-border" id="playlistcover">
														<div id="getPlaylist" style=" display: none;">
															<div class="alert alert-success fade in alert-dismissable">
															<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button><strong>No </strong> video </div>
														</div>
														<div class="btn-toolbar top-table" role="toolbar">
															<div class="btn-group">
																<form role="form" id="frmSetNumrowHistory">
																<select class="form-control" id="limitPlaylist" onchange="choosePlaylist()" >
																	<option value="6">6</option>
																    <option value="9" selected="selected">9</option>
																    <option value="15">15</option>
																    <option value="30">30</option>
																    <option value="90">90</option>
																</select>
															</form>
															</div>
															<div class="btn-group inline-popups">
																<a class="btn btn-success dropdown-toggle" id="form-create-playlist" data-effect="mfp-zoom-in"><i class="fa fa-plus"></i> Create new playlist</a>
															</div>
															
															<div class="btn-group pull-right">
																<form role="form">
																	<input type="text" id="searchPlaylist" onkeyup="mySearchVideo();" class="form-control" placeholder="Search playlistname">
																</form>
																
															</div>
														</div>
													
													<div class="row">
													
														<!-- /////////////show playlist/////////// -->
														<div id="getPlayList"  class="mpadding" >`
															
														</div>
														<!-- page gination -->
														<div class="text-center">
					    									<div id="demo6_top" class="demo6_top"></div>
					    								</div>
													</div>
														
												</div>						
												
													<div id="form-create-playlist1" class="ka-popup" style="display: none;width: 30%;">
																<div id="form-create-playlist" class="white-popup mfp-with-anim" style="border-radius:5px">
															  	<button type="button" class="close" aria-hidden="true">
																	<span class="button b-close"><span>×</span></span>
																</button>
															  <div class="form-group">
																<label for="exampleInputEmail1"><h3>Create playlist</h3></label>
															  </div>
						
															
															  <div class="form-group">
																<label for="exampleInputEmail1">Playlist name</label>
																<input type="text" class="form-control" name="playlistname" id="playlistname" placeholder="EG. MyTop">
																<small class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
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
																<input type="button"  value="Close" class="btn btn-success">	
															</div>
													</div>
													
													<div id="form-update-playlist" class="ka-popup" style="display: none;width: 30%;">
																<div id="form-create-playlist" class="white-popup mfp-with-anim" style="border-radius:5px">
															  <button type="button" class="close" aria-hidden="true">
																	<span class="button b-close"><span>×</span></span>
																</button>
															  <div class="form-group">
																<label for="exampleInputEmail1"><h3>Update playlist</h3></label>
															  </div>
															
															  <div class="form-group">
																<label for="exampleInputEmail1">Playlist name</label>
																<input type="text" class="form-control" name="playlistname" id="playlistname" placeholder="EG. MyTop">
																<small class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
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
															 	<input type="button" id="btncreate" value="Update" class="btn btn-success">
																<input type="button"  value="Close" class="btn btn-success">	
															</div>
													</div>
													
													<!-- form upload video -->
													<div id="form-upload-video1" class="ka-popup" style="display: none;width: 40%;">
														<div id="form-upload-video1" class="white-popup mfp-with-anim" style="border-radius:5px">
															<button type="button" class="close" aria-hidden="true">
																	<span class="button b-close"><span>×</span></span>
																</button>
																<div class="form-group">
																	<label for="exampleInputEmail1">Playlist nameVideo Name</label>
																	<input type="text" class="form-control" name="playlistname" id="playlistname" placeholder="EG. MyTop">
																	<small class="msg" style="color:red;display:none">The video name  is required and can't be empty</small>
															 	 </div>
															 	 <div class="form-group">
																	<label for="exampleInputEmail1">Youtube URL</label>
																	<input type="text" class="form-control" name="playlistname" id="playlistname" placeholder="EG. MyTop">
																	<small class="msg" style="color:red;display:none">The youtube url  is required and can't be empty</small>
															 	 </div>
															 	 <div class="form-group">
																	<label for="exampleInputEmail1">File URL</label>
																	<input type="text" class="form-control" name="fileurl" id="fileurl" data-bv-field="fileurl">
																	<small class="msg" style="color:red;display:none">The file url  is required and can't be empty</small>
															 	 </div>
															 	 <div class="form-group">
																	<label for="exampleInputEmail1">Description</label>
																	<textarea class="form-control" name="description" id="description" data-bv-field="description"></textarea>
																	<small class="msg" style="color:red;display:none">The file url  is required and can't be empty</small>
															 	 </div>
															 	 <div class="form-group">
																	<label for="exampleInputEmail1">View</label>
																	<div class="radio">
																		<label> <input type="radio" name="publicview" id="public" value="1" required="" data-bv-notempty-message="A view is required" data-bv-field="publicview"> Public
																		</label>
																	</div>
																	<div class="radio">
																		<label> <input type="radio" name="publicview" id="private" checked="checked" data-bv-field="publicview"> Private
																		</label>
																	</div>
																	
																	<small class="msg" style="color:red;display:none">A view is required</small>
															 	 </div>
															 	 
															 	  <div class="form-group">
																	<label for="exampleInputEmail1">Category</label>
																	
																	<select class="form-control">
																		  <option>1</option>
																		  <option>2</option>
																		  <option>3</option>
																		  <option>4</option>
																		  <option>5</option>
																		</select>
																	<small class="msg" style="color:red;display:none">The category  is required and can't be empty</small>
															 	 </div>
															  <div class="form-group">
																	<button type="submit" class="btn btn-success">Add</button>
															 	 </div>
															
													
													
					 							
					 							
					 									</div>
													</div>
										</div><!-- /.tab-content -->
									</div><!-- /.panel-body -->
								</div><!-- /.collapse in -->
							</div><!-- /.panel .panel-success -->
	            
	            
				            
						
						
							<!-- ///////////////////////////////////////////////////////////// -->
	                        
	                    </div><!-- end col-lg-12 -->
	                </div> <!-- row -->
	            </div><!-- end container-fluid -->
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    </div>
	    <!-- /#wrapper -->
	
	
	
	<!-- right content -->
	



	
	
	<!-- End My Contend -->
	 <jsp:include page="../shared/_footer.jsp" />
	    =============================================== */
	 <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>
        <script type="text/javascript">
	    
	    $(document).ready(function(){
	    	//create playlist
            $("#form-create-playlist").click(function(){ 
            	$("#form-create-playlist1").bPopup({modalClose: false});
				
            });
            
	    	//update playlist
            $("#editPlaylist").click(function(){ 
            	$("#form-update-playlist").bPopup({modalClose: false});
            });
	    	
	    	//upload video
            $("#form-upload-video").click(function(){ 
            	$("#form-upload-video1").bPopup({modalClose: false});
            });
          });
	
		var limit=0;
		var offset=1;
		var totalofrecord =0;
		var numofpage=1;
		var url="${pageContext.request.contextPath}";
		var userid="MQ==";//
		
		
		 //my choice what list or search
		 function chooseHistory(){
			var key =$("#searchHistory").val();
			//alert(key);
			if(key.length == 0){
				mystart();
			}else{
				mySearchHistory();
			}
		} 
		
		mystart();
		function mystart(){
			limit=$("#limithistory").val();
			//alert(limit);
	    	 $.ajax({
	            url: url+'/rest/user/profile/countuserhistory/'+userid,
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            success: function(data){
	            	totalofrecord=data.TOTAL;
	            	//this two method will start after get the total record
	            	getDbRow();
	            	listAll(1);
	        		
	            },
	            error: function(data){
	            	alert("1start () unsuccess data");
	            }
	        });	 
	    	 
		}
		
		//listAll();//mypage
		function listAll(offset){
			//alert(mypage);
	    	
	    	
	    	$.ajax({
	    		url: url+'/rest/user/profile/listuserhistory/'+userid+'?page='+offset+'&item='+limit,
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            //data: JSON.stringify(JSONObject),
	            success: function(data){
	            	//alert(data.RES_DATA.length);
	            	if(data.STATUS == true){
	            		$("#historyresult").html(listarticles(data));
	            	}else{
	            		$("#getHistory").show();
		    	   		$("#hiscover").hide();
	            	}
	            	//asing value to totalrecord
	            	
	            },
	            error: function(data){
	            	//alert("listAll() unseccess data");
	            }
	        });	    	
			   
		}
		function listarticles(data){
			
			// alert(data.RES_DATA.videoId);
			var str="";
				for(var i=0; i<data.RES_DATA.length ; i++){
					
					str +="<div id='"+i+"'>"
							+ "<div class='the-box no-border store-list ' >" 
							+"<div class='media'>"
								+"<a class='pull-left' href="+url+'/elearning/playvideo?v='+data.RES_DATA[i].videoId+">"
									+"<img alt='image' class='store-image img-responsive' src='https://i.ytimg.com/vi/"+data.RES_DATA[i].videoUrl+"/mqdefault.jpg'>"
								+"</a>"
							+"<div class='clearfix visible-xs'></div>"   
							+"<div class='media-body' style='overflow:visible'>"       
								+"<a href='#fakelink'></a>" 
								+"<div class='btn-group pull-right'>"	  
									+"<button type='button' class='btn btn-default btn-sm dropdown-toggle' data-toggle='dropdown'><i class='fa fa-cog'></i> </button>" 
										+"<ul class='dropdown-menu' role='menu'>" 
											+"<li><a href='"+url+'/elearning/playvideo?v='+data.RES_DATA[i].videoId+"'>Play</a></li>" 
											+"<li><a href='#' onclick=removeFromHistory('"+data.RES_DATA[i].historyId+"',"+i+")>Remove from History</a></li>"
										+"</ul>"
									+"</div>" 
								+"<ul class='list-inline'>" 
									+"<li><a href='"+url+'/elearning/playvideo?v='+data.RES_DATA[i].videoId+"'><strong class='text-black'>"+data.RES_DATA[i].videoName+"</strong></a></li><br>"
									+"<li><a><span class='small text-muted' style='color:#AAB2BD'>"+data.RES_DATA[i].username+"</span></a></li>"
								+"</ul>"
									+"<p class='hidden-xs'> </p><span class='small text-muted' style='color:#AAB2BD'>"
									+"<i class='fa fa-eye'>&nbsp;&nbsp;"+data.RES_DATA[i].videoViewCount+"</i>      &nbsp;&nbsp;&nbsp; </span>"
									+"</div>"
								+"</div>"
							+"</div>"
							+"</div>"
						+"</div>";
				}
						
			
				return str;
		}
		function getDbRow(){
			var nps=totalofrecord/limit;
			
			if(!(totalofrecord % limit==0)){
				numofpage = Math.floor(nps);
				numofpage+=1;		
			}else{	
				numofpage=nps;
			}
			//$("#recordresult").html("Records :"+totalofrecord);
			//$("#pageresult").html("Pages :"+ numofpage);
			loadPagination();
		
		}
		
		function loadPagination(){
			$('.demo4_top').bootpag({
		        total: numofpage,
		        
		        maxVisible: 5,
		        leaps: true,
		        firstLastUse: true,
		        first: '&#8592;',
		        last: '&#8594;',
		        wrapClass: 'pagination',
		        activeClass: 'active',
		        disabledClass: 'disabled',
		        nextClass: 'next',
		        prevClass: 'prev',
		        lastClass: 'last',
		        firstClass: 'first'
		    }).on("page", function(event, num){
		    	listAll(num);
		    	//alert("pagination ="+num);
		    }); 
		}
		
		function mySearchHistory(){
			var key =$("#searchHistory").val();
			//alert(key);
			if(key.length > 2){
				 $.ajax({  
					 	url: url+'/rest/user/profile/searchuserhistory/'+userid+'/'+key+'?page='+offset+'&item='+limit, 
				       type:'get',
				       contentType: 'application/json;charset=utf-8', // type of data
				       success: function(data) { 
				    	   	if(data.STATUS == true){
				    	   		totalofrecord= data.TOTAL;
				    	   		getDbRow();
					    	   	$("#historyresult").html(listarticles(data));
					    	   
				    	   		//alert(data.TOTAL);
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
			}
			
		
		} 
		
		function removeFromHistory(hid, id){ //console.log("#div"+hid); $("#div"+hid).remove(); return ;
			
				 $.ajax({  
					 	url: url+'/rest/user/profile/removefromhistory/'+hid,
				       type:'delete',
				       contentType: 'application/json;charset=utf-8', // type of data
				       success: function(data) { 
				    	   	if(data.STATUS == true){
				    	   		$('#'+id).hide();
				    	   		//alert("was remove");
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
		} 
		
		function removeAllHistory(uid){
			alert(uid);
				 $.ajax({  
					 	url: url+'/rest/user/profile/removeallhistory/'+uid,
				       type:'delete',
				       contentType: 'application/json;charset=utf-8', // type of data
				       success: function(data) { 
				    	   	if(data.STATUS == true){
				    	   		$("#getHistory").show();
				    	   		$("#hiscover").hide();
				    	   		
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
		} 
		 
		
		///////******************video**********//////////
		var limitv=0;
		var offsetv=1;
		var totalofrecordv =0;
		var numofpagev=1;
		
		//my choice what list or search
		 function chooseVideo(){
			var key =$("#searchVideo").val();
			//alert(key);
			if(key.length == 0){
				mystartVideo();
			}else{
				searchVideo();
			}
		} 
		
		mystartVideo();
		function mystartVideo(){
			limitv=$("#limitvideo").val();
			//alert(limitv);
	    	 $.ajax({
	            url: url+'/rest/user/profile/listuservideo/'+userid+'?page='+offsetv+'&item='+limitv,
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            success: function(data){
	            	totalofrecordv=data.PAGINATION.totalCount;
	            	//this two method will start after get the total record
	            	//alert(data.PAGINATION.totalPages);
	            	getDbRowVideo();
	            	listAllVideo(1);
	        		
	            },
	            error: function(data){
	            	alert("1start () unsuccess data");
	            }
	        });	 
	    	 
		}
		
		function getDbRowVideo(){
			var npsv=totalofrecordv/limitv;
			
			if(!(totalofrecordv % limitv==0)){
				numofpagev = Math.floor(npsv);
				numofpagev+=1;		
			}else{	
				numofpagev=npsv;
			}
			//$("#recordresult").html("Records :"+totalofrecord);
			//$("#pageresult").html("Pages :"+ numofpage);
			loadPaginationVideo();
		
		}
		
		function loadPaginationVideo(){
			//alert(numofpagev);
			$('.demo5_top').bootpag({
		        total: numofpagev,
		        
		        maxVisible: 5,
		        leaps: true,
		        firstLastUse: true,
		        first: '&#8592;',
		        last: '&#8594;',
		        wrapClass: 'pagination',
		        activeClass: 'active',
		        disabledClass: 'disabled',
		        nextClass: 'next',
		        prevClass: 'prev',
		        lastClass: 'last',
		        firstClass: 'first'
		    }).on("page", function(event, num){
		    	listAllVideo(num);
		    	//alert("pagination ="+num);
		    }); 
		}
		
		function listAllVideo(offsetv){
			//alert(mypage);
	    	
	    	
	    	$.ajax({
	    		url: url+'/rest/user/profile/listuservideo/'+userid+'?page='+offsetv+'&item='+limitv,
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            //data: JSON.stringify(JSONObject),
	            success: function(data){
	            	//alert(data.RES_DATA.length);
	            	if(data.STATUS == true){
	            		$("#videoresult").html(listVideoDetail(data));
	            	}else{
	            		$("#getVideo").show();
		    	   		$("#videocover").hide();
	            	}
	            	//asing value to totalrecord
	            	
	            },
	            error: function(data){
	            	//alert("listAll() unseccess data");
	            }
	        });	    	
			   
		}
		
	function listVideoDetail(data){
			
			// alert(data.RES_DATA.videoId);
			var str="";
				for(var i=0; i<data.RES_DATA.length ; i++){
					str += "<div class='the-box no-border store-list ' id='div"+data.RES_DATA[i].historyId+"'>" 
							+"<div class='media'>"
								+"<a class='pull-left' href="+url+'/elearning/playvideo?v='+data.RES_DATA[i].videoId+">"
									+"<img alt='image' class='store-image img-responsive' src='https://i.ytimg.com/vi/"+data.RES_DATA[i].youtubeUrl+"/mqdefault.jpg'>"
								+"</a>"
							+"<div class='clearfix visible-xs'></div>"   
							+"<div class='media-body' style='overflow:visible'>"       
								+"<a href='#fakelink'></a>" 
								+"<div class='btn-group pull-right'>"	  
									+"<button type='button' class='btn btn-default btn-sm dropdown-toggle' data-toggle='dropdown'><i class='fa fa-cog'></i> </button>" 
										+"<ul class='dropdown-menu' role='menu'>" 
											+"<li><a href='"+url+'/elearning/playvideo?v='+data.RES_DATA[i].videoId+"'>Play</a></li>" 
											+"<li><a href='#' onclick=disableVideo('"+data.RES_DATA[i].videoId+"')>Disable Video</a></li>"
										+"</ul>"
									+"</div>" 
								+"<ul class='list-inline'>" 
									+"<li><a href='"+url+'/elearning/playvideo?v='+data.RES_DATA[i].videoId+"'><strong class='text-black'>"+data.RES_DATA[i].videoName+"</strong></a></li><br>"
									+"<li><a><span class='small text-muted' style='color:#AAB2BD'>"+data.RES_DATA[i].username+"</span></a></li>"
								+"</ul>"
									+"<p class='hidden-xs'> </p><span class='small text-muted' style='color:#AAB2BD'>"
									+"<i class='fa fa-eye'>&nbsp;&nbsp;"+data.RES_DATA[i].viewCounts+"</i>      &nbsp;&nbsp;&nbsp; </span>"
									+"</div>"
								+"</div>"
							+"</div>"
						+"</div>";
				}
						
			
				return str;
		}
		
	function mySearchVideo(){
		var key =$("#searchVideo").val();
		//alert(key);
		if(key.length > 2){
			 $.ajax({  
				 	url: url+'/rest/user/profile/searchuserhvideo/'+userid+'/'+key+'?page='+offset+'&item='+limit+'&status=true', 
			       type:'get',
			       contentType: 'application/json;charset=utf-8', // type of data
			       success: function(data) { 
			    	   	if(data.STATUS == true){
			    	   		totalofrecordv= data.PAGINATION.totalCount;
			    	   		getDbRowVideo();
				    	   	$("#videoresult").html(listVideoDetail(data));
			    	   		//alert(data.PAGINATION.totalCount);
			    	   	}
			    	   		//$("#showresult").html(listarticles(data));
			                console.log("Success..." + data);
			       }  ,  
			   		error: function(data){
			   		alert("Unsuccess" + data +"OR Empty");
			   		console.log("ERROR..." + data);
			   	}
			   }); 
		}
		
	
	}
	
	function disableVideo(vid){
		
			  $.ajax({  
				 	url: url+'/rest/user/profile/disablevideo/'+vid,
			       type:'GET',
			       contentType: 'application/json;charset=utf-8', // type of data
			       success: function(data) { 
			    	   	if(data.STATUS == true){
			    	   		alert("disable work");
			    	   		
			    	   	}
			    	   		//$("#showresult").html(listarticles(data));
			                console.log("Success..." + data);
			       }  ,  
			   		error: function(data){
			   		alert("Unsuccess" + data +"OR Empty");
			   		console.log("ERROR..." + data);
			   	}
			   });  
	} 
		
	///********playlist*******/////////
	var limitplaylist=0;
	var offsetplaylist=1;
	var totalofrecordplaylist =0;
	var numofpageplaylist=1;
	
	//my choice what list or search
	 function choosePlaylist(){
		var key =$("#searchPlaylist").val();
		//alert(key);
		if(key.length == 0){
			mystartPlaylist();
		}else{
			searchPlaylist();
		}
	} 
	
	mystartPlaylist();
	function mystartPlaylist(){
		limitplaylist=$("#limitPlaylist").val();
		//alert(limitv);
    	 $.ajax({
            url: url+'/rest/user/profile/listuserplaylist/'+userid+'?page='+offsetplaylist+'&item='+limitplaylist,
            type: 'get',
            contentType: 'application/json;charset=utf-8',
            success: function(data){
            	totalofrecordplaylist=data.PAGINATION.totalCount;
            
            	numofpageplaylist=data.PAGINATION.totalPages;
            	listAllPlaylist(1);
            	loadPaginationPlaylist();
            	
        		
            },
            error: function(data){
            	alert("1start () unsuccess data");
            }
        });	 
	    	 
		}
	function loadPaginationPlaylist(){
		//alert(numofpagev);
		$('.demo6_top').bootpag({
	        total: numofpageplaylist,
	        
	        maxVisible: 5,
	        leaps: true,
	        firstLastUse: true,
	        first: '&#8592;',
	        last: '&#8594;',
	        wrapClass: 'pagination',
	        activeClass: 'active',
	        disabledClass: 'disabled',
	        nextClass: 'next',
	        prevClass: 'prev',
	        lastClass: 'last',
	        firstClass: 'first'
	    }).on("page", function(event, num){
	    	listAllPlaylist(num);
	    	//alert("pagination ="+num);
	    }); 
	}
	function listAllPlaylist(offsetplaylist){
		//alert(mypage);
    	
    	
    	$.ajax({
    		url: url+'/rest/user/profile/listuserplaylist/'+userid+'?page='+offsetplaylist+'&item='+limitplaylist,
            type: 'get',
            contentType: 'application/json;charset=utf-8',
            //data: JSON.stringify(JSONObject),
            success: function(data){
            	//alert(data.RES_DATA.length);
            	if(data.STATUS == true){
            		//$("#getPlayList").html(listPlaylistDetail(data));
            	}else{
            		$("#getPlaylist").show();
	    	   		$("#playlistcover").hide();
            	}
            	//asing value to totalrecord
            	
            },
            error: function(data){
            	//alert("listAll() unseccess data");
            }
        });	    	
		   
	}
function listPlaylistDetail(data){
		
		var str="";
			for(var i=0; i<data.RES_DATA.length ; i++){
				str += "" 
							+"<div class='col-xs-12 col-sm-5 col-md-4 col-lg-' >"
								+"<div class='the-box full store-item text-center checkchb'>"
									+"<div class='setting-list all  mydiv0' style='display: block; position: absolute; width: 100%; padding-left: 3px; z-index: 9999;'>"
										+"<input type='checkbox' value='306' class='mycheck' id='chBox0' style='margin-right: 170px;'>"
										+"<a href='#delete'  class='btn btn-default btn-xs' style='float: right;margin-right: 0px;margin-top: -2px;'>"	
										+"<i class='fa fa-trash-o'></i></a>"
										+"<span class='inline-popups'><a id='editPlaylist'  class='btn btn-default btn-xs dropdown-toggle' data-effect='mfp-zoom-in' style='float: right;margin-right: 0px;margin-top: -2px;'>"
										+"<i class='fa fa-edit'></i></a></span>"
									+"</div>"
								+"<a href='#####>"
									+"<div class='new-playlist'>"
										+"<ul>"
											+"<li>"+data.RES_DATA[i].countVideos+"</li>"
											+"<li>"+data.RES_DATA[i].playlistName+"</li>"
											+"<li><i class='fa fa-bars'></i></li>"
										+"</ul>"
									+"</div>"
								+"</a>"
								+"<img src='https://i.ytimg.com/vi/"+data.RES_DATA[i].thumbnailUrl+"/mqdefault.jpg' class='item-image' alt='Image'>"
								+"<div class='the-box no-margin no-border item-des'>"
									+"<div class='row'>"
									+"<div class='col-xs-12'>"
										+"<p class='text-danger'><strong class='text-black'>programe</strong></p>"
									+"</div>"
									+"</div>"
								+"</div>"
								+"</div>"
							
						+"</div>";
			}
					
		
			return str;
	}
	
	
		
	    </script>
         
               
	
</body>
</html>