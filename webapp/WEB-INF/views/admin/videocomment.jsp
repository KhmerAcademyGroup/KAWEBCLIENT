<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/smoke.css" rel="stylesheet">
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

			   <h1 class="page-heading">Video Comment</h1>

				<div class="the-box no-border">
				
					<div class="btn-toolbar top-table" role="toolbar">
						
						<div class="btn-group">
							<form role="form">
								<select id="number-of-item" class="form-control">
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
								</select>
							</form>
								
						</div>

						<div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search Comment">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>
				
				
				
				
				
				
				
				
					<div class="table-responsive">						
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No</th>
									<th>Comment Text</th>									
									<th>Comment Date</th>
									<th>Video Name</th>
									<th>User Name</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
								<!-- <tr>									
									<td>8</td>
									<td>adfadfa</td>
									<td>6/2/2011</td>
									<td>1000</td>
									<td>4days 7046:14:34</td>																		
									<td> 
										<i class="icon-circle icon-xs icon-info" data-toggle="modal" data-target="#frmFroumCategory" data-backdrop="static">View</i>
										<i class="btn btn-danger" data-toggle="modal" >View</i>
									</td>
								</tr> -->
							</tbody>
						</table>
						<br />
						<p id="totalrecord" style="color:blue;"></p>
						<div id="pagination" class="pull-right"></div>
					</div>
					<!-- /.table-responsive -->
				</div>



				<!-- Modal -->
			<div class="modal fade " id="frmComment" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Update Comment</h4>
						</div>
						<div class="modal-body">
						
							<input type="hidden" name="commentId" id="commentId" />
							<input type="hidden" name="videoId" id="videoId" />
							<input type="hidden" name="userId" id="userId" />
							<input type="hidden" name="replyId" id="replyId" />
							
							<div class="form-group">
								<label class="col-lg-3 control-label">Comment Text</label>
								<div class="col-lg-9">
									<textarea class="form-control" name="commentText" id="commentText" placeholder="Comment Text"></textarea>
								</div>
							</div>
							
							<br />

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" id="btnFormUpdate">Update</button>
						</div><!-- .modal-footer -->
					</div><!-- .modal-content -->
				</div><!-- .modal-doalog -->
			</div>
			<!-- /#DefaultModal -->
			




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
	<jsp:include page="shared/_scriptfooter.jsp" />
	<!-- ./Footer Script -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/smoke.min.js"></script>
	
	<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO}}</td>
				<td>{{if commentText.length < 30}} {{= commentText}} {{else}} {{= commentText.substring(0, 30) + "..." }} {{/if}}</td>
				<td>{{= commentDate}}</td>
				<td>{{= videoName}}</td>
				<td>{{= username}}</td>
				<td> 
   		 			<i id="{{= commentId}}" class="fa fa-pencil icon-circle icon-xs icon-info btnUpdate"></i>
            		<i id="{{= commentId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger deleteConfirm" ></i>
         		</td>
			</tr>
   </script>
   
		<script type="text/javascript">		
		
		var comment = {};
		var check = true;
		var gPage = 1; //global current page for pagination
		var isSearch = false;
		
		$(document).ready(function(){
			
			comment.listComment = function(currentPage, item){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/rest/list/comment?item="+ item + "&page=" + currentPage, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
				    	perPage = item;
				    	nextPage = (currentPage-1)*perPage;
				    	$("#totalrecord").text("Total records = " + data.PAGINATION.totalCount);
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
				    		comment.setPagination(data.PAGINATION.totalPages,1,item);
				    		check=false;
				    	}
				    	KA.destroyProgressBar();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			}
			
			
			comment.searchComment = function(currentPage, item, commenttext){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/rest/search/comment/"+ commenttext +"?item="+ item + "&page=" + currentPage, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	if(data.STATUS==true){
				    		
					    	perPage = item;
					    	nextPage = (currentPage-1)*perPage;
					    	$("#totalrecord").text("Total records = " + data.PAGINATION.totalCount);
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
								comment.setPagination(data.PAGINATION.totalPages,1,item);
								check=false;
					    	}
					    		
					    	
					    	KA.destroyProgressBar();
					    	
				    	}else{

				    		KA.destroyProgressBar();
				    		$("tbody#content").html('<tr>No content</tr>');
				    		$("#pagination").html("");
				    		$("#totalrecord").text("Total records = 0");
				    	}
				    	
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			
			
			comment.setPagination = function(totalPage, currentPage, item){
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
   			    	if(isSearch==false) comment.listComment(currentPage, item);
   			    	else comment.searchComment(currentPage,item,$("#search").val());
   			    }); 
    		};
    		
    		
    		$("#search").keyup(function(){
				if($(this).val()==""){
					check = true;
					isSearch = false;
					comment.listComment(1,$("#number-of-item").val());
				}else{
					check = true;
					isSearch = true;
					comment.searchComment(1,$("#number-of-item").val(),$(this).val());
				}
				
		    });
    		
    		
    		//load list video
    		comment.listComment(1,$("#number-of-item").val());
    		
    		//change row of items
    		$("#number-of-item").change(function(){
    			check = true;
    			if(isSearch==false) comment.listComment(1,$("#number-of-item").val());
			    else comment.searchComment(1,$("#number-of-item").val(),$("#search").val());
    		});
    		
    		
    		
    		
    		 $(document).on('click',	".btnUpdate", function() {
    			$("#commentId").val($(this).attr('id'));
    			getComment($(this).attr("id"));
    			$("#frmComment").modal('show');
    		});
    		 
    		
    		$(document).on('click', "#btnFormUpdate", function(){
    			
				frmData = {
						"commentText": $("#commentText").val(),
						"commentId"  : $("#commentId").val(),
    					"videoId"	 : $("#videoId").val(),
    					"userId"	 : $("#userId").val(),
						"replyId"    : $("#replyId").val()
    					
				};
				
   				$.ajax({ 
   				    url : "${pageContext.request.contextPath}/admin/rest/update/comment", 
   				    type: "POST",
   				    data: JSON.stringify(frmData),
   				    beforeSend: function(xhr) {
   	                    xhr.setRequestHeader("Accept", "application/json");
   	                    xhr.setRequestHeader("Content-Type", "application/json");
   	                },
   				    success: function(data) { 
   				    	$("#frmComment").modal('hide');
   				    	if(data.STATUS==true){
   							comment.listComment(1,$("#number-of-item").val());
       						smoke.alert("Success!", function(e){
       							
       						}, {
       							ok: "OK"
       						});
   						}else{
   							smoke.alert("Error Occured!", function(e){
       							
       						}, {
       							ok: "OK"
       						});
   						}
   				    	
   				    },
   				    error:function(data,status,er) {
   				    	$("#frmComment").modal('hide');
   				        console.log("error: "+data+" status: "+status+" er:"+er);
   				    }
   				});
    				
    			
    			
    		});
    		
    		//delete video
    		$(document).on('click',	".deleteConfirm", function() {
    			var cid = $(this).attr("id");
    			smoke.confirm("Are you sure?", function(e){
    				if (e){
    					$.post("${pageContext.request.contextPath}/admin/rest/delete/comment/" + cid, function(data){
    						if(data.STATUS==true){
    							comment.listComment(gPage,$("#number-of-item").val());
    						    
        						smoke.alert("Success!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}else{
								smoke.alert("Error Occured!", function(e){
        							
        						}, {
        							ok: "OK"
        						});
    						}
    						
    	    			});
    				}else{
						
    				}
    			}, {
    				ok: "Yes",
    				cancel: "Cancel" 
    			});
			});
    		
    		
    		
    		function getComment(cid){
    			$.get("${pageContext.request.contextPath}/admin/rest/get/comment/" + cid,function(data){
    				if(data.STATUS==true){
    					$("#commentText").val(data.RES_DATA.commentText);
    					$("#userId").val(data.RES_DATA.userId);
    					$("#videoId").val(data.RES_DATA.videoId);
    					$("#replyId").val(data.RES_DATA.replyId);
    					
    				}
    				
    			});
    		} 
    		
    		
    		
		});
		</script>

</body>


</html>