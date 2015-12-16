<%@page import="model.dto.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
 <%@page import="Controller.Common_method"%>
<%@page import="model.dto.University"%>
<%@page import="model.dto.Department"%>
<%@page import="java.util.ArrayList"%>
<%
		User usr= new User();
		if( session.getAttribute("ka_user") != null){
			
			 usr = (User) session.getAttribute("ka_user");
			}
		
	 %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer IT Study , IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">
		<title>Precourse Information | Khmer Acedemy</title>
 
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
		
		<style>
			.required{
				color: red;
			}
		</style>
	
		<SCRIPT type="text/javascript">
		
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
        }
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
</SCRIPT> 
	
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
				
				
				<div class="container">
					<!-- Begin page heading -->
					<!-- <h1 class="page-heading">User Information <small></small></h1> -->
					<h1></h1>
					<!-- End page heading -->
				
					<div class="row">
						
						<div class="col-sm-12">
							<div class="alert alert-success square fade in alert-dismissable" id="alertsuccess" style="display: none;">
								  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								  <strong>Well done!</strong> You successfully registered Pre-Course.
							</div>
							<%if(request.getAttribute("afteradd")!=null){
							%>
								<script>
									$("#alertsuccess").show();
								</script>
							<%}
							%>
							
							<div class="panel panel-primary">
								  <div class="panel-heading">
											
										Pre-Course Register Information:
										
								  </div>
								  
								  <div class="panel-body">
								  
								  	<%if( session.getAttribute("ka_user") != null){ %>
										<!-- Form Khmer -->																						
										<form class="form-horizontal" action="addprecourse.act" method="post" id="frmaddprecourse">	
										<div class="col-sm-6">
										<div class="form-group">
											<label class="col-lg-3 control-label">Name: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" required class="form-control" id="username" name="username" value="<%if(usr.getUsername()!=null){out.print(usr.getUsername());}else{out.print("");}%>"/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Tel: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" required class="form-control" id="phonenumber" name="phonenumber" value="<%if(usr.getPhonenumber()!=null){out.print(usr.getPhonenumber());}else{out.print("");} %>" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Email: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="email" required class="form-control" id="email" name="email" value="<%if(usr.getEmail()!=null){out.print(usr.getEmail());}else{out.print("");}%>"/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Date Of Birth: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" required value="<% if(usr.getDateofbirth()!=null){out.print( new SimpleDateFormat("yyyy-MM-dd").format(usr.getDateofbirth()) );}else{out.print("");}%>" name="dateofbirth" data-date-format="yyyy-mm-dd" class="form-control datepicker" id="calendar" >
											</div>
										</div>
										<div class="form-group">
											<label class=" col-lg-3 control-label">University: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="university" name="university" required/>
											</div>

										</div>
										<div class="form-group">
												<label class="col-lg-3 control-label">Year: </label>
												<div class="col-lg-9">
													<select name="year" class="form-control" id="year">
														<option value="G">Graduate</option>
														<option value="4">Year 4</option>
														<option value="3">Year 3</option>
														<option value="2">Year 2</option>
														<option value="1">Year 1</option>													
													</select>
											
											</div>
										</div>
										<div class="form-group">
												<label class="col-lg-3 control-label">Gender: <span class="required">*</span></label>
												<div class="col-lg-5">
													<div class="radio">
														<label>
															<input type="radio" name="gender" value="male" required data-bv-notempty-message="The gender is required" data-bv-field="gender" <%if(usr.getGender()!=null) if(usr.getGender().toLowerCase().contains("male")) {out.print("checked");} %>> Male
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="gender" required value="female" <%if(usr.getGender()!=null) if(usr.getGender().toLowerCase().contains("female")) {out.print("checked");} %>> Female
														</label>
													</div>
											
											</div>
										</div>							
										
										<div class="form-group">
											<label class="col-lg-3 control-label">Address: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" id="address" name="address" class="form-control" required>
											</div>
										</div>
										
										<div class="form-group">
												<label class="col-lg-3 control-label">Java: </label>
												<div class="col-lg-9">
													<select name="java" class="form-control" id="java">
														<option value="">Please Select Shift</option>
														<option value="morning">Morning (8:00am - 10:00am)</option>
														<option value="afternoon">Afternoon (02:00pm - 04:00pm)</option>
														<option value="evening">Evening (06:00pm - 08:00pm)</option>
													<!-- 	<option value="weekend">Weekend (08:00am - 11:00 am) - (02:00pm - 5:00pm)</option> -->
													</select>
											
											</div>
										</div>	
										<div class="form-group">
												<label class="col-lg-3 control-label">Web: </label>
												<div class="col-lg-9">
													<select name="web" class="form-control" id="web">
														<option value="">Please Select Shift</option>
														<option value="morning">Morning (8:00am - 10:00am)</option>
														<option value="afternoon">Afternoon (02:00pm - 04:00pm)</option>
														<option value="evening">Evening (06:00pm - 08:00pm)</option>
														<!-- <option value="weekend">Weekend (08:00am - 11:00 am) - (02:00pm - 5:00pm)</option> -->
													</select>
											
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Comment: </label>
											<div class="col-lg-9">
												<textarea name="comment" class="form-control" id="comment"></textarea>
											</div>
										</div>
										<div class="form-group" style="display:none;" id="paymentp">
											<label class="col-lg-3 control-label">Payment: </label>
											<div class="col-lg-9">
												<button type="button" class="btn btn-danger btn-perspective" id="btnpayment">Unpaid</button>
											</div>
										</div>
										<!-- Button Post -->
										<div class="form-group" id="btnaction">
											<div class="col-lg-9 col-lg-offset-3">
												<button type="reset" class="btn btn-default btn-perspective">Cancel</button>
												<button id="msubmit" class="btn btn-info btn-perspective" type="submit">Save</button>
											</div>
										</div>
										<!-- Button Post -->
										</div>	
										<!-- /From -->
										</form>	
										
										<div class="col-sm-6">
											<a href="#" data-toggle="modal" data-target="#precourseevent"><img class="img-responsive" src="http://khmeracademy.org/sources/precourses.png"/></a>
										</div>
						
										<%}else{ %>
										
										
										<div class="col-sm-12">
											<div>
												<a href="#" data-toggle="modal" data-target="#precourseevent"><img class="img-responsive" src="http://khmeracademy.org/sources/precourses.png"/></a>
											</div>
											<div>
												<div class="col-sm-6 inline-popups">
													<a data-toggle="dropdown" data-effect="mfp-zoom-in" class="dropdown-toggle btn btn-info btn-perspective pull-right"  href="#form-login" >
														<strong><%= Common_method.getBundleValue(request, "lang", "login") %></strong>
													</a>
													
												</div>
							
												<div class="col-sm-6 inline-popups" >
												<span style="margin-right: 20px;">OR</span>
													<a data-toggle="dropdown" data-effect="mfp-zoom-in" class="dropdown-toggle btn btn-danger btn-perspective"  href="#form-register" >
														<strong><%= Common_method.getBundleValue(request, "lang", "signup") %></strong>
													</a>
												</div>
											</div>										
										</div>
										
										
										<%} %>						
																	
									
									</div>
								  <!-- /.panel-body -->
							  <div class="panel-footer">
							  </div>
							</div>
							</div><!-- /.panel .panel-info -->
						</div>
				</div><!-- /.container-fluid -->
				
				<!-- Modal -->
				<div id="precourseevent" class="modal fade" role="dialog">
				  <div class="modal-dialog">
				
				    <!-- Modal content-->
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Pre-Course</h4>
				      </div>
				      <div class="modal-body">
				        <img class="img-responsive" src="http://khmeracademy.org/sources/precourses.png"/>
				      </div>
				    
				    </div>
				
				  </div>
				</div>
				
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
		
		
		<script src="assets/plugins/validator/example.js"></script>
		<script src="assets/js/myvalidator.js"></script>
		
		<!-- MAIN APPS JS -->
		<script src="assets/js/apps.js"></script>

		<script src="assets/js/close_sidebar.js"></script>
		<script src="assets/js/moment.js"></script>
		
		<%if( session.getAttribute("ka_user") != null){ %>
			<script>
				$.post("checkprecourses.act",{
					uid : <%= usr.getUserid()%>
				},function(data){
					if(data=="Success"){
						$.post("getprecoursestudent.act",{
							uid : <%= usr.getUserid()%>
						},function(data){				
							$("#username").val(data.username);
							
							$("#email").val(data.email);
							
							$("#phonenumber").val(data.telephone);
							
							$("#calendar").val(moment(data.dob).format('YYYY-MM-DD'));
							
							$("#university").val(data.university);
							
							$("#address").val(data.pob);
							
							$("#comment").val(data.comment);
							
							$("#java").val(data.javaCourse);
							
							$("#web").val(data.webCourse);
							
							$("#year").val(data.year);
							
							$("input[name=gender][value='"+data.gender+"']").prop("checked",true);
							
							
							if(data.payment >0){
								disableform();
								$("#btnpayment").text("Paid");
								$("#btnpayment").removeClass("btn-danger");
								$("#btnpayment").addClass("btn-success");
							}else{
								$("#frmaddprecourse").attr("action","updateprecourse.act");
								$("#msubmit").text("Update");
								$('<input>').attr({
								    type: 'hidden',
								    id: 'userid',
								    name: 'userid',
								    value: '<%= usr.getUserid()%>'
								}).appendTo('#frmaddprecourse');
								$('<input>').attr({
								    type: 'hidden',
								    id: 'precourseid',
								    name: 'precourseid',
								    value: data.id
								}).appendTo('#frmaddprecourse');
							}							
							$("#paymentp").show();
						});	
					}
				});
			
				function disableform(){
					$("#username").attr("disabled", true);
					$("#email").attr("disabled", true);
					$("#phonenumber").attr("disabled", true);
					$("#calendar").attr("disabled", true);
					$("#address").attr("disabled", true);
					$("#university").attr("disabled", true);
					$("#comment").attr("disabled", true);
					$("#java").attr("disabled", true);
					$("#web").attr("disabled", true);
					$("#year").attr("disabled", true);
					$("input[name=gender]").attr("disabled", true);
					$("#btnaction").remove();
					$("#frmaddprecourse").removeAttr('action');
				}
			
			</script>
		
		
		<%} %>
		
		
		
		
	</body>
</html>