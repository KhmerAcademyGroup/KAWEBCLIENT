<%@page import="model.dto.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
 <%@page import="Controller.Common_method"%>
<%@page import="model.dto.University"%>
<%@page import="model.dto.Department"%>
<%@page import="java.util.ArrayList"%>
<%
 		ArrayList<Department> listDepartment = (ArrayList<Department>)request.getAttribute("listDepartment");
 		ArrayList<University> listUniversity = (ArrayList<University>)request.getAttribute("listUnivsersity");
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
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer IT Study , IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">
		<title>User Information | Khmer Acedemy</title>
 
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
				
				
				<div class="container-fluid">
					<!-- Begin page heading -->
					<!-- <h1 class="page-heading">User Information <small></small></h1> -->
					<h1></h1>
					<!-- End page heading -->
				
					<div class="row">
						
						<div class="col-sm-12">
						
							<div class="panel panel-primary">
								  <div class="panel-heading">
											
										User Information:
										
								  </div>
								  
								  <div class="panel-body">
												 <!-- Form Khmer -->
																																			
										<form class="form-horizontal" enctype="multipart/form-data" id="myformvalidator1" action="updateusrinfo.act" method="post">	
										<div class="col-sm-8">
										<div class="form-group">
											<label class="col-lg-3 control-label">Username<span class="required">*</span></label>
											<div class="col-lg-5">
												<input type="text" class="form-control" name="username" value="<%if(usr.getUsername()!=null){out.print(usr.getUsername());}%>"/>
											</div>
										</div>
		
										<div class="form-group">
											<label class="col-lg-3 control-label">Email<span class="required">*</span></label>
											<div class="col-lg-5">
												<input type="text" class="form-control" name="email" value="<%if(usr.getEmail()!=null){out.print(usr.getEmail());}%>" disabled/>
											</div>
										</div>
										
										<%-- <div class="form-group">
											<label class="col-lg-3 control-label">School<span class="required">*</span></label>
											<div class="col-lg-5">
												<input type="text" class="form-control" name="school" value="<%if(usr.getSchool()!=null){out.print(usr.getSchool());}%>"/>
											</div>
										</div> --%>

										<%
											if(listDepartment != null) {
										%>
										<div class="form-group">
											<label class="col-lg-3 control-label">Department<span
												class="required">*</span></label>
											<div class="col-lg-5">
												<select name="department" class="form-control">
													<%
														for (int i = 0; i < listDepartment.size(); i++) {
																Department department = (Department) listDepartment.get(i);
																System.out.println(department.getDepartmentName());
													%>
													<option value="<%=department.getDepartmentId()%>"><%=department.getDepartmentName()%></option>
													<%
														}
													%>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class=" col-lg-3 control-label">University<span
												class="required">*</span></label>
											<div class="col-lg-5">
												<select name="university" class="form-control">
													<%
														for (int i = 0; i < listUniversity.size(); i++) {
																University university = (University) listUniversity.get(i);
													%>
													<option value="<%=university.getUniversityId()%>"><%=university.getUniversityName()%></option>
													<%
														}
													%>
												</select>
											</div>

										</div>
										<%} %>
										<div class="form-group">
												<label class="col-lg-3 control-label">Gender</label>
												<div class="col-lg-5">
													<div class="radio">
														<label>
															<input type="radio" name="gender" value="male" required="" data-bv-notempty-message="The gender is required" data-bv-field="gender" <%if(usr.getGender()!=null) if(usr.getGender().toLowerCase().contains("male")) {out.print("checked");} %>> Male
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="gender" value="female" <%if(usr.getGender()!=null) if(usr.getGender().toLowerCase().contains("female")) {out.print("checked");} %>> Female
														</label>
													</div>
											
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-3 control-label">Date of birth<span class="required">*</span></label>
											<div class="col-lg-5">
												<input type="text" value="<% if(usr.getDateofbirth()!=null){out.print( new SimpleDateFormat("dd-MM-yyyy").format(usr.getDateofbirth()) );}%>" name="dateofbirth" data-date-format="dd-mm-yyyy" class="form-control datepicker" id="calendar" >
											</div>
										</div>
										
										
										
										<div class="form-group">
											<label class="col-lg-3 control-label">Phone number<span class="required">*</span></label>
											<div class="col-lg-5">
												<input type="text" class="form-control" name="phonenumber" value="<%if(usr.getPhonenumber()!=null){out.print(usr.getPhonenumber());} %>" />
											</div>
										</div>
						
										
										<div class="form-group">
											<label class="col-lg-3 control-label">User Type<span class="required">*</span></label>
											<div class="col-lg-5">
												<input type="text" class="form-control" name="usertype" disabled value="<% if(usr.getUsertypeid()==5){out.print("Administrator");}else if(usr.getUsertypeid()==3){out.print("Editor");}else if(usr.getUsertypeid()==2){out.print("Subscriber");}else if(usr.getUsertypeid()==4){out.print("Modirator");}else if(usr.getUsertypeid()==1){out.print("Visitor");} %>">
												
										</div>
										</div>	
										<div class="form-group">
											<label class="col-lg-3 control-label">Current Password<span class="required">*</span></label>
											<div class="col-lg-5">
												<input type="password" class="form-control" name="oldpassword" id="oldpassword" onchange="checkoldpassword()"/>
											</div>
											<small id="pwdvalid" style="display: block; color: red;"  class="help-block"></small>
										</div>
										</div>
										<div class="col-sm-4">
																			
											<div class="col-xs-6 col-md-7">
												<div class="imgstyle"  >
												<a title="Image title here" href="../uploads/<%= usr.getUserimageurl() %> " class="zooming">
														<img id="photoimg" class="mfp-fade item-gallery img-responsive" alt="Image" src="../uploads/<%= usr.getUserimageurl() %>" >
												</a>
												</div>
												<div style="height:10px"></div>
													<div class="form-group">
														<div class="input-group">
															<input type="text" readonly="" class="form-control">
														<span class="input-group-btn">
														<span class="btn btn-default btn-file">
																Browse ... <input type="file" name="photo" id="photoimage" value="" onchange="return ValidateFileUpload()">																							
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
												<button id="msubmit" class="btn btn-info btn-perspective" >Update</button>
											</div>
										</div>
										<!-- Button Post -->
										
													
																
										<!-- /From -->
										</form>								
									
									</div>
								  <!-- /.panel-body -->
							  <div class="panel-footer">
							  
							  	
							  
							  </div>
							</div>
							
							</div><!-- /.panel .panel-info -->
						</div>
					

				
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
		
		
		<script src="assets/plugins/validator/example.js"></script>
		<script src="assets/js/myvalidator.js"></script>
		
		<!-- MAIN APPS JS -->
		<script src="assets/js/apps.js"></script>
		
		<script>
		function checkoldpassword(){
			
			$.post("checkoldpassword.act" ,
					{
				
				oldpassword : $("#oldpassword").val()
				
					},
					function(data){
						if(data=="Success"){
							$("#pwdvalid").text("");
							$("#msubmit").attr("type", "submit");								
							
							
							
						}else{
							
							$("#oldpassword").val("");
							$("#pwdvalid").text("Password Not Valid. Please Entry Again!");
							$("msubmit").disable();
							//alert("no");
							//document.getElementById("emailvalid").innerHTML= "Duplicated Email. Please Try New Email." ;
						}
					}
			
			);				
		}
		
		</script>
		<script src="assets/js/close_sidebar.js"></script>
		
	</body>
</html>