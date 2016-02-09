<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Profile</title>
	<jsp:include page="../shared/_header.jsp" />
		<!-- sweet alert -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/sweetalert2.css">
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
  		<!-- Player -->
  		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/libs/video-js/video-js.css">
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/videoplayer/src/videojs.logobrand.css">
		<!-- Player Responsive -->
		<link href="${pageContext.request.contextPath}/resources/assets/css/player-responsive.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/css/profile.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
		<!-- chhoin  style add -->
		<style type="text/css">
		 
		</style>
</head>
<body >
	
	<c:set var="usertype"  value="${usertype }"/>		
	<jsp:include page="../shared/_menu.jsp" />
	<br/>
		
		
		
	<!-- My Contend -->
	<div class="container ">

	        <!-- Sidebar -->
	        
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="" style="background:#fff;">
	            <div class="container-fluid">
	            	<div class="row">
	            		<div class="col-lg-12">
	            		
	            		
							
							<!-- ///////////////////////////////////////////////////////////// -->
							
							<!-- BEGIN PROFILE HEADING -->
							<div class="the-box transparent full no-margin profile-heading">
								<form enctype="multipart/form-data" action="changeusercover.act" method="post">
								<div class="right-action">
									<input type="file" id="photoimage" name="cover" class="filestyle" data-input="false" data-iconname="fa fa-edit" onchange="return ValidateFileUpload()" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);"><div class="bootstrap-filestyle input-group"><span class="group-span-filestyle " tabindex="0"><label for="photoimage" class="btn btn-default "><span class="glyphicon fa fa-edit"></span> <span class="buttonText">Choose Cover</span></label></span></div>
									<!-- <button class="btn btn-warning btn-square btn-xs" onchange="return ValidateFileUpload()">Change cover</button> -->
								</div>
								<img id="photoimg" src="${pageContext.request.contextPath}/resources/uploads/cover/profile.jpg" height="300px" class="bg-cover" alt="Image">
								
								<img id="avatar" class="avatar" alt="Avatar">
								<div class="profile-info ">
									<p id="chhoin" class="user-name"></p>
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
									<c:if test="${usertype == 'Admin' }">
									<li class="pull-right">
<!-- 										 <span class="btn btn-group inline-popups"> -->
												<a class="btn btn-success btn-rounded-lg"  data-toggle="modal" data-target="#uploadvideo">
													<i class="fa fa-cloud-upload"></i> Upload video
												</a>
