<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
//     	uid
//     	cateid
    %>
<!DOCTYPE html>
<html>
	<head>
	
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="We share Knowledge with IT lessons, IT Traing to students. Enjoy with Khmer Academy!">
		<meta name="keywords" content="Khmer Academy, Khmer Learning Online, Khmer Studying IT, IT Traning in Cambodia, Khmer Forum, IT Chatting">
		<meta name="author" content="Khmer Academy">
		<title>Questions | Khmer Academy</title>
 

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
			<div class="container" >
		
		
			<div class="row">
			<ol class="breadcrumb default square rsaquo sm">
						<li><a href="../"><i class="fa fa-home"></i></a></li>
						<li><a href="index.act">Forum</a></li>
						<li class="active">List Questions by category</li>
			</ol>
			</div>
			<div>
					
				<a href="askquestion.act" class="btn btn-success btn-perspective pull-left" style="font-size: 12px;">Ask Question</a>
				<div class="pull-right">
				<a class="btn btn-primary btn-perspective "style="font-size: 12px;" href="list.act">Questions</a>
				<!-- <button class="btn btn-primary btn-perspective "style="font-size: 12px;">Questions</button>
				<button class="btn btn-primary btn-perspective "style="font-size: 12px;">Users</button> -->
				</div>
				<br>
				<br>
					
			</div>		
			
			
			
			 <!-- start content -->
			
			
			
			<div class="row">
			 <div id="content-forum">
				<div id="page-body">
				<main role="main">

				 <div class="panel panel-forum panel-info">
					<div class="panel-heading success">
					  បញ្ជីសំណួរ
					</div>
					<div class="panel-inner">
					<table  class="footable table table-striped table-primary table-hover default footable-loaded">
					
					<!-- <thead>
						<tr>
							<th data-class="expand" class="footable-first-column">Title</th>
							<th data-hide="phone" class="large110" >Statistics</th>
							<th data-hide="phone" class="large20 footable-last-column">Last post</th>
						</tr>
					</thead> -->		
				
					<tbody id="tb">
					
					</tbody>
					
					<tfoot>
						<tr>
							<td  colspan="3" style="text-align: center;display: none;"  id="divimg" >
								<img src="assets/img/load_more.gif" width="100px">
							</td>
						</tr>
						<tr id="divbtload">
							<td colspan=3>
								<button name="btmore" class="btn btn-primary btn-perspective"> Load More </button>
							</td>
						</tr>
					</tfoot>
					
					</table>
					</div>
				    </div>
					
					
					
					</main>
					</div> <!-- page-body id in header -->
				  </div> <!-- content-forum in header -->
				
				</div>	
				
				
				
				<!-- Static footer -->
				
				<!-- 
						
						<table name="errortitle">
    
</table>
<button name="new-title">New</button>
				
				-->

		</div>
			<!-- BEGIN FOOTER -->
				<jsp:include page="_footer.jsp"></jsp:include>
		<!-- END FOOTER -->
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
		
		<!-- MAIN APPS JS -->
		<script src="assets/js/apps.js"></script>
		<script src="assets/js/script/list_question.js"></script>
		<script type="text/javascript">
		
		<%
			String usrid = "";
			String cateid = "";
			String keyword ="";
			String tag="";
			if(request.getParameter("cateid") != null){
				cateid = request.getParameter("cateid");
			}
			if(request.getParameter("uid") != null){
				usrid = request.getParameter("uid");
			}
			if(request.getParameter("keyword") != null){
				keyword = request.getParameter("keyword");
			}
			if(request.getParameter("tag")!=null){
				tag = request.getParameter("tag");
			}
		%>
			var hasNext = false;
			var next = 1;
			var current = 1;
		
			$(document).ready(function() {
				$.post("listquestion.act",
					{
						userid : "<%= usrid %>" ,
						cateid : "<%= cateid %>" ,
						keyword : "<%= keyword %>",
						tag : "<%=tag%>"
					},function(data){
						$("#tb").html(getQestion(data));
						hasNext = data.h;
						next = data.n;
						current = data.c;
						
						//console.log(hasNext +" " + " " + next +" " + current);
						if(hasNext == false){
							$("#divbtload").css("display","none");
						}else{
							$("#divbtload").css("display","table-cell");
						}
				});
			});
			
			
			
			jQuery(document).ready(function() {
				
				  $('button[name="btmore"]').on('click', function(){
					 $("#divimg").css("display","table-cell");
					  
					 
					 $.post("listquestion.act",
								{
									userid : "<%= usrid %>" ,
									cateid : "<%= cateid %>" ,
									keyword : "<%= keyword %>" ,
									tag: "<%= tag %>",
									page: next
									
								},function(data){
									
									hasNext = data.h;
									next = data.n;
									current = data.c;
									
									//console.log(hasNext +" " + " " + next +" " + current);
									
									var q = data.q;
									//alert(q.length)
									if(q.length != 0){
										for(i=0;i<q.length;i++){
								  		 	$('#tb').append("<tr>"+
								  		 						"<td class='expand footable-first-column'><span class='footable-toggle'></span><span class='pull-left' style='color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;'><span><strong>"+q[i].vote+"</strong></span> <br>   <span style='font-size: 12px;'>Votes</span></span><i title='No unread posts' class='row-icon-font-mini '></i><span class='desc-wrapper'><a style='color: #428bca;' href='question.act?q="+q[i].commentid+"' data-original-title='' title=''> "+ q[i].title +" </a><br><i data-original-title='Attachment(s)' data-placement='top' rel='tooltip' class='fa fa-paperclip fa-flip-horizontal'></i><span class='label label-info span-sidebar'>"+ q[i].tag+"</span> </span></td>"+
								  		 				    	"<td class='vu-table-td '><span class='stats-wrapper'>"+ q[i].commentcount+ " Replies  </span></td>"+
								  		 				    	"<td class='vu-table-td footable-last-column'><span class='last-wrapper'>by <a class='username-coloured' style='color: #AA0000;' href='list.act?uid="+ q[i].userid +"' data-original-title='' title=''>"+ q[i].username + "</a><a href='#' data-original-title='View the latest post' data-placement='right' rel='tooltip'></a><br><small> "+ q[i].postdate +"</small></span></td>"+
								  		 					"</tr>");
										}
									}
									
									
									//console.log(hasNext +" " + " " + next +" " + current);
									
									if(hasNext == false){
										$("#divbtload").css("display","none");
									}else{
										$("#divbtload").css("display","table-cell");
									}
									
									$("#divimg").css("display","none");
									
					});
					 
				  });
				});

			
		</script>

	</body>
</html>				