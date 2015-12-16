<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
<meta name="author" content="Khmer Academy">
<title>Khmer Academy Forum | Add Question</title>


<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="assets/mstyle.css" rel="stylesheet"> -->



<!-- PLUGINS CSS -->
<link href="assets/plugins/weather-icon/css/weather-icons.min.css"
	rel="stylesheet">
<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet">
<link href="assets/plugins/magnific-popup/magnific-popup.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.theme.min.css"
	rel="stylesheet">
<link href="assets/plugins/owl-carousel/owl.transitions.min.css"
	rel="stylesheet">
<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet">
<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet">
<link href="assets/plugins/datepicker/datepicker.min.css"
	rel="stylesheet">
<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link href="assets/plugins/validator/bootstrapValidator.min.css"
	rel="stylesheet">
<link href="assets/plugins/summernote/summernote.min.css"
	rel="stylesheet">
<link href="assets/plugins/markdown/bootstrap-markdown.min.css"
	rel="stylesheet">
<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css"
	rel="stylesheet">
<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
<link href="assets/plugins/slider/slider.min.css" rel="stylesheet">

<!-- MAIN CSS (REQUIRED ALL PAGE)-->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">


<!-- Google free font here -->
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Asap:700' rel='stylesheet'
	type='text/css'>
<script src="//cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>

<body class="tooltips">




	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper" style="background-color: #fff;">

		<!-- Header -->

		<jsp:include page="_header.jsp"></jsp:include>

		<!--  /Header -->
		<div class="container">


			<div class="row">
				<ol class="breadcrumb default square rsaquo sm">
					<li><a href="../"><i class="fa fa-home"></i></a></li>
					<li><a href="index.act">Forum</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</div>
			<div>

				<button class="btn btn-success btn-perspective pull-left"
					style="font-size: 12px;">Ask Question</button>
				 <div class="pull-right">
				 	<a class="btn btn-primary btn-perspective "style="font-size: 12px;" href="list.act">Questions</a>
					<!-- <button class="btn btn-primary btn-perspective "
						style="font-size: 12px;">Questions</button>
					<button class="btn btn-primary btn-perspective "
						style="font-size: 12px;">Users</button> -->
				</div> 
				<br> <br>

			</div>




			<div class="row">
				<div>
					<div class="panel panel-forum panel-primary">
						<div class="panel-heading info">
							<i class="fa fa-pencil"></i> Post Question
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-9">
									
									<form class="form-horizontal" id="addquestionsubmit">

										<div class="form-group ">
											<label class="col-lg-1 control-label">Title</label>
											<div>
												<div class="col-lg-7">
													<input type="text" name="txttitle" id="txttitle" class="form-control"  required >
												</div>
												<div class="col-lg-4">
													<select data-placeholder="Category"  
														class="form-control chosen-select" tabindex="2" 
														name="txtcategoryid" id="txtcategoryid">
													
														<%
															ArrayList<String[]> cats = (ArrayList)request.getAttribute("categories");
															for(int i=0; i<cats.size(); i++){
																
														%>
															<option value="<%= cats.get(i)[0] %>"><%= cats.get(i)[1] %></option>
														<%
															}
														%>
													
													
													
													</select>
												</div>
											</div>
										</div>

										<div class="form-group">
											<div class="col-lg-11 col-lg-offset-1">
												<textarea class="summernote" name="txtdetail" id="txtdetail" >
												
												</textarea>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-lg-1 control-label">Tag</label>
											<div class="col-lg-11" >
												<select data-placeholder="Choose Tag" required multiple class="chosen-select-width" tabindex="16" name="txttag" id="txttag">
													
													<%
														String[] tags = (String[])request.getAttribute("tags");
														for(int i=0; i<tags.length; i++){
															
													%>
														<option value="<%= tags[i] %>"><%= tags[i] %></option>
													<%
														}
													%>
													
												</select>


											</div>
										</div>

										<div class="form-group ">
											<div class="col-lg-5 col-lg-offset-1">
												<div class="checkbox">
													<input type="checkbox" name="acceptTerms" 
														data-bv-field="acceptTerms"><i
														style="display: none; top: 0px;" class="form-control"
														data-bv-field="acceptTerms"></i> Accept the terms and
													policies
												</div>
												<small style="display: none;" data-bv-validator="notEmpty"
													class="help-block">You have to accept the terms and
													policies</small>
											</div>
										</div>

										<div class="form-group">
											<div class="col-lg-9 col-lg-offset-1">
												<button class="btn btn-primary" type="submit" id="btnask">Submit</button>
											</div>
										</div>
									</form>
								</div>
								<div class="col-sm-3">
									<div id="how-to-title" class="module newuser sidebar-help">
										<h4>របៀបសួរ</h4>
										<p>
											<b>យើងលើកទឹកចិត្តក្នុងការស្វែងរក មុន​នឹង​សួរ​សំណួរ</b>
										</p>
										<p>
											ការ​សួរ​ត្រូវវាយចំណងជើង ជ្រើសរើស Category បន្ទាប់​មក​ចុច​វាយអត្ថបទ​សំណួរ ហើយ​ចុង​ក្រោយ ចុចរើស Tag ណា ដែល​គិត​ថា​ពាក់ព័ន្ធ
										</p>
										
										<p>
											ប្រសិន​បើ​មាន​ចម្ងល់​ សូមទាក់ទង​អភិបាល នៃគេហទំព័រ
										</p>
										
									</div>
								</div>
							</div>
						</div>
						<!-- /.panel-body -->

					</div>
					<!-- /.panel panel-default panel-block-color -->
				</div>
				<!-- /.col-sm-4 -->

			</div>


			<!-- start content -->




		</div>
		<!-- BEGIN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
		<!-- END FOOTER -->
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

	<!-- MAIN APPS JS -->
	<script src="assets/js/apps.js"></script>


	<script type="text/javascript">
		$(function() {
			$('.summernote').summernote(
					{
						height : 200,
						toolbar : [
								//['style', ['style']], // no style button
								[
										'style',
										[ 'bold', 'italic', 'underline',
												'clear' ] ],
								[ 'fontsize', [ 'fontsize' ] ],
								[ 'color', [ 'color' ] ],
								[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
								[ 'height', [ 'height' ] ],
								[ 'codeview', [ 'codeview' ] ],
						
						]
					});
			
			$("#addquestionsubmit").submit(function(){
				
				var items = [];
				$('#txttag option:selected').each(function(){ items.push($(this).val()); });
				var result = items.join(', ');	
				
				
				$.post('addpost_pro.act',{
					txttitle : $("#txttitle").val(),
					txtcategoryid : $("#txtcategoryid").val(),
					txttage : result,
					txtdetail : $(".note-editable").html()
					
					}, function (data){
						window.location.href = "index.act";
					
				});
			});
			
			
			
		});
	</script>
</body>
</html>
