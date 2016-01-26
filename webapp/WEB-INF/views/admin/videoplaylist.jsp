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

			   <h1 class="page-heading">List Playlist</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button id="showFrmAddPlaylist" type="button" class="btn btn-success">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>

						<!-- <div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search playlist">
							</form>

						</div> -->
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Playlist Name</th>
									<th>Playlist Description</th>									
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
							
							</tbody>
							
						</table>
						
						 <div id="pagination" class="pull-right">
												
						 </div>
												
												
					</div>
					<!-- /.table-responsive -->
				</div>



			</div>
			<!-- /.container-fluid -->

		<div id="p-frmPlaylist" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmPlaylist" action="${pageContext.request.contextPath}/rest/elearning/" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">List playlists</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="pId" class="form-control"  name="pId">
										
									<div class="form-group">
										<label class="col-lg-3 control-label">Playlist name</label>
										<div class="col-lg-5">
											<input type="text" id="pName" class="form-control" required="required" name="pName">
										</div>	
									</div>
					</div>
					<div class="modal-footer">
							<button type="submit" id="btSubmit" class="btn btn-primary">Save</button>
					</div>
				</div>
			</form>	
		</div>
		
		<div id="p-frmConfirm" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmConfirm" action="${pageContext.request.contextPath}/rest/elearning/" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">Confirmation</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="ConfirmId" class="form-control"  name="pId">
										
									<div class="form-group">										
										<div class="col-lg-8 right" style="border:none;">
											<label class="form-control">Delete this playlist?</label> 
										</div>	
									</div>
					</div>
					<div class="modal-footer">
							<button type="submit" id="btDelete" class="btn btn-primary">Yes</button>
							<button type="button" id="btCancel" class="btn btn-primary">No</button>
					</div>
				</div>
			</form>	
		</div>




				<!-- BEGIN FOOTER -->
				<jsp:include page="shared/_adminfooter.jsp" />
				<!-- END FOOTER -->
				


		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->



		<!-- Footer Script -->
		<jsp:include page="shared/_scriptfooter.jsp"/>
		<!-- ./Footer Script -->



		<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO }}</td>
				<td>{{= Name}}</td>
				<td>{{= description}}</td>
				<td> 
   		 			<i data-pid="{{= Id}}" data-mpid="{{= maincategory}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdatePlaylist"></i>
            		<i data-pid="{{= Id}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmConfirm" ></i>
         		</td>
			</tr>
   		</script>
   
   		
         
		<script type="text/javascript">		
		
		var playlist = {};
		var check = true;
		
		$(document).ready(function(){
			
			playlist.listPlaylist = function(currentPage){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/elearning/?page="+currentPage+"&item=20", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
				    	/* alert(JSON.stringify(data)); //.RESP_DATA.length
				    	return; */
						console.log(data);
				    	
						if(data.RES_DATA.length>0){
							$("tbody#content").empty();
							for(var i=0;i<data.RES_DATA.length;i++){
								data.RES_DATA[i]["NO"] = i+1;
							}
							$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
						}else{
							$("tbody#content").html('<tr>No content</tr>');
						}
				    	if(check){
				    		playlist.setPagination(data.PAGINATION.totalPages,1);				    		
				    		check=false;
				    	}
				    	KA.destroyProgressBar();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			playlist.setPagination = function(totalPage, currentPage){
   		    	$('#pagination').bootpag({
   			        total: totalPage,
   			        page: currentPage,
   			        maxVisible: 10,
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
   			    	playlist.listPlaylist(currentPage);
   			    }); 
    		};
    		
    		playlist.addOrUpdatePlaylist = function(){
				KA.createProgressBarWithPopup();
				frmData = {
						"pId"   : $("#pId").val(),
						"pName" : $("#pName").val()
				};
				$.ajax({ 
				    url:  $("#frmPlaylist").attr("action"), 
				    type: $("#frmPlaylist").attr("method"),
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	playlist.listPlaylist(1);
				    	$("#p-frmPlaylist").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			playlist.deletePlaylist = function(){
				KA.createProgressBarWithPopup();
				
				//alert($("#frmConfirm").attr("action")+"/"+$("#ConfirmId").val());				
				var deptId = $("#ConfirmId").val();
				
				$.ajax({ 
				    url:  $("#frmConfirm").attr("action")+"/"+deptId, 
				    type: $("#frmConfirm").attr("method"),
				    //data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	playlist.listPlaylist(1);
				    	$("#p-frmConfirm").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			// Show Form Confirm Playlist delete Popup
			$(document).on('click',"#showFrmConfirm", function(){		
				
				var deptId = $(this).data("pid");
				$("#p-frmConfirm").bPopup({modalClose: false});
				$("#frmConfirm").attr("method", "DELETE");
				$("#ConfirmId").val(deptId);
				//playlist.deletePlaylist(deptId);
				//$("#frmPlaylist").trigger("reset");				
			});
			
			//delete playlist equal yes
			$("#frmConfirm").submit(function(e){				
				 e.preventDefault();
				 playlist.deletePlaylist();
			});
			
			$("#btCancel").on('click', function(){			
								
				$("#p-frmConfirm").bPopup().close();
			});
			
			// Get one forum playlist
			/* playlist.getPlaylist = function(pid){
				KA.createProgressBarWithPopup();
				console.log(pid);
				 $.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/log/playlist/"+pid, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.RES_DATA != null){
							$("#pId").val(data.RES_DATA.pId); 
							$("#pName").val(data.RES_DATA.pName); 
						}
						KA.destroyProgressBarWithPopup();
				    },
				    error:function(data,status,er) { 
						KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				}); 			
			}; */
			
			
			// load all forum cateoty
			playlist.listPlaylist(1);
				
			
			// Show Form Add Playlist Popup
			$("#showFrmAddPlaylist").click(function(){
				$("#p-frmPlaylist").bPopup({modalClose: false});
				$("#frmPlaylist").attr("method", "POST");
				$("#frmPlaylist").trigger("reset");
				$("#btSubmit").text("Add");
			});
						
			// Show Form Update Playlist Popup
			$(document).on('click',"#showFrmUpdatePlaylist", function(){
				//alert($(this).data("pid"));
				
				var deptName = $(this).parent().prev().text();
				var cateId = $(this).data("pid");
				KA.createProgressBarWithPopup();				
				console.log(cateId);
				$("#pId").val(cateId); 
				$("#pName").val(deptName);
				
				$("#p-frmPlaylist").bPopup({modalClose: false});
				//playlist.getPlaylist($(this).data("pid"));
				KA.destroyProgressBarWithPopup();
				
				//$("#frmPlaylist").trigger("reset");
				$("#frmPlaylist").attr("method", "PUT");
				$("#btSubmit").text("Update");
				
			});
			
			// Add or update Forum Playlist
			$("#frmPlaylist").submit(function(e){
				 e.preventDefault();
				 playlist.addOrUpdatePlaylist();
			});			
			
		});
		</script>

</body>


</html>