<!-- 										</span> -->
									</li>	
									</c:if>		
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
													<div id="videoresult">
													
													</div>
													
													<!-- page gination -->
													<div class="text-center">
				    									<div id="demo5_top" class="demo5_top"></div>
				    								</div>
				    							</div>
													
											</div>
											
											
											<!--***********************user Prfile Tap ****************-->
											<div class="tab-pane fade" id="panel-myinfo">
												<div class="tab-pane fade in" id="panel-about">
														
														<div class="panel panel-success">
												      <div class="panel-heading">Profile Setting</div>
												      <div class="panel-body">
												      <form class="form-horizontal bootstrap-validator-form" enctype="multipart/form-data" id="myformvalidator1"  method="post" >	
														<div class="col-sm-8">
														
														<div class="form-group">
															<label class="col-lg-3 control-label">Username<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" class="form-control" id="username" name="username" value="hello" data-bv-field="username">
																<small id="checkname" class="help-block" style="color: red;"></small>
															</div>
														</div>
						
														<div class="form-group">
															<label class="col-lg-3 control-label">Email<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="email" class="form-control" id="myemail" name="myemail" value="" disabled="" data-bv-field="email">
																<small id="checkemail" class="help-block" style="color: red;"></small>
															</div>
														</div>
																					
														<div class="form-group">
															<label class="col-lg-3 control-label">Department<span class="required">*</span></label>
															<div class="col-lg-5">
																<select name="department" id="mydepartment" class="form-control" data-bv-field="department">
																	
																</select>
																<small id="checkdepartment" class="help-block" style="color: red;"></small>
															</div>
														</div>
														<div class="form-group">
															<label class=" col-lg-3 control-label">University<span class="required">*</span></label>
															<div class="col-lg-5">
																<select name="university" id="university" class="form-control" data-bv-field="university">
																	
																</select>
																<small id="checkuniversity" class="help-block" style="color: red;"></small>
															</div>
					
														</div>
														
														<div class="form-group">
																<label class="col-lg-3 control-label">Gender</label>
																<div class="col-lg-5">
																	<div class="radio">
																		<label>
																			<input type="radio" id="male" name="gender" value="male"  required=""  data-bv-field="gender" > Male
																		</label>
																	</div>
																	<div class="radio">
																		<label>
																			<input type="radio" id="female" name="gender" value="female"  data-bv-field="gender"> Female
																		</label>
																	</div>
															
																	<small id="checkgender" class="help-block" style="color: red;"></small>
															</div>
														</div>
														
														<div class="form-group">
															<label class="col-lg-3 control-label">Date of birth<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" value="" id="dateofbirth" name="dateofbirth" data-date-format="dd-mm-yyyy" class="form-control datepicker" id="calendar" data-bv-field="dateofbirth">
																<small id="checkdate" class="help-block" style="color: red;"></small>
															</div>
														</div>
														
														
														
														<div class="form-group">
															<label class="col-lg-3 control-label">Phone number<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" class="form-control" id="phonenumber" name="phonenumber" value="" data-bv-field="phonenumber">
																<small id="checkphone" class="help-block" style="color: red;"></small>
															</div>
														</div>
										
														
														<div class="form-group">
															<label class="col-lg-3 control-label">User Type<span class="required">*</span></label>
															<div class="col-lg-5">
																<input type="text" class="form-control" id="usertype" name="usertype" disabled="" value="Subscriber" data-bv-field="usertype">
																
																<small id="checkusertype" class="help-block" style="color: red;"></small>
															</div>
														</div>	
														
														</div>
														<div class="col-sm-4">			
															<div class="col-xs-12">
																<img id="imageprofile"  class="img-responsive img-thumbnail" style="width: 200PX; height:150px;"  alt="Image">
																<input type="hidden" class="form-control" id="oldprofile"   name="oldprofile"  ><br/>
																<div class="fileinput fileinput-new" data-provides="fileinput">
																  <span class="btn btn-default btn-file"><span class="fileinput-new">Select file</span>
																  <span class="fileinput-exists">Change</span><input type="file" id="image" name="image"></span>
																  <span class="fileinput-filename"></span>
																  <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">&times;</a>
																</div>
															</div>							
														</div>	
																						
														<!-- Button Post -->
														<div class="form-group">
															<div class="col-xs-12 ">
																<input type="submit"  class="btn btn-info btn-perspective" value="Update" style="left:30%"/>
															</div>
														</div>
														<!-- Button Post -->
																		
														<!-- /From -->
														</form>
												      </div>
												    </div>
												    
												     <!-- change password -->
												    <div class="panel panel-success">
												      <div class="panel-heading">Change Password</div>
												      <div class="panel-body">
												      	<div class="col-xs-12">
												      		<form class="form-horizontal bootstrap-validator-form">
												      		<div class="form-group">
																<label class="col-lg-3 control-label">Current Password<span class="required">*</span></label>
																<div class="col-lg-5">
																	<input type="password" onkeyup="validatOldPass();" class="form-control" name="oldpassword" id="oldpassword"  data-bv-field="oldpassword">
																	<small id="checkoldpassword"  class="help-block" style="color: red;"></small></div>
																
															</div>
															<div class="form-group">
																<label class="col-lg-3 control-label">New Password<span class="required">*</span></label>
																<div class="col-lg-5">
																	<input type="password" onkeyup="validatNewPass();" class="form-control" name="newpassword" id="newpassword"  data-bv-field="oldpassword">
																<small id="checknewpassword" class="help-block" style="color: red;"></small></div>
																
															</div>
															<div class="form-group">
																<label class="col-lg-3 control-label">Confirm Password<span class="required">*</span></label>
																<div class="col-lg-5">
																	<input type="password" onkeyup="validatConPass(); validatebothpass()" class="form-control" name="conpassword" id="conpassword"  data-bv-field="oldpassword">
																	<small id="checkconpassword" class="help-block" style="color: red;"></small>
																	<small id="checkbothpassword" class="help-block" style="color: red;"></small></div>
															</div>
															
															<!-- Button Post -->
															<div class="form-group">
																
																	<input type="button" onclick="changeMyPassword();" class="btn btn-info btn-perspective" value="Update" style="left:30%"/>
																
															</div>
															</form>
															</div>
															<br/>
															<br/>
												      </div>
												    
												</div>
													
												
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
																<a href="#" onclick="removeAllHistory(userid);"  class="btn btn-danger">
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
																	<input type="text" id="searchPlaylist" onkeyup="mySearchPlaylist();" class="form-control" placeholder="Search playlistname">
																</form>
																
															</div>
														</div>
													
													<div class="row">
													
														<!-- /////////////show playlist/////////// -->
														<div id="getPlayList"  class="mpadding" >`
															
														</div>
														<!-- page gination -->
														<div style="clear: both;"></div>
														<div class="text-center">
					    									<div id="demo6_top" class="demo6_top"></div>
					    								</div>
													</div>
														
												</div>	
												
												
												
												
												
												
												
												
												<div id="form-create-playlist1" class="ka-popup col-xs-12" style="display: none; width: 30%;  z-index: 100; top: 80px; margin-top:80px;">
													<div id="form-create-playlist" class="white-popup mfp-with-anim" style="border-radius:5px">
												  <form action="" id="formcreateplaylist" enctype="multipart/form-data"  method="post">
												  	
												  <div class="form-group">
													<label for="exampleInputEmail1"><h3>Playlist Form</h3></label>
												  </div>
												
												
												  <div class="form-group">
													<label for="exampleInputEmail1">Playlist name</label>
														<input type="hidden" class="form-control" id="oimg"   name="oimg"  ></span>
														<input type="hidden" class="form-control" name="listid" id="listid" placeholder="">
														<input type="text" class="form-control" onkeyup="validatPlaylistname()" name="listname" id="listname" placeholder="">
														<small id="checklistname" class="msg" style="color:red"></small>
												  </div>
												  <div class="form-group">
														<label for="exampleInputEmail1">Description</label>
														<textarea class="form-control" onkeyup="validatPlaylistnameDes()" name="playlistdescription" id="playlistdescription" data-bv-field="description"></textarea>
														<small id="checkplaylistdescription" class="msg" style="color:red"></small>
												 </div>
												 <c:if test="${usertype == 'Admin' }">
												  <div class="form-group">
														<label for="exampleInputEmail1">Category</label>
														<select class="form-control"  id="playlistcategory">
														</select>
														
														<small class="msg" style="color:red;display:none">The category  is required and can't be empty</small>
												 </div>
												  
												  
												  <div class="form-group">
														<label for="exampleInputEmail1">Color</label>
														<input type="text" class="form-control jscolor" name="color" id="color" placeholder="choose color">
														<small class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
													</div>
												  	<div class="form-group" >
														<label for="exampleInputEmail1">Image</label>
														<div class="col-sm-12">
														
														<div class="fileinput fileinput-new" data-provides="fileinput">
														  <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
														  <div>
														    <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="file" id="file"></span>
														    <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
														  </div>
														</div>
															
														</div>
													</div>
													
													
												  </c:if>
														 
														
														 	<input type="submit" id="btncreate"  value="Save" class="btn btn-success">
															<input type="button"  value="Close" class="btn btn-success b-close">	
															</form>
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
	
	
	</div>
	<!-- right content -->
	


<!-- Modal for alert when click delete-->
		  <div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog modal-sm">
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Delete</h4>
				</div>
				<div class="modal-body">
					<h2 style="text-align:center; color:red;">Are You Sure!!!</h2>
				</div>
				<div class="modal-footer">
					<script type="text/javascript">
						function go(name, hid, id){
							//alert(hid);
							if(id == 0){
								var x ="<a href='#' data-dismiss='modal' onclick="+name+"('"+hid+"') class='btn btn-danger' >Delete</a>";
							}else{
								var x ="<a href='#' data-dismiss='modal' onclick="+name+"('"+hid+"',"+id+") class='btn btn-danger' >Delete</a>";
							}
							
							document.getElementById("demo1").innerHTML=x;
						}
					</script>
					<span id="demo1"></span>
					<button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
		  </div>
  <!-- form upload -->
  <div class="modal fade" id="uploadvideo" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Upload Video</h4>
        </div>
        <div class="modal-body">
       		<form action="" id="myformuploadvideo">
       			<div class="form-group">
					<label for="exampleInputEmail1">Playlist nameVideo Name</label>
					<input type="text" class="form-control" name="videoplaylistname" id="videoplaylistname" placeholder="EG. MyTop">
					<small class="msg" id="checkvideoplaylistname" style="color:red;"></small>
			 	 </div>
			 	 <div class="form-group">
					<label for="exampleInputEmail1">Youtube URL</label>
					<input type="text" class="form-control" name="videourl" id="videourl" placeholder="EG. MyTop">
					<small class="msg" id="checkvideourl" style="color:red;"></small>
			 	 </div>
			 	 <div class="form-group">
					<label for="exampleInputEmail1">File URL</label>
					<input type="text" class="form-control" name="fileurl" id="fileurl" data-bv-field="fileurl">
					
			 	 </div>
			 	 <div class="form-group">
					<label for="exampleInputEmail1">Description</label>
					<textarea class="form-control" name="videodescription" id="videodescription" data-bv-field="description"></textarea>
					<small class="msg" id="checkvideodescription" style="color:red;"></small>
			 	 </div>
			 	 <div class="form-group">
					<label for="exampleInputEmail1">View</label>
					<div class="radio">
						<label> <input type="radio" name="publicview" checked="checked" id="public" value="true" required="" data-bv-notempty-message="A view is required" data-bv-field="publicview"> Public
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" name="publicview" id="private" value="false"  data-bv-field="publicview"> Private
						</label>
					</div>
					
			 	 </div>
			 	 
			 	  <div class="form-group">
					<label for="exampleInputEmail1">Category</label>
					<select class="form-control" id="uploadvideo_category">
						 
					</select>
					<small class="msg" style="color:red;display:none">The category  is required and can't be empty</small>
			 	 </div>
		
       		</form>
        </div>
        <div class="modal-footer">
        <button type="button" onclick="myuploadvideo();" class="btn btn-success pull-left">Add Video</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
	
	
	<!-- End My Contend -->
	 <jsp:include page="../shared/_footer.jsp" />
	<script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>
	 <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/assets/js/jscolor.js"></script>
	   <script src="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
        <script type="text/javascript">
	    
	    $(document).ready(function(){
	    	//create playlist
            $("#form-create-playlist").click(function(){ 
            	$("#form-create-playlist1").bPopup({modalClose: false});
				
            });
	    	//update playlist
            $(document).on('click',"#myformupdateplaylist2", function(){ 
            	$("#form-create-playlist1").bPopup({modalClose: false});
            });
	    	
	    	//upload video
            /* $("#form-upload-video-link").click(function(){ 
            	$("#form-upload-video").bPopup({modalClose: false});
            }); */
          });
	   
		var limit=0;
		var offset=1;
		var totalofrecord =0;
		var numofpage=1;
		var url="${pageContext.request.contextPath}";
		var userid="<%= request.getAttribute("userid") %>";
		var usertype="<%= request.getAttribute("usertype") %>";
		var key ="<%= request.getAttribute("key") %>";
		var api = "<%= request.getAttribute("api") %>";
		var api_url = "<%= request.getAttribute("api_url") %>";
		//alert(userid);
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
		 //mystartPlaylist();
		 userPlaylist();
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
				for(var i=1; i<data.RES_DATA.length ; i++){
					
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
			var characterReg = /^[\ba-zA-Z0-9-_.]+$/;
			
			//alert(key);
			if(key.length > 2   && characterReg.test(key)){
				$("#searchHistory").css("border", "solid 1px green");
				//alert(key);
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
				    	   	}else{
				    	   		mystart();
				    	   		swal("Search Not Found");
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
			}else{
				$("#searchHistory").css("border", "solid 1px red");
			}
			
		
		} 
		
		function removeFromHistory(hid, id){ //console.log("#div"+hid); $("#div"+hid).remove(); return ;
			swal({   
				title: "Are you sure?",   
				text: "You will not be able to recover this ",   
				type: "warning",   
				showCancelButton: true,   
				confirmButtonColor: "#DD6B55",   
				confirmButtonText: "Yes, delete it!",   
				closeOnConfirm: false }, function(){   
					
				
				 $.ajax({  
					 	url: url+'/rest/user/profile/removefromhistory/'+hid,
				       type:'delete',
				       contentType: 'application/json;charset=utf-8', // type of data
				       success: function(data) { 
				    	   	if(data.STATUS == true){
				    	   		$('#'+id).hide();
				    	   		swal("Deleted!", "Your video file has been deleted.", "success"); 
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
				}); 
		} 
		
		function removeAllHistory(uid){
			//alert(uid);
			swal({   
				title: "Are you sure?",   
				text: "You will not be able to recover this ",   
				type: "warning",   
				showCancelButton: true,   
				confirmButtonColor: "#DD6B55",   
				confirmButtonText: "Yes, delete it!",   
				closeOnConfirm: false }, function(){   
				 $.ajax({  
					 	url: url+'/rest/user/profile/removeallhistory/'+uid,
				       type:'delete',
				       contentType: 'application/json;charset=utf-8', // type of data
				       success: function(data) { 
				    	   	if(data.STATUS == true){
				    	   		$("#getHistory").show();
				    	   		$("#hiscover").hide();
				    	   		swal("Deleted!", "Your video history has been deleted.", "success");
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
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
									+"<li><a><span class='small text-muted' style='color:#AAB2BD;font-size: 16px'>"+data.RES_DATA[i].username+"</span></a></li>"
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
		var characterReg = /^[\ba-zA-Z0-9-_.]+$/;
		//alert(key);
		if(key.length > 2 && characterReg.test(key)){
			$("#searchVideo").css("border", "solid 1px green");
			//alert(key);
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
			    	   	}else{
			    	   		mystartVideo();
			    	   		swal("Search Not Found");
			    	   	}
			    	   		//$("#showresult").html(listarticles(data));
			                console.log("Success..." + data);
			       }  ,  
			   		error: function(data){
			   		alert("Unsuccess" + data +"OR Empty");
			   		console.log("ERROR..." + data);
			   	}
			   }); 
		}else{
			$("#searchVideo").css("border", "solid 1px red");
		}
		
	
	}
	
	function disableVideo(vid){
		swal({   
			title: "Are you sure?",   
			text: "You will not be able to recover this",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "Yes, delete it!",   
			closeOnConfirm: false }, function(){  
		//alert(vid);
			  $.ajax({  
				 	url: url+'/rest/user/profile/disablevideo/'+vid,
			       type:'GET',
			       contentType: 'application/json;charset=utf-8', // type of data
			       success: function(data) { 
			    	   	if(data.STATUS == true){
			    	   		//alert("disable work");
			    	   		swal("Deleted!", "Your video has been disable", "success"); 
			    
			    	   	}
			    	   		//$("#showresult").html(listarticles(data));
			                console.log("Success..." + data);
			       }  ,  
			   		error: function(data){
			   		alert("Unsuccess" + data +"OR Empty");
			   		console.log("ERROR..." + data);
			   	}
			   });  
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
            		$("#getPlayList").html(listPlaylistDetail(data));
            		//alert(data.RES_DATA[1].bgImage);
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
				
				var img = "";
				if(usertype =='Admin'){
					img =  "<img src='"+api+data.RES_DATA[i].bgImage+"'  alt='Image'>"
					//alert(api+data.RES_DATA[i].bgImage);
				}else{
					img = "<img src='https://i.ytimg.com/vi/"+data.RES_DATA[i].thumbnailUrl+"/mqdefault.jpg' class='item-image' alt='Image'>"
				}
				
				str += "<div class='col-xs-12 col-sm-5 col-md-4 col-lg-' >"
							+"<div class='the-box full store-item text-center checkchb'>"
							+"<div class='setting-list all  mydiv0' style='display: block; position: absolute; width: 100%; padding-left: 3px; z-index: 101;'>"
								//+"<input type='checkbox' value='306' class='mycheck' id='chBox0' style='margin-right: 170px;'>"
								+"<a  onclick=deletePlaylist('"+data.RES_DATA[i].playlistId+"'); class='btn btn-danger btn-md' style='float: right;margin-right: 0px;margin-top: -2px;'>"	
								+"<i class='fa fa-trash-o'></i></a>"
								+"<span class='inline-popups'>"
									+"<a id='myformupdateplaylist2' onclick=viewPlayList('"+data.RES_DATA[i].playlistId+"')  class='btn btn-default btn-md dropdown-toggle' data-effect='mfp-zoom-in' style='float: right;margin-right: 0px;margin-top: -2px;'>"
								+"<i class='fa fa-edit'></i></a></span>"
							+"</div>"
						+"<a href='"+url+'/elearning/playlistdetail/'+data.RES_DATA[i].playlistId+"'>"
						+"<div class='new-playlist'>"
							+"<ul>"
								+"<li>"+data.RES_DATA[i].countVideos+"</li>"
								//+"<li><a class='btn btn-success dropdown-toggle' id='myformupdateplaylist2'  >click</a></li>"
								+"<li>"+data.RES_DATA[i].playlistName+"</li>"
								+"<li><i class='fa fa-bars'></i></li>"
								+"</ul>"
							+"</div>"
						+"</a>" + img

					+"<div class='the-box no-margin no-border item-des'>"
						+"<div class='row'>"
						+"<div class='col-xs-12'>"
						+"<p class='text-danger'><strong class='text-black'>"+data.RES_DATA[i].playlistName+"</strong></p>"
						+"</div>"
						+"</div>"
						+"</div>"
						+"</div>"
						
						+"</div>";
			}
					
		
			return str;
	}

function mySearchPlaylist(){
	var key =$("#searchPlaylist").val();
	var characterReg = /^[\ba-zA-Z0-9-_.]+$/;
	//alert(key);
	if(key.length > 2 && characterReg.test(key)){
		$("#searchPlaylist").css("border", "solid 1px green");
		 $.ajax({  
			 	url: url+'/rest/user/profile/searchplaylist/'+userid+'/'+key+'?page='+offsetplaylist+'&item='+limitplaylist, 
		       type:'get',
		       contentType: 'application/json;charset=utf-8', // type of data
		       success: function(data) { 
		    	   	if(data.STATUS == true){
		    	   		//alert(data);
		    	   		totalofrecordplaylist=data.PAGINATION.totalCount;
		    	   		numofpageplaylist=data.PAGINATION.totalPages;
		            	loadPaginationPlaylist();
			    	   	$("#getPlayList").html(listPlaylistDetail(data));
			    	   	
		    	   		//alert(data.PAGINATION.totalCount);
		    	   	}else{
		    	   		
		    	   		swal("Search Not Found");
		    	   		mystartPlaylist();
		    	   	}
		    	   		//$("#showresult").html(listarticles(data));
		                console.log("Success..." + data);
		       }  ,  
		   		error: function(data){
		   		alert("Unsuccess" + data +"OR Empty");
		   		console.log("ERROR..." + data);
		   	}
		   }); 
	}else{
		$("#searchPlaylist").css("border", "solid 1px red");
	}
	

}

		//user for jColor
		function setTextColor(picker) {
			document.getElementsByTagName('body')[0].style.color = '#' + picker.toString()
		}
		
		//list maincategory
		listMainCategory();
		function listMainCategory(){
    	$.ajax({
    		url: url+'/rest/user/profile/listcategory',
            type: 'get',
            contentType: 'application/json;charset=utf-8',
            //data: JSON.stringify(JSONObject),
            success: function(data){
            	//alert(data.RES_DATA.length);
            	if(data.STATUS == true){
            		//alert(data);
            		$("#playlistcategory").html(listMainCategoryDetail(data));
            		
            	}
            },
            error: function(data){
            	//alert("listAll() unseccess data");
            }
        });	    	
		   
	}
		
		function listMainCategoryDetail(data){
			var str="";
				for(var i=0; i<data.RES_DATA.length ; i++){
					str += " <option value='"+data.RES_DATA[i].mainCategoryId+"'>"+data.RES_DATA[i].mainCategoryName+"</option>";
				}
				//alert(str);
				return str;
		}
		
		function deletePlaylist(pid){
			//alert(pid);
			swal({   
				title: "Are you sure?",   
				text: "You will not be able to recover this ",   
				type: "warning",   
				showCancelButton: true,   
				confirmButtonColor: "#DD6B55",   
				confirmButtonText: "Yes, delete it!",   
				closeOnConfirm: false }, function(){   
					
				
				 $.ajax({  
					 	url: url+'/rest/user/profile/deleteplaylist/'+pid,
				       type:'delete',
				       contentType: 'application/json;charset=utf-8', // type of data
				       success: function(data) { 
				    	   	if(data.STATUS == true){
				    	   		//alert('playlist was deletee');
				    	   		mystartPlaylist();
				    	   		swal("Deleted!", "Your playlist has been deleted.", "success"); 
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
			 });
		} 
		
		//userPlaylist();
		function userPlaylist(){
			//alert(userid);
	    	 $.ajax({
	            url: url+'/rest/user/profile/userprofile/'+userid,
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            success: function(data){
	            	if(data.STATUS == true){
	            		$("#username").val(data.RES_DATA.username);
	            		$("#chhoin").text(data.RES_DATA.username);
	            		$("#myemail").val(data.RES_DATA.email);
	            		
	            		if(data.RES_DATA.gender == 'male'){
	            			$("#male").attr('checked', 'checked');
	            		}else{
	            			$("#female").attr('checked', 'checked');
	            			//alert('M');
	            		}
	            		//$("#gender").attr('checked', 'checked');
	            		
	            	/* 	department
	            		$("#radio_1").attr('checked', 'checked');
	            		id="gender1" */
	            		
	            		$("#dateofbirth").val(data.RES_DATA.dateOfBirth);
	            		$("#phonenumber").val(data.RES_DATA.phoneNumber);
	            		$("#usertype").val(data.RES_DATA.userTypeName);
	            		$("#oldpassword").val("");
	            		$("#newpassword").val("");
	            		 //$('#imageprofile').attr('src', url+'/'+data.RES_DATA.userImageUrl);
	            		 $("#oldprofile").val(data.RES_DATA.userImageUrl);
	            		 
	            		 $('#imageprofile').attr('src',api+data.RES_DATA.userImageUrl);
	            		 $('#avatar').attr('src',api+data.RES_DATA.userImageUrl);
	            		 
	            		listDepartments(data.RES_DATA.departmentId);
	            		listMyUniversity(data.RES_DATA.universityId);
	            		
	            		
	            	}
	        		
	            },
	            error: function(data){
	            	alert("1start () unsuccess data");
	            }
	        });	 
		    	 
			}
		

		
		
		function listDepartments(did){
			
	    	$.ajax({
	    		url: url+'/rest/user/profile/listdepartment/',
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            //data: JSON.stringify(JSONObject),
	            success: function(data){
	            	//alert(data.RES_DATA.length);
	            	if(data.STATUS == true){
	            		//alert(data);
	            		var str="";
	            		for(var i=0; i<data.RESP_DATA.length ; i++){
	            			if( data.RESP_DATA[i].departmentId == did & did !=null){
	            				str += " <option value='"+data.RESP_DATA[i].departmentId+"' selected>"+data.RESP_DATA[i].departmentName+"</option>";
	            			}
	    					str += " <option value='"+data.RESP_DATA[i].departmentId+"'>"+data.RESP_DATA[i].departmentName+"</option>";
	    				}
	            		
	            		$("#mydepartment").html(str);
	            		
	            	}
	            	
	            },
	            error: function(data){
	            	//alert("listAll() unseccess data");
	            }
	        });	    	
	     
		}
		
		function listMyUniversity(uid){
			//alert(uid);
	     $.ajax({
	    		url: url+'/rest/user/profile/listuniversity',
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            //data: JSON.stringify(JSONObject),
	            success: function(data){
	            	//alert(data.RES_DATA.length);
	            	if(data.STATUS == true){
	            		//alert(data);
	            		var str="";
	            		for(var i=0; i<data.RESP_DATA.length ; i++){
	            			//alert(data.RESP_DATA[i].universityId);
	            			if( data.RESP_DATA[i].universityId == uid  & uid !=null){
	            				
	            				str += " <option value='"+data.RESP_DATA[i].universityId+"' selected>"+data.RESP_DATA[i].universityName+"</option>";
	            			}
	    					str += " <option value='"+data.RESP_DATA[i].universityId+"'>"+data.RESP_DATA[i].universityName+"</option>";
	    				
	            		}
	            		
	            		$("#university").html(str);
	            		
	            	}
	            	
	            },
	            error: function(data){
	            	//alert("listAll() unseccess data");
	            }
	        });	    	 
	     
		}
		
	
		
		function changeMyPassword() {
			if(oldpass && newpass && conpass && checkpass){
				var JSONObject = $.parseJSON('{"newPassword":"'+$("#newpassword").val()+'","oldPassword":"'+$("#oldpassword").val()+'", "userId":"'+userid+'"}');
			  
					$.ajax({
			           url: url+'/rest/user/profile/changepassword',
			           type: 'post',
			           contentType: 'application/json;charset=utf-8',
			           data: JSON.stringify(JSONObject),
			           success: function(data){
			           	if(data.STATUS == true){
			           		//alert("");
			           		
			           		//swal("Password Was Changed", "It's pretty, isn't it?")
			           		swal("Password Was Changed", "You clicked the button!", "success")
						}else{
							swal("Wrong Password");
							
							validatOldPass();
							validatNewPass();
							validatConPass();
							validatebothpass();
						}
			           	
			           },
			           error: function(data){
			           	alert("not change");
			           }
			       });	
			}else{
				validatOldPass();
				validatNewPass();
				validatConPass();
				validatebothpass();
			}
			
		}
		
		$('#myformvalidator1').submit(function(e){
			e.preventDefault();
			//alert('submit');
			
			
			if(validateUser() && validatDepartment() && validatUniversity() && validateGender() && validatePhone() && validateDOB() ){
				//validateUser() &&
				var username= $("#username").val();
				var email =  $("#myemail").val();
				var department =  $("#mydepartment").val();
				var university =  $("#university").val();
				var gender =$('input[name=gender]:checked', '#myformvalidator1').val();
				var dob = $("#dateofbirth").val();
				var phone = $("#phonenumber").val();
				var usertype =$("#usertype").val();
				var oldprofile = $("#oldprofile").val();
				var newprofile = $("#image").val();
				var profile ="";
				//alert(newprofile.length);
				
				if(newprofile.length !== 0){
					///upload new profile than update
					//alert('new image profile');
					//profile ='/resources/uploads/user/avatar.jpg';
					 $.ajax({
						type : "POST",
						url : api_url+'/uploadfile/image?url=profile',
						enctype : 'multipart/form-data',
						data : new FormData(document.getElementById("myformvalidator1")),
						processData : false, // tell jQuery not to process the data
						contentType : false, // tell jQuery not to set contentType
						 headers : {
								"Authorization" : "Basic "+key
							},
						success : function(data) {
							if(data.STATUS == true){
								//alert("image was upload");
								//alert(data.IMG);
								profile =data.IMG;
								 $('#imageprofile').attr('src',api+profile);
								 $('#avatar').attr('src',api+profile);
								processUpdatePr(username,gender,dob,phone,profile,university,department);
							}else{
								//alert('image not upload');
								swal("Image not upload");
							}
					
						},
						error : function(data) {
							alert("1upload unsuccess data");
						}
					}); 
				}else{
					//alert('use old image');
					profile =oldprofile;
					processUpdatePr(username,gender,dob,phone,profile,university,department);
					//alert(profile);
				}
				
				
				
				
				
			}
			
		});
		
		
		function processUpdatePr(n,g,dob,phone,img,uni,dep){
			var JSONObject = $.parseJSON('{"username":"'+n+'","gender":"'+g+'","dateOfBirth":"'+dob+'","phoneNumber":"'+phone+'","userImageUrl":"'+img+'","universityId":"'+uni+'","departmentId":"'+dep+'","userId":"'+userid+'"}');
			$.ajax({
	            url: url+"/rest/user/profile/updateprofile",
	            type: 'put',
	            contentType: 'application/json;charset=utf-8',
	            data: JSON.stringify(JSONObject),
	            success: function(data){
	            	 if(data.STATUS == true){
	            		 swal("Profile Was Update", "You clicked the button!", "success")
					} 
	            	
	            },
	            error: function(data){
	            	alert("3 unsuccess data");
	            }
	        });	
		}
		
		
		
	 	
	 	/*****************validation updat profile**************/
	 	function validateUser(){
			var name= $("#username").val();
			var characterReg = /^[\sa-zA-Z0-9_-]{3,16}$/;
			    if(!characterReg.test(name)) {
			    	$("#username").css("border", "solid 1px red");
			    	$("#checkname").text("Require and at least 3 charactors less than 16 charactors");
			    	return false;
			    
			    }else{
			    	$("#username").css("border", "solid 1px green");
			    	$("#checkname").text("");
			    	return true;
			    }
		}
	 	
	 	//this function not use
	 	function validateEmail(){
			var name= $("#myemail").val();
			var characterReg = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			    if(!characterReg.test(name)) {
			    	$("#myemail").css("border", "solid 1px red");
			    	$("#checkemail").text("Invalid Email");
			    	return false;
			    
			    }else{
			    	$("#myemail").css("border", "solid 1px green");
			    	$("#checkemail").text("");
			    	return true;
			    }
		}
	 	
	 	function validatDepartment(){
			var name= $("#mydepartment").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_+=]+$/;
			    if(!characterReg.test(name)) {
			    	$("#mydepartment").css("border", "solid 1px red");
			    	$("#checkdepartment").text("Invalid Department");
			    	 return false;
			    
			    }else{
			    	$("#mydepartment").css("border", "solid 1px green");
			    	$("#checkdepartment").text("");
			    	return true;
			    }
		}
	 	
	 	function validatUniversity(){
			var name= $("#university").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_+=]+$/;
			    if(!characterReg.test(name)) {
			    	$("#university").css("border", "solid 1px red");
			    	$("#checkuniversity").text("Invalid Department");
			    	 return false;
			    
			    }else{
			    	$("#university").css("border", "solid 1px green");
			    	$("#checkuniversity").text("");
			    	return true;
			    }
		}
	 	
	 	function validateGender(){
	 		var gender =$('input[name=gender]:checked', '#myformvalidator1').val();
	 		if(gender == 'male' || gender == 'female'){
		    	$("#checkgender").text("");
	 			return true;
	 		}else{
	 			$("#checkgender").text("Invalid gender");
	 			return false;
	 		}
	 	}
	 	
		function validateDOB(){
			var name= $("#dateofbirth").val();
			var characterReg = /^[\s0-9-:.-\\/]+$/;
			    if(!characterReg.test(name)) {
			    	$("#dateofbirth").css("border", "solid 1px red");
			    	$("#checkdate").text("Invalid Date");
			    	 return false;
			    
			    }else{
			    	$("#dateofbirth").css("border", "solid 1px green");
			    	$("#checkdate").text("");
			    	return true;
			    }
		}
		
		function validatePhone(){
			var name= $("#phonenumber").val();
			var characterReg = /^[\s0-9-:.\\/]+$/;
			    if(!characterReg.test(name)) {
			    	$("#phonenumber").css("border", "solid 1px red");
			    	$("#checkphone").text("Invalid Phone Number");
			    	 return false;
			    
			    }else{
			    	$("#phonenumber").css("border", "solid 1px green");
			    	$("#checkphone").text("");
			    	return true;
			    }
		}
		//this function not use
		function validateUserType(){
			var name= $("#usertype").val();
			var characterReg = /^[a-zA-Z]+$/;
			    if(!characterReg.test(name)) {
			    	$("#usertype").css("border", "solid 1px red");
			    	$("#checkusertype").text("Invalid User Type");
			    	 return false;
			    
			    }else{
			    	$("#usertype").css("border", "solid 1px green");
			    	$("#checkusertype").text("");
			    	return true;
			    }
		}
	 	
	 	
	 	
	 	
	 	/////////validat passowrd////////
	 	var oldpass = false;
		var newpass = false;
		var conpass = false;
		var checkpass=false;
		
		function validatOldPass(){
			var name= $("#oldpassword").val();
			var characterReg = /^[a-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{6,16}$/;
			    if(!characterReg.test(name)) {
			    	$("#oldpassword").css("border", "solid 1px red");
			    	$("#checkoldpassword").text("Require and at least 6 charactors less than 16 charactors");
			    	oldpass=false;
			    
			    }else{
			    	$("#oldpassword").css("border", "solid 1px green");
			    	$("#checkoldpassword").text("");
			    	oldpass=true;
			    }
		}
		
		function validatNewPass(){
			var name= $("#newpassword").val();
			var characterReg = /^[a-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{6,16}$/;
			    if(!characterReg.test(name)) {
			    	$("#newpassword").css("border", "solid 1px red");
			    	$("#checknewpassword").text("Require and at least 6 charactors less than 16 charactors");
			    	newpass=false;
			    
			    }else{
			    	$("#newpassword").css("border", "solid 1px green");
			    	$("#checknewpassword").text("");
			    	newpass=true;
			    }
		}
		
		
		function validatConPass(){
			var name= $("#conpassword").val();
			var characterReg = /^[a-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{6,16}$/;
			    if(!characterReg.test(name)) {
			    	$("#conpassword").css("border", "solid 1px red");
			    	$("#checkconpassword").text("Require and at least 6 charactors less than 16 charactors");
			    	conpass=false;
			    
			    }else{
			    	$("#conpassword").css("border", "solid 1px green");
			    	$("#checkconpassword").text("");
			    	conpass=true;
			    }
		}
		
		function validatebothpass(){
			var pass1= $("#newpassword").val();
			var pass2= $("#conpassword").val();
			if(pass1 != pass2){
				$("#newpassword").css("border", "solid 1px red");
				$("#conpassword").css("border", "solid 1px red");
				$("#checkbothpassword").text("Check New Password and Confirm Password");
				checkpass= false;
			}else{
				$("#checkbothpassword").text("");
				$("#newpassword").css("border", "solid 1px green");
				$("#conpassword").css("border", "solid 1px green");
				checkpass= true;
			}
		}
		listMainPlaylist();
		function listMainPlaylist(){
    	$.ajax({
    		url: url+'/rest/user/profile/listallmaincategory',
            type: 'get',
            contentType: 'application/json;charset=utf-8',
            //data: JSON.stringify(JSONObject),
            success: function(data){
            	//alert(data.RES_DATA.length);
            	if(data.STATUS == true){
            		//alert(data);
            		$("#uploadvideo_category").html(listMainPlaylistDetail(data));
            		
            	}
            },
            error: function(data){
            	//alert("listAll() unseccess data");
            }
        });	    	
		   
	}
		
		function listMainPlaylistDetail(data){
			var str="";
				for(var i=0; i<data.RES_DATA.length ; i++){
					str += " <option value='"+data.RES_DATA[i].mainCategoryId+"'>"+data.RES_DATA[i].mainCategoryName+"</option>";
				}
				//alert(str);
				return str;
		}
		
		function myuploadvideo(){
			
			if(validatNameVideo() && validatUrlVideo() && validatDescriptionVideo()){
				var videoName= $("#videoplaylistname").val();
				var videourl= $("#videourl").val();
				var fileurl= $("#fileurl").val();
				var videdescription= $("#videodescription").val();
				var status =$('input[name=publicview]:checked', '#myformuploadvideo').val();
				var uploadvideo_category= $("#uploadvideo_category").val();
				
				
				var JSONObject = $.parseJSON('{"videoName":"'+videoName+'","description":"'+videdescription+'", "youtubeUrl":"'+videourl+'" , "fileUrl":"'+fileurl+'","publicView":"true","userId":"'+userid+'", "status":"'+status+'" ,"categoryId":["'+uploadvideo_category+'"]}');
			   	//alert("good");
					$.ajax({
			           url: url+'/rest/user/profile/uploadvideo',
			           type: 'post',
			          //contentType:false,
			           contentType: 'application/json;charset=utf-8',
			           data: JSON.stringify(JSONObject),
			           success: function(data){
			           	if(data.STATUS == true){
			           		//alert("video has been upload");
			           		//swal("video uploaded")
			           		swal("video has been upload", "You clicked the button!", "success");
				            clearUpload();
							}
			           	else{
			           		//alert("video not upload");
			           		swal("video not upload");
			           	}
			           	mystartPlaylist();
			           },
			           error: function(data){
			           	alert("2 unsuccess data");
			           }
			       });	
				
			}
		}
		function clearUpload(){
			$("#videoplaylistname").val("");
			$("#videourl").val("");
			$("#fileurl").val("");
			$("#videodescription").val("");
			$("#removeimage").click();
		}
		
		//*******************validation upload vidoe************************
		
		function validatNameVideo(){
			var name= $("#videoplaylistname").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{3,100}$/;
			    if(!characterReg.test(name)) {
			    	$("#videoplaylistname").css("border", "solid 1px red");
			    	$("#checkvideoplaylistname").text("Require and at least 3 charactors less than 100 charactors");
			    	   return false;
			    
			    }else{
			    	$("#videoplaylistname").css("border", "solid 1px green");
			    	$("#checkvideoplaylistname").text("");
			    		return true;
			    }
		}
		
		
		function validatUrlVideo(){
			var name= $("#videourl").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{3,100}$/;
			    if(!characterReg.test(name)) {
			    	$("#videourl").css("border", "solid 1px red");
			    	$("#checkvideourl").text("Require and at least 3 charactors less than 100 charactors");
			    	   return false;
			    
			    }else{
			    	$("#videourl").css("border", "solid 1px green");
			    	$("#checkvideourl").text("");
			    		return true;
			    }
		}
		
		function validatDescriptionVideo(){
			var name= $("#videodescription").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{3,255}$/;
			    if(!characterReg.test(name)) {
			    	$("#videodescription").css("border", "solid 1px red");
			    	$("#checkvideodescription").text("Require and at least 3 charactors less than 255 charactors");
			    	return false;
			    
			    }else{
			    	$("#videodescription").css("border", "solid 1px green");
			    	$("#checkvideodescription").text("");
			    	return true;
			    }
		}

	 	
	 	
	 	
		
		//whend click submit to create new playlist
		$('#formcreateplaylist').submit(function(e){
			e.preventDefault();
		
		
		var publicview =false;
		var playname=$("#listname").val();
		var playdescription=$("#playlistdescription").val();
		var category ="";
		var color="";
		var img="";
		var oimg="";
		var thumnial="mcgBfVSTKqo"; 
		var status="";
		var playid = $("#listid").val();
		
		 if(usertype == 'Admin'){
			 status =true;
			 publicview=true;
			 thumnial ="mcgBfVSTKqo";
			 color=$("#color").val();
			 //var img="/resources/uploads/user/avatar.jpg";
			 category=$("#playlistcategory").val();
			img=$("#file").val();
			oimg=$("#oimg").val();
		}else{
			oimg=$("#oimg").val();
			status =false;
			 publicview=false;
			 thumnial ="mcgBfVSTKqo";
			 color ="000000";
			category="MA==";
		} 
		//alert("user0");
			
		//alert(publicview);
		
		 //create playlist no image ->well
		 if(img =="" && oimg ==""){
			//alert("insert no image");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
				//alert("insert no image");
			var img="/resources/upload/file/playlist/97bb03d0-661e-4b73-89a9-8dbc2269f6b3.jpg";
			//createPlayList(playname,playdescription,userid,thumnial,publicview,category,img,color, status);
			createPlayList(playname,playdescription,userid,thumnial,publicview,category,img,color,status);
			}
		}  
		
		//idrect update
		else if(img =="" && oimg.length !== 0 ){
			///alert("direct update");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
			updateProcess(playname,playdescription,userid,thumnial,publicview,category,oimg,color,status);
			//updateProcess(n,d,u,th,p,m,bg,c,s);
			}
		}
		//insert image and update
		else if(img.length !== 0 && oimg.length !== 0 ){
			///alert("update with new image");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
			$.ajax({
				type : "POST",
				url : api_url+'/uploadfile/upload?url=playlist',
				enctype : 'multipart/form-data',
				data : new FormData(document.getElementById("formcreateplaylist")),
				processData : false, // tell jQuery not to process the data
				contentType : false, // tell jQuery not to set contentType
				 headers : {
						"Authorization" : "Basic "+key
					},
				success : function(data) {
					if(data.STATUS == true){
						//alert("image was upload");
						//alert(data.IMG);
						updateProcess(playname,playdescription,userid,thumnial,publicview,category,data.IMG,color,status);
					}
			
				},
				error : function(data) {
					alert("1upload unsuccess data");
				}
			});
			}
		} 
		//insert with image
		 else {
			//alert("insert with image");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
			$.ajax({
				type : "POST",
				url : api_url+'/uploadfile/upload?url=playlist',
				enctype : 'multipart/form-data',
				data : new FormData(document.getElementById("formcreateplaylist")),
				processData : false, // tell jQuery not to process the data
				contentType : false, // tell jQuery not to set contentType
				 headers : {
						"Authorization" : "Basic "+key
					},
				success : function(data) {
					if(data.STATUS == true){
						//alert("image was upload");
						//alert(data.IMG);
						createPlayList(playname,playdescription,userid,thumnial,publicview,category,data.IMG,color,status);
					}
			
				},
				error : function(data) {
					alert("1upload unsuccess data");
				}
			});
			}
		} 

		
		});
		
		
		
		
		//create playlist
			function createPlayList(n,d,u,th,p,m,bg,c,s){
				//alert(n +"  "+ d+"  "+u+"  "+th+"  "+p+"  "+m+"  "+bg+"  "+c+"  "+s);
				var JSONObject = $.parseJSON('{"playlistName":"'+n+'","description":"'+d+'", "userId":"'+u+'" , "thumbnailUrl":"'+th+'","publicView":"'+p+'" ,"maincategory":"'+m+'" ,"bgImage":"'+bg+'" ,"color":"'+c+'" ,"status":"'+s+'"}');
			   	//alert("good");
					$.ajax({
			           url: url+'/rest/user/profile/createplaylist',
			           type: 'post',
			          //contentType:false,
			           contentType: 'application/json;charset=utf-8',
			           data: JSON.stringify(JSONObject),
			           success: function(data){
			           	if(data.STATUS == true){
			           		//alert("created");
			           		swal("Playlist Was created", "You clicked the button!", "success");
				            	myClear();
				            	mystartPlaylist();
				            	$("#form-create-playlist1").bPopup().close();
							}else{
								//alert("not create playlist");
							}
			           
			           },
			           error: function(data){
			           	alert("creation unsuccess data");
			           }
			       });	    	
				}
		
		
		
		function viewPlayList(pid){
			//alert(pid);
			$.ajax({
				url: url+'/rest/user/profile/viewplaylist/'+pid,
		        type: 'get',
		        contentType: 'application/json;charset=utf-8',
		        //data: JSON.stringify(JSONObject),
		        success: function(data){
		        	//alert(data.RES_DATA.length);
		        	if(data.STATUS == true){
		        		listCategoryUpdate(data.USERPLAYLIST.maincategory)
		        		//alert(data.USERPLAYLIST.playlistName);
		        		$("#listid").val(data.USERPLAYLIST.playlistId);
		        		$("#listname").val(data.USERPLAYLIST.playlistName);
		        		$("#playlistdescription").val(data.USERPLAYLIST.description);
		        		$("#color").val(data.USERPLAYLIST.color);
		        		$("#oimg").val(data.USERPLAYLIST.bgImage);
		        		
		        	}
		        	
		        },
		        error: function(data){
		        	alert("view playlist unseccess data");
		        }
		    });	
		}
		
function listCategoryUpdate(cid){
		//alert(cid);	
	    	 $.ajax({
	    		url: url+'/rest/user/profile/listcategory',
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            //data: JSON.stringify(JSONObject),
	            success: function(data){
	            	//alert(data.RES_DATA.length);
	            	if(data.STATUS == true){
	            		var str="";
	            		for(var i=0; i<data.RES_DATA.length ; i++){
	            			
							 if( data.RES_DATA[i].mainCategoryId == cid  & cid !=null){
								str += " <option value='"+data.RES_DATA[i].mainCategoryId+"' selected>"+data.RES_DATA[i].mainCategoryName+"</option>";
	            			} 
							 str += " <option value='"+data.RES_DATA[i].mainCategoryId+"' >"+data.RES_DATA[i].mainCategoryName+"</option>";
	    				
	            		}
	            		
	            		$("#playlistcategory").html(str);
	            		
	            	}
	            	
	            },
	            error: function(data){
	            	//alert("listAll() unseccess data");
	            }
	        });     	
	     
		}
//update process
function updateProcess(n,d,u,th,p,m,bg,c,s){
	 var pid = $("#listid").val();
	 var JSONObject = $.parseJSON('{"playlistId":"'+pid+'","playlistName":"'+n+'","description":"'+d+'", "userId":"'+u+'" , "thumbnailUrl":"'+th+'","publicView":"'+p+'" ,"maincategory":"'+m+'" ,"bgImage":"'+bg+'" ,"color":"'+c+'" ,"status":"'+s+'"}');
   	
		$.ajax({
           url: url+"/rest/user/profile/updateplaylist",
           type: 'put',
           contentType: 'application/json;charset=utf-8',
           data: JSON.stringify(JSONObject),
           success: function(data){
        	   if(data.STATUS == true){
        		   swal("Playlist Was Changed", "You clicked the button!", "success");
        		   myClear();
        		   mystartPlaylist();
        		   $("#form-create-playlist1").bPopup().close();
        	   }
           	
           },
           error: function(data){
           	alert("update unsuccess data");
           }
       });	     	
	} 
		function myClear() {
			$("#listid").val("");
			$("#listname").val("");
			$("#playlistdescription").val("");
			$("#playlistcategory").val("");
			$("#color").val("FFFFFF");
			$("#file").click();
			$("#oimg").val("");
		}
		
		///////validation create and update playlist///////////
		function validatPlaylistname(){
			var name= $("#listname").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{3,100}$/;
			    if(!characterReg.test(name)) {
			    	$("#listname").css("border", "solid 1px red");
			    	$("#checklistname").text("Require and at least 3 charactors less than 100 charactors");
			    	   return false;
			    
			    }else{
			    	$("#listname").css("border", "solid 1px green");
			    	$("#checklistname").text("");
			    		return true;
			    }
		}
		
		function validatPlaylistnameDes(){
			var name= $("#playlistdescription").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{3,100}$/;
			    if(!characterReg.test(name)) {
			    	$("#playlistdescription").css("border", "solid 1px red");
			    	$("#checkplaylistdescription").text("Require and at least 3 charactors less than 100 charactors");
			    	   return false;
			    
			    }else{
			    	$("#playlistdescription").css("border", "solid 1px green");
			    	$("#checkplaylistdescription").text("");
			    		return true;
			    }
		}
		
		
		
	</script>
  
               
	
</body>
</html>
