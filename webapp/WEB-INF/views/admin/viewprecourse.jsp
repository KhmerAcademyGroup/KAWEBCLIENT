<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.google.gson.*, java.util.ArrayList" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.dto.PreCourse, java.util.StringTokenizer"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Vuthea Chheang">
		<title>View Pre-Course | Khmer Academy</title>
 
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
					
				<br/>				
					<div class="panel panel-primary">
							  <div class="panel-heading">
								<h3 class="panel-title">View Pre-Course </h3>
							  </div>
							  <div class="panel-body">
					
					
					<div class="row">
					
					<div class="col-sm-12">
					
					<div>
						<form class="form-horizontal" id="myformvalidator1" action="editprecourse.act" method="post">	
										<input type="hidden" id="pid" name="id" />
										<div class="col-sm-6">
										<div class="form-group">
											<label class="col-lg-3 control-label">Name: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text"  class="form-control" name="username" id="pusername" required/>
											</div>
										</div>
		
										<div class="form-group">
											<label class="col-lg-3 control-label">Email: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="email"  class="form-control" name="email" id="pemail" required/>
											</div>
										</div>
										<div class="form-group">
											<label class=" col-lg-3 control-label">University: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text"  class="form-control" name="university" id="puniversity" required/>
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
															<input type="radio" name="gender" value="male" required data-bv-notempty-message="The gender is required" data-bv-field="gender" > Male
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="gender" required value="female"> Female
														</label>
													</div>
											
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-3 control-label">DOB: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text"  id="pdob" name="dateofbirth" data-date-format="yyyy-mm-dd" class="form-control datepicker" id="calendar" required>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-3 control-label">Address: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text"name="address" class="form-control" id="paddress" required>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-3 control-label">Tel: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="phonenumber" id="pphonenumber" required />
											</div>
										</div>
						
										<div class="form-group">
												<label class="col-lg-3 control-label">Java: </label>
												<div class="col-lg-9">
													<select name="java" class="form-control" id="pjava">
														<option>Please Select Shift</option>
														<option value="morning">Morning (8:00am - 10:00am)</option>
														<option value="afternoon">Afternoon (02:00pm - 04:00pm)</option>
														<option value="evening">Evening (06:00pm - 08:00pm)</option>
														<option value="weekend">Weekend (08:00am - 11:00 am) - (02:00pm - 5:00pm)</option>
													</select>
											
											</div>
										</div>	
										<div class="form-group">
												<label class="col-lg-3 control-label">Web: </label>
												<div class="col-lg-9">
													<select name="web" class="form-control" id="pweb">
														<option>Please Select Shift</option>
														<option value="morning">Morning (8:00am - 10:00am)</option>
														<option value="afternoon">Afternoon (02:00pm - 04:00pm)</option>
														<option value="evening">Evening (06:00pm - 08:00pm)</option>
														<option value="weekend">Weekend (08:00am - 11:00 am) - (02:00pm - 5:00pm)</option>
													</select>
											
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-3 control-label">Payment: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="number" class="form-control" name="payment" id="ppayment"  required/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Comment: </label>
											<div class="col-lg-9">
												<textarea name="comment" class="form-control" id="pcomment"></textarea>
											</div>
										</div>
						
										</div>							
										<!-- Button Post -->
										<div class="form-group">
											<div class="col-lg-9 col-lg-offset-3">
												<a href="listprecourse.act" class="btn btn-default btn-perspective">Cancel</a>
												<button type="submit" id="msubmit" class="btn btn-info btn-perspective" >Save</button>
											</div>
										</div>
										<!-- Button Post -->
										
													
																
										<!-- /From -->
										</form>	
					</div><!-- /.the-box -->
					
		
					</div><!-- /.col-sm-8 -->
						
				
					</div><!-- /.row -->
					</div>
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
		
	  	<% if(request.getAttribute("preCourse")!=null){
			PreCourse pre= (PreCourse)request.getAttribute("preCourse");	
			%>
	  		
			<script>
			document.getElementById("pid").value = <%=pre.getId()%>
			document.getElementById("pusername").value = "<%=pre.getUsername()%>";
			document.getElementById("pemail").value = "<%=pre.getEmail() %>";
			document.getElementById("puniversity").value = "<%=pre.getUniversity() %>";
			document.getElementById("paddress").value = "<%=pre.getPob() %>";
			document.getElementById("pphonenumber").value = "<%=pre.getTelephone() %>";
			document.getElementById("pdob").value = "<%=new SimpleDateFormat("yyyy-MM-dd").format(pre.getDob()) %>";
			document.getElementById("ppayment").value = "<%=pre.getPayment() %>";
			document.getElementById("pcomment").value = "<%=pre.getComment() %>";
			$("input[name=gender][value=<%= pre.getGender()%>]").attr('checked', true);
			$('#pjava option[value=<%=pre.getJavaCourse()%>]').prop('selected',true);
			$('#pweb option[value=<%= pre.getWebCourse()%>]').prop('selected',true);
			$('#year option[value=<%= pre.getYear()%>]').prop('selected',true);
			</script>
		<%} %> 
	</body>
</html>