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
		
		<!-- chhoin  style add -->
		<style type="text/css">
		.profile-heading img.avatar{
		width: 100px;
		height: 100px;
		position: absolute;
		left: 20px;
		bottom: 30px;
		z-index: 3;
		-webkit-box-shadow: 0px 0px 0px 4px rgba(255,255,255,1);
		-moz-box-shadow: 0px 0px 0px 4px rgba(255,255,255,1);
		box-shadow: 0px 0px 0px 4px rgba(255,255,255,1);
		}
		.profile-heading img.bg-cover {
		    width: 100%;
		    position: relative;
		    z-index: 1;
		}
		.the-box .right-action {
		    position: absolute;
		    top: -1px;
		    right: 0;
		    z-index: 9;
		}
		.profile-heading .user-name {
		    position: absolute;
		    bottom: 70px;
		    left: 140px;
		    padding: 10px 0;
		    color: #fff;
		    font-size: 24px;
		    font-weight: 700;
		    z-index: 3;
		}
		@media (max-width: 480px){
		.profile-heading img.avatar {
		    left: 50%;
		    top: 35%;
		    margin-left: -35px;
		    bottom: 190px;
		    z-index: 3;
		    width: 70px;
		    height: 70px;
			}
			.profile-heading img.bg-cover {
		    width: 100%;
		   	height: 150px;
		    position: relative;
		    z-index: 1;
			}
			
			.profile-heading .user-name {
		    position: absolute;
		    bottom: 0px;
		    left: 40%;
		    color: #fff;
		    font-size: 20px;
		    font-weight: 700;
		    z-index: 3;
		}
		}
		
		/* for video tap*/
		.the-box.no-border {
		    border: none;
		}
		.the-box {
		    padding: 15px;
		    margin-bottom: 30px;
		    background: #fff;
		    border: 1px solid #D5DAE0;
		    position: relative;
		}
		.store-list .store-image {
		    width: 200px;
		}
		.text-black {
		     font-size: 15px;
		}
		.dropdown-menu > li > a {
		    padding: 0px 14px;
		}
		.btn .fa, .btn .glyphicon {
		    margin: 0 3px;
		}
		@media (max-width: 480px){
		.store-list .store-image, .blog-list .blog-image, .property-list .property-image {
		    width: 100%;
		    margin-bottom: 30px;
		    padding-right: 0;
		}
		
		}
		
		/* for profile tap*/
		.btn-file input[type=file] {
		    position: absolute;
		    top: 0;
		    left: 0;
		    min-width: 100%;
		    min-height: 100%;
		    font-size: 999px;
		    text-align: left;
		    filter: alpha(opacity=0);
		    opacity: 0;
		    background: red;
		    cursor: inherit;
		    display: block;
		}
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
										
											<!-- ****************Videos tap *********************-->
											<div class="tab-pane fade in active" id="panel-videos">
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
													
													<div class="btn-group pull-right">
														<form role="form">
															<input type="text" class="form-control" id="tfsearchHistory" placeholder="Search Video">
														</form>
										
													</div>
													
												</div>
													<!-- start stor-list -->
													<div class="the-box no-border store-list">
														<div class="media">
															<a class="pull-left" href="../elearning/play.act?v=827">
																<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/Jrw7Ms66uB0/mqdefault.jpg">
															</a><div class="clearfix visible-xs"></div>   
															<div class="media-body" style="overflow:visible">       
																<a href="#fakelink"></a>  
																<div class="btn-group pull-right"> 	  
																	<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i> </button> 
																	<ul class="dropdown-menu" role="menu"> 
																		<li><a href="../elearning/play.act?v=827">Play</a></li> 
																		<li><a href="#" onclick="deletehistory('deletehistory.act?historyid=132188&amp;page=1')">Remove from History</a></li> 
																	</ul> 
																</div> 
																<ul class="list-inline"> 
																	<li><a href="../elearning/play.act?v=827"><strong class="text-black">1. Installation</strong></a></li><br>
																	<li><a><span class="small text-muted" style="color:#AAB2BD"> by Admin</span></a></li>
																</ul>
																<p class="hidden-xs"> </p><span class="small text-muted" style="color:#AAB2BD">
																<i class="fa fa-eye">&nbsp;&nbsp;548</i>      &nbsp;&nbsp;&nbsp; </span>
															</div>
														</div>
													</div><!-- end stor-list -->
													
													<!-- start stor-list -->
													<div class="the-box no-border store-list">
														<div class="media">
															<a class="pull-left" href="../elearning/play.act?v=827">
																<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/Jrw7Ms66uB0/mqdefault.jpg">
															</a><div class="clearfix visible-xs"></div>   
															<div class="media-body" style="overflow:visible">       
																<a href="#fakelink"></a>  
																<div class="btn-group pull-right"> 	  
																	<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i> </button> 
																	<ul class="dropdown-menu" role="menu"> 
																		<li><a href="../elearning/play.act?v=827">Play</a></li> 
																		<li><a href="#" onclick="deletehistory('deletehistory.act?historyid=132188&amp;page=1')">Remove from History</a></li> 
																	</ul> 
																</div> 
																<ul class="list-inline"> 
																	<li><a href="../elearning/play.act?v=827"><strong class="text-black">1. Installation</strong></a></li><br>
																	<li><a><span class="small text-muted" style="color:#AAB2BD"> by Admin</span></a></li>
																</ul>
																<p class="hidden-xs"> </p><span class="small text-muted" style="color:#AAB2BD">
																<i class="fa fa-eye">&nbsp;&nbsp;548</i>      &nbsp;&nbsp;&nbsp; </span>
															</div>
														</div>
													</div><!-- end stor-list -->
													
													<!-- start stor-list -->
													<div class="the-box no-border store-list">
														<div class="media">
															<a class="pull-left" href="../elearning/play.act?v=827">
																<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/Jrw7Ms66uB0/mqdefault.jpg">
															</a><div class="clearfix visible-xs"></div>   
															<div class="media-body" style="overflow:visible">       
																<a href="#fakelink"></a>  
																<div class="btn-group pull-right"> 	  
																	<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i> </button> 
																	<ul class="dropdown-menu" role="menu"> 
																		<li><a href="../elearning/play.act?v=827">Play</a></li> 
																		<li><a href="#" onclick="deletehistory('deletehistory.act?historyid=132188&amp;page=1')">Remove from History</a></li> 
																	</ul> 
																</div> 
																<ul class="list-inline"> 
																	<li><a href="../elearning/play.act?v=827"><strong class="text-black">1. Installation</strong></a></li><br>
																	<li><a><span class="small text-muted" style="color:#AAB2BD"> by Admin</span></a></li>
																</ul>
																<p class="hidden-xs"> </p><span class="small text-muted" style="color:#AAB2BD">
																<i class="fa fa-eye">&nbsp;&nbsp;548</i>      &nbsp;&nbsp;&nbsp; </span>
															</div>
														</div>
													</div><!-- end stor-list -->
													<!-- page gination -->
													<div class='text-center'>
													<nav>
													  <ul class="pagination">
													    <li>
													      <a href="#" aria-label="Previous">
													        <span aria-hidden="true">&laquo;</span>
													      </a>
													    </li>
													    <li class="active"><a href="#" >1</a></li>
													    <li><a href="#">2</a></li>
													    <li><a href="#">3</a></li>
													    <li><a href="#">4</a></li>
													    <li><a href="#">5</a></li>
													    <li>
													      <a href="#" aria-label="Next">
													        <span aria-hidden="true">&raquo;</span>
													      </a>
													    </li>
													  </ul>
													</nav>
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
														
													
													<div class="the-box no-border store-list">
														<div class="media">
															<a class="pull-left" href="../elearning/play.act?v=827">
																<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/Jrw7Ms66uB0/mqdefault.jpg">
															</a><div class="clearfix visible-xs"></div>   
															<div class="media-body" style="overflow:visible">       
																<a href="#fakelink"></a>  
																<div class="btn-group pull-right"> 	  
																	<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i> </button> 
																	<ul class="dropdown-menu" role="menu"> 
																		<li><a href="../elearning/play.act?v=827">Play</a></li> 
																		<li><a href="#" onclick="deletehistory('deletehistory.act?historyid=132188&amp;page=1')">Remove from History</a></li> 
																	</ul> 
																</div> 
																<ul class="list-inline"> 
																	<li><a href="../elearning/play.act?v=827"><strong class="text-black">1. Installation</strong></a></li><br>
																	<li><a><span class="small text-muted" style="color:#AAB2BD"> by Admin</span></a></li>
																</ul>
																<p class="hidden-xs"> </p><span class="small text-muted" style="color:#AAB2BD">
																<i class="fa fa-eye">&nbsp;&nbsp;548</i>      &nbsp;&nbsp;&nbsp; </span>
															</div>
														</div>
													</div><!-- end history -->
													
													<!-- start history -->
													<div class="the-box no-border store-list">
														<div class="media">
															<a class="pull-left" href="../elearning/play.act?v=827">
																<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/Jrw7Ms66uB0/mqdefault.jpg">
															</a><div class="clearfix visible-xs"></div>   
															<div class="media-body" style="overflow:visible">       
																<a href="#fakelink"></a>  
																<div class="btn-group pull-right"> 	  
																	<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i> </button> 
																	<ul class="dropdown-menu" role="menu"> 
																		<li><a href="../elearning/play.act?v=827">Play</a></li> 
																		<li><a href="#" onclick="deletehistory('deletehistory.act?historyid=132188&amp;page=1')">Remove from History</a></li> 
																	</ul> 
																</div> 
																<ul class="list-inline"> 
																	<li><a href="../elearning/play.act?v=827"><strong class="text-black">1. Installation</strong></a></li><br>
																	<li><a><span class="small text-muted" style="color:#AAB2BD"> by Admin</span></a></li>
																</ul>
																<p class="hidden-xs"> </p><span class="small text-muted" style="color:#AAB2BD">
																<i class="fa fa-eye">&nbsp;&nbsp;548</i>      &nbsp;&nbsp;&nbsp; </span>
															</div>
														</div>
													</div><!-- end history -->
													
													<!-- start history -->
													<div class="the-box no-border store-list">
														<div class="media">
															<a class="pull-left" href="../elearning/play.act?v=827">
																<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/Jrw7Ms66uB0/mqdefault.jpg">
															</a><div class="clearfix visible-xs"></div>   
															<div class="media-body" style="overflow:visible">       
																<a href="#fakelink"></a>  
																<div class="btn-group pull-right"> 	  
																	<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i> </button> 
																	<ul class="dropdown-menu" role="menu"> 
																		<li><a href="../elearning/play.act?v=827">Play</a></li> 
																		<li><a href="#" onclick="deletehistory('deletehistory.act?historyid=132188&amp;page=1')">Remove from History</a></li> 
																	</ul> 
																</div> 
																<ul class="list-inline"> 
																	<li><a href="../elearning/play.act?v=827"><strong class="text-black">1. Installation</strong></a></li><br>
																	<li><a><span class="small text-muted" style="color:#AAB2BD"> by Admin</span></a></li>
																</ul>
																<p class="hidden-xs"> </p><span class="small text-muted" style="color:#AAB2BD">
																<i class="fa fa-eye">&nbsp;&nbsp;548</i>      &nbsp;&nbsp;&nbsp; </span>
															</div>
														</div>
													</div><!-- end history -->
													<!-- page gination -->
													<div class='text-center'>
													<nav>
													  <ul class="pagination">
													    <li>
													      <a href="#" aria-label="Previous">
													        <span aria-hidden="true">&laquo;</span>
													      </a>
													    </li>
													    <li class="active"><a href="#" >1</a></li>
													    <li><a href="#">2</a></li>
													    <li><a href="#">3</a></li>
													    <li><a href="#">4</a></li>
													    <li><a href="#">5</a></li>
													    <li>
													      <a href="#" aria-label="Next">
													        <span aria-hidden="true">&raquo;</span>
													      </a>
													    </li>
													  </ul>
													</nav>
													</div>
													
													
											</div><!-- ***************#panel-about****************** -->
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
	<script>
		$(document).ready(function() {
			$("#sidebar-wrapper").height($("#page-content-wrapper").outerHeight());
		    $("#menu-toggle").click(function(e) {
		        $("#wrapper").toggleClass("toggled");
		    });
		});
	    </script>
	    <script>
	      jQuery(document).ready(function ($) {
	        "use strict";
			$('#SuppressScrollX_1').perfectScrollbar({suppressScrollX: true});
	      }); 
	    </script>
	    
	    <script src="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/videoplayer/youtube.js"></script>
		<script src="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.js"></script>
		 <script>

			// save a reference to the video element
			video = document.querySelector('video'),
			
			// save a reference to the video.js player for that element
			player = videojs(video, {'techOrder': ['youtube'], 'src': 'https://www.youtube.com/watch?v=K7Eh__GxQeQ'});

			// initialize the plugin with some custom options:
			player.logobrand({
				//height: "32px",
				//width: "32px",
				image: "videoplayer/logoka.png",
				destination: "http://www.khmeracademy.org/"
			});
			//player.logobrand().loadImage("http://instasynch.com/images/youtube.png");
			//player.logobrand().setDestination("http://instasynch.com/images/youtube.png");
			// set a flag and then we calculate the ratio from the width and height
			
		</script>
</body>
</html>