<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
</head>

<body class="tooltips">



	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">
	
			<!-- BEGIN TOP NAV -->
			<jsp:include page="shared/_topnav.jsp" />
			<!-- END TOP NAV -->
			
			
			
			<!-- BEGIN SIDEBAR LEFT -->
			<jsp:include page="shared/_leftsidebar.jsp" />
			<!-- END SIDEBAR LEFT -->
			
			
			
			
			
			
			<!-- BEGIN SIDEBAR RIGHT -->
			<jsp:include page="shared/_rightsidebar.jsp" />
			<!-- END SIDEBAR RIGHT -->
			







		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

			   <h1 class="page-heading">PlayList</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#frmFroumCategory" data-backdrop="static">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>

						<div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search University">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No1</th>
									<th>Playlist Name</th>
									<th>Playlist Description</th>														
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
								

							</tbody>
						</table>
						<br />
						
						<p id="totalrecord" style="color:blue;"></p>
						<div id="pagination" class="pull-right"></div>
					</div>
					<!-- /.table-responsive -->
				</div>



			</div>
			<!-- /.container-fluid -->


			<!-- Modal -->
			<div class="modal fade " id="frmFroumCategory" tabindex="-1"
				role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Add Playlist</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label class="col-lg-3 control-label">Playlist Name<span class="required">*</span></label>
								<div class="col-lg-9 col-sm-12 pull-right col-xs-12">
									<input type="text" class="form-control" name="txtVideoCategory" id="txtVideoCategory" value="">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">Add</button>
						</div>
						<!-- /.modal-footer -->
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-doalog -->
			</div>
			<!-- /#DefaultModal -->




				<!-- BEGIN FOOTER -->
				<jsp:include page="shared/_adminfooter.jsp" />
				<!-- END FOOTER -->
				


		</div>
		<!-- /.page-content -->
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
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/retina/retina.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/nicescroll/jquery.nicescroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>

	<!-- PLUGINS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/skycons/skycons.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/prettify/prettify.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/icheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/timepicker/bootstrap-timepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/mask/jquery.mask.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/datatable/js/bootstrap.datatable.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/markdown/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>

	<!-- EASY PIE CHART JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/easypiechart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>

	<!-- KNOB JS -->
	<!--[if IE]>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-knob/knob.js"></script>

	<!-- FLOT CHART JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.selection.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/flot-chart/jquery.flot.time.js"></script>

	<!-- MORRIS JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/raphael.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/morris-chart/morris.min.js"></script>

	<!-- C3 JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/d3.v3.min.js"
		charset="utf-8"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/c3-chart/c3.min.js"></script>

	<!-- MAIN APPS JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>



	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.tmpl.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>
	
	
	<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO}}</td>
				<td>{{= playlistName}}</td>
				<td>{{= description}}</td>				
				<td> 
   		 			<i id="{{= playlistId}}" class="fa fa-pencil icon-circle icon-xs icon-info btnUpdate"></i>
            		<i id="{{= playlistId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger deleteConfirm" ></i>
         		</td>
				
			</tr>
   </script>
  
   
  
   
   
		<script type="text/javascript">		
		
		var playlist = {};		
		var check = true;
		var gPage = 1; //global current page for pagination
		var isSearch = false
		
		$(document).ready(function(){
			
			
			playlist.listPlaylist = function(currentPage,item){
				
				$.ajax({ 
					url: "${pageContext.request.contextPath}/rest/listadminplaylist/MQ==?page="+currentPage+"&item="+item,				   
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
				    	perPage = item;
				    	nextPage = (currentPage-1)*perPage;
				    					    	
				    	if(data.RES_DATA.length>0){
							$("tbody#content").empty();
							for(var i=0;i<data.RES_DATA.length;i++){
								data.RES_DATA[i]["NO"] = (i+1)+nextPage;
							}
							$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
						}else{
							$("tbody#content").html('<tr>No content</tr>');
						}
				    	
				    	if(check){
							playlist.setPagination(data.PAGINATION.totalPages,gPage,item);
							check=false;
				    	}
				    	
				    },				    					    		
				    error:function(data,status,er) { 				    
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};			
			playlist.listPlaylist(1,10);
			
			
			playlist.setPagination = function(totalPage, currentPage, item){
   		    	$('#pagination').bootpag({
   			        total: totalPage,
   			        page: currentPage,
   			        maxVisible: 5,
   			        leaps: true,
   			        firstLastUse: true,
   			        first: 'First',
   			        last: 'Last',
   			        wrapClass: 'pagination',
   			        activeClass: 'active',
   			        disabledClass: 'disabled',
   			        nextClass: 'next',
   			        prevClass: 'prev',
   			        lastClass: 'last',
   			        firstClass: 'first'
   			    }).on("page", function(event, currentPage){   			    	
   			    	check = false;   			    	   			    	
   			    	gPage = currentPage;
   			    	console.log(gPage + "=========="+currentPage);
   			    	playlist.listPlaylist(currentPage,item);
   			    	//if(isSearch==false) video.listVideo(currentPage, item);
   			    	///else video.searchVideo(currentPage,item,$("#search").val());
   			    }); 
    		};
			
			
			
		});
		</script>

</body>
</html>
