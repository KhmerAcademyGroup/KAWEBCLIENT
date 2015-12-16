<%@page import="model.dto.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	User usr= null;
	int usrid = 0;
	if(session.getAttribute("ka_user")!=null){
		usr= (User)session.getAttribute("ka_user");
		usrid = usr.getUserid();
	}

%>
<!DOCTYPE html>
<html>
	<head>
	
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">
		<title>Khmer Academy Forum</title>
 

		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link href="assets/mstyle.css" rel="stylesheet"> -->
		
		
		
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
 
 		
 		<!-- Google free font here -->
		<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Asap:700' rel='stylesheet' type='text/css'>
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
		<div class="container col-lg-offset-1 col-lg-10 col-sm-12" >
		
		
			<div class="row">
			<ol class="breadcrumb default square rsaquo sm">
						<li><a href="../"><i class="fa fa-home"></i></a></li>
						<li><a href="index.act">Forum</a></li>
						<li class="active">Topic</li>
			</ol>
			<!-- <hr class="hr-style-one"/> -->
			</div>		
			<div class="row" >
				<div id="getQuestion"> </div>
			
				<div class="col-xs-12 col-sm-12">
				<%if(session.getAttribute("ka_user")!=null){ %>
					<div class="col-lg-offset-1 col-sm-11">
					<button class='btn btn-info pull-right' id='answer-button' style="z-index: 99999;">Answer</button>
					<button class='btn btn-danger' id='answer-post' style="z-index: 99999; display:none;">Answer</button>
					
					</div>
				
					<div class="col-sm-12">
					<div id='answer'>
						<div class="form-group">
											<div class="col-lg-11 col-lg-offset-1">												
												<div class="summernote" id="txtdetail" style="width: 100%;">												
												</div>	
												<span style="color: red" id="errordis"></span>											
											</div>
										</div>
					</div>
				</div>
				<%} %>
			
			</div>
			<div class="row">
			<div  id="getAnswer"> </div>
			</div>
			
			<!-- BEGIN FOOTER -->
				<jsp:include page="_footer.jsp"></jsp:include>
		<!-- END FOOTER -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->			
		</div>
			
		
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
			$(document).ready(function(){
				$("#answer").css("display","none");
				$("#answer-button").click(function(){
					$("#answer-button").attr('disabled','disabled');
					$("#answer").slideToggle(function(){
												$("#answer-button").removeAttr('disabled');
												if($("#answer-button").html() == "Answer"){
													$("#answer-button").html("Cancel");
													$("#answer-post").css("display","inline");
												}else{
													$("#answer-button").html("Answer");
													$("#answer-post").css("display","none");
												}
											});
				});
			});
		</script>
		
		<!--  GETTING QUESTION DATA -->
		<script src="assets/js/script/question.js"></script>
		<script>
			$(document).ready(function() {
				$.post('getquestion.act?q=<%=request.getParameter("q")%>', {
				}, function(data) {
					$("#getQuestion").html(getQuestion(data));
					$("#getAnswer").html(getAnswer(data , <%= usrid %> )  );
				});
				
				<%if(session.getAttribute("ka_user")!=null){%>
				$("#answer-post").click(function(){
					
					if($(".note-editable").html().trim()!=""&&$(".note-editable").html().trim()!="<br>")
					{
						$.post('addanswerquestion.act',{
							userid : <%=usrid %>,
							categoryid : catid,
							answerdetail : $(".note-editable").html(),
							txttitle : $("#txttitle").text(),
							parentid : parentid,
							taganswer: taganswer
							}, function (data){
								$.post('getquestion.act?q=<%=request.getParameter("q")%>', {
								}, function(data) {
									$("#getQuestion").html(getQuestion(data));
									$("#getAnswer").html(getAnswer(data , <%= usrid %>));
								});
								$(".note-editable").text("");
							
						});
						$("#errordis").text("");
					}else{
						$("#errordis").text("Text can not empty!");
					}
					
					
					
					
				});
				<%}%>
			});
		</script>
			<script type="text/javascript">
		
			
		$(function() {
			$('.summernote').summernote(
					{
						height : 200,
						toolbar : [
								
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

			

		});
	</script>
	</body>
</html>				