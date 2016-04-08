<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/smoke.css" rel="stylesheet">
	<style type="text/css">
		.chosen-container{
		    width: auto !important;
		}
		.mycus{
			width:200px; background-color:#89BC4B; opacity:0.8;
			font-weight:bold;
			height:120px;
		}
	
		.top-buffer { margin-top:20px; }
		.modal-body{ height:380px;}
		.radio {margin:0px 0px 0px !important;
				width:20px; height:20px;
				}
	
	</style>
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
			<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
			<!-- END SIDEBAR RIGHT -->
			







		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

			   <h1 class="page-heading">List Usertype</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button id="showFrmAddUsertype" type="button" class="btn btn-success">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>

						<!-- <div class="btn-group pull-right">
							<form role="form">
								<input type="text" id="search" class="form-control"
									placeholder="Search usertype">
							</form>

						</div> -->
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>User Type</th>
									<th>Viewable</th>
									<th>Commentable</th>
									<th>Postable</th>
									<th>Deleteable</th>
									<th>Userable</th>
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

		<div id="p-frmUsertype" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmUsertype" action="${pageContext.request.contextPath}/rest/usertype" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">List Usertype</h4>
					</div>
					<div class="modal-body" >
														
									<input type="hidden"  id="usertypeId" class="form-control"  name="usertypeId">
										
									<div class="form-group">
									
										<div class="col-lg-12">
											<div class="col-lg-3">
												<label class="control-label">User Type</label>
											</div>					
											<div class="col-lg-9">
												<input type="text" id="addutypeid" class="form-control" required="required">											
											</div>
										</div>
										
										<div class="col-lg-12 top-buffer" >
											<div class="col-sm-3">
												<label class="control-label">Viewable</label>
											</div>										
																	
											<div class="col-sm-1">
												<label class="control-label" for="vtrue">True</label>
											</div>					
																
											<div class="col-sm-1">
												<input id="vtrue" type="radio" name="viewable" value="true" class="form-control radio" >
											</div>
											
											<div class="col-sm-1">
												<label class="control-label" for="vfalse">False</label>
											</div>					
											
											<div class="col-sm-1">
												<input id="vfalse" type="radio" checked="checked" name="viewable" value="false" class="form-control radio" >
											</div>											
																							
										</div>
										
										
										<div class="col-lg-12 top-buffer" >
											<div class="col-sm-3">
												<label class="control-label">Commentable</label>
											</div>										
																	
											<div class="col-sm-1">
												<label class="control-label" for="ctrue">True</label>
											</div>					
																
											<div class="col-sm-1">
												<input id="ctrue" type="radio" name="commentable" value="true" class="form-control radio" >
											</div>
											
											<div class="col-sm-1">
												<label class="control-label" for="cfalse">False</label>
											</div>					
											
											<div class="col-sm-1">
												<input id="cfalse" type="radio" checked="checked" name="commentable" value="false" class="form-control radio" >
											</div>								
										</div>								
									
									<div class="col-lg-12 top-buffer" >
											<div class="col-sm-3">
												<label class="control-label">Postable</label>
											</div>										
																	
											<div class="col-sm-1">
												<label class="control-label" for="ptrue">True</label>
											</div>					
																
											<div class="col-sm-1">
												<input id="ptrue" type="radio" name="postable" value="true" class="form-control radio" >
											</div>
											
											<div class="col-sm-1">
												<label class="control-label" for="pfalse">False</label>
											</div>					
											
											<div class="col-sm-1">
												<input id="pfalse" type="radio" checked="checked" name="postable" value="false" class="form-control radio" >
											</div>								
										</div>								
									
									<div class="col-lg-12 top-buffer" >
											<div class="col-sm-3">
												<label class="control-label">Deleteable</label>
											</div>										
																	
											<div class="col-sm-1">
												<label class="control-label" for="dtrue">True</label>
											</div>					
																
											<div class="col-sm-1">
												<input id="dtrue" type="radio" name="deleteable" value="true" class="form-control radio" >
											</div>
											
											<div class="col-sm-1">
												<label class="control-label" for="dfalse">False</label>
											</div>					
											
											<div class="col-sm-1">
												<input id="dfalse" type="radio" checked="checked" name="deleteable" value="false" class="form-control radio" >
											</div>								
									</div>
									
									
									<div class="col-lg-12 top-buffer" >
											<div class="col-sm-3">
												<label class="control-label">Userable</label>
											</div>										
																	
											<div class="col-sm-1">
												<label class="control-label" for="utrue">True</label>
											</div>					
																
											<div class="col-sm-1">
												<input id="utrue" type="radio" name="userable" value="true" class="form-control radio" >
											</div>
											
											<div class="col-sm-1">
												<label class="control-label" for="ufalse">False</label>
											</div>					
											
											<div class="col-sm-1">
												<input id="ufalse" type="radio" checked="checked" name="userable" value="false" class="form-control radio" >
											</div>								
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
			<form  id="frmConfirm" action="${pageContext.request.contextPath}/rest/usertype" method="DELETE">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">Confirmation</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="ConfirmId" class="form-control"  name="usertypeId">
										
									<div class="form-group">										
										<div class="col-lg-8 right" style="border:none;">
											<label class="form-control">Delete this usertype?</label> 
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


		<!-- fa fa-check icon-circle icon-xs icon-success statusConfirm
		 
			fa fa-remove icon-circle icon-xs icon-danger statusConfirm
		-->
		<script src="${pageContext.request.contextPath}/resources/assets/js/smoke.min.js"></script>
		
		<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO }}</td>
				<td id="mainrow{{= NO}}" data-utypeid="{{= userTypeId}}" data-utypename="{{= userTypeName}}">{{= userTypeName}}</td>
				<td>
					{{if viewable == true}}
						<i id="viewid{{= NO}}" data-order="{{= NO}}" data-status="{{= viewable}}" class="fa fa-check icon-circle icon-xs icon-success statusConfirm"></i> 
					{{else}}
						<i id="viewid{{= NO}}" data-order="{{= NO}}" data-status="{{= viewable}}" class="fa fa-remove icon-circle icon-xs icon-danger statusConfirm" ></i> 
					{{/if}}
				</td>
				<td>
					{{if commentable == true}} 	
						<i id="commentid{{= NO}}" data-order="{{= NO}}" data-status="{{= commentable}}" class="fa fa-check icon-circle icon-xs icon-success statusConfirm"></i> 
					{{else}} 
						<i  id="commentid{{= NO}}" data-order="{{= NO}}" data-status="{{= commentable}}" class="fa fa-remove icon-circle icon-xs icon-danger statusConfirm" ></i> 
					{{/if}}
				</td>
				<td>
					{{if postable == true}} 
						<i id="postid{{= NO}}" data-order="{{= NO}}" data-status="{{= postable}}" class="fa fa-check icon-circle icon-xs icon-success statusConfirm"></i> 
					{{else}} 
						<i id="postid{{= NO}}"  data-order="{{= NO}}" data-status="{{= postable}}" class="fa fa-remove icon-circle icon-xs icon-danger statusConfirm" ></i> 
					{{/if}}
				</td>
				<td>
					{{if deleteable == true}} 
						<i id="deleteid{{= NO}}" data-order="{{= NO}}" data-status="{{= deleteable}}" class="fa fa-check icon-circle icon-xs icon-success statusConfirm"></i>
					{{else}} 
						<i id="deleteid{{= NO}}" data-order="{{= NO}}" data-status="{{= deleteable}}" class="fa fa-remove icon-circle icon-xs icon-danger statusConfirm" ></i> 
					{{/if}}
				</td>
				<td>
					{{if userable == true}}
						<i id="userid{{= NO}}" data-order="{{= NO}}" data-status="{{= userable}}" class="fa fa-check icon-circle icon-xs icon-success statusConfirm"></i> 
					{{else}} 
						<i id="userid{{= NO}}" data-order="{{= NO}}" data-status="{{= userable}}" class="fa fa-remove icon-circle icon-xs icon-danger statusConfirm" ></i> 
					{{/if}}
				</td>				
				<td>   		 			
            		<i data-cateid="{{= userTypeId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmConfirm" ></i>
         		</td>
			</tr>
   		</script>
   		
      
		<script type="text/javascript">		
		
		var usertype = {};
		var check = true;
		var gPage = 1; //global current page for pagination
		
		$(document).ready(function(){
			
			usertype.listUsertype = function(currentPage){
				KA.createProgressBar();
				$.ajax({ 
				    url:"${pageContext.request.contextPath}/rest/usertype?page="+currentPage+"&item=20", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
				    	/* alert(JSON.stringify(data)); //data.RESP_DATA
				    	return; */ 
// 						console.log(data);
				    	
				    	perPage = 20;
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
				    		usertype.setPagination(data.totalPages,1);
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
			
			usertype.setPagination = function(totalPage, currentPage){
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
   			    	gPage = currentPage;
   			    	usertype.listUsertype(currentPage);
   			    }); 
    		};
    		
    		usertype.addOrUpdateUniversity = function(){
    			
    			//var gender = $('input[name=gender]:checked').val();
    			
				KA.createProgressBarWithPopup();
				frmData = {						
						"userTypeName"   : $("#addutypeid").val(),
						"viewable" : $('input[name=viewable]:checked').val(),
						"commentable": $('input[name=commentable]:checked').val(),
						"postable": $('input[name=postable]:checked').val(),
						"deleteable": $('input[name=deleteable]:checked').val(),
						"userable": $('input[name=userable]:checked').val()
				};
				$.ajax({ 
				    url:  $("#frmUsertype").attr("action"), 
				    type: $("#frmUsertype").attr("method"),
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	usertype.listUsertype(gPage);
				    	$("#p-frmUsertype").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			usertype.deleteUniversity = function(){
				KA.createProgressBarWithPopup();
				
				//alert($("#frmConfirm").attr("action")+"/"+$("#ConfirmId").val());				
				var utypeid = $("#ConfirmId").val();
				
				$.ajax({ 
				    url:  $("#frmConfirm").attr("action")+"/"+utypeid, 
				    type: $("#frmConfirm").attr("method"),
				    //data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    	usertype.listUsertype(gPage);
				    	$("#p-frmConfirm").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			// Show Form Confirm University delete Popup
			$(document).on('click',"#showFrmConfirm", function(){		
				
				$(".modal-body").css("height","55px");
				
				var deptId = $(this).data("cateid");
				$("#p-frmConfirm").bPopup({modalClose: false});
				$("#frmConfirm").attr("method", "DELETE");
				$("#ConfirmId").val(deptId);
				//usertype.deleteUniversity(deptId);
				//$("#frmUsertype").trigger("reset");				
			});
			
			
			//update usertype
    		$(document).on('click',	".statusConfirm", function() {
    			
    			/* alert($("#mainrow1").data("utypeid"));
    			return; */
    			
    			
    			//to check if current element contain class name fa-check
    			
    			/* alert($(this).data("status")===true);
    			alert($(this).data("status")===false); */
    			
    			
    			
    			var obj = this;
    			    			    			
    			if($(obj).data("status")===true){
        			   
    				$(obj).data("status",false);
    			}else{   				
    				
    				$(obj).data("status",true);
    			}
    			   			
    			var order = $(this).data("order");
    			var utid = $("#mainrow"+order).data("utypeid");    			
    			var utypename = $("#mainrow"+order).data("utypename"); //to select user type name from main row    			
    			var vstate  = $("#viewid"+order).data("status");
    			var cstate =  $("#commentid"+order).data("status");
    			var pstate =  $("#postid"+order).data("status");
    			var dstate =  $("#deleteid"+order).data("status");
    			var ustate =  $("#userid"+order).data("status");
    			    			
    			/* alert("utid="+utid+"\nutypename="+utypename+"\nvstate="+vstate+"\ncstate="+cstate+"\npstate="+pstate+"\ndstate="+dstate+
	   					"\nustate="+ustate);
    			return; */
    			   			
    			smoke.confirm("Are you sure?", function(e){
    				
    				if (e){
    					    					
    					frmData = {
    							"userTypeId"   : utid,
    							"userTypeName" : utypename,
    							"viewable" : vstate,
    							"commentable":cstate,
    							"postable":pstate,
    							"deleteable":dstate,
    							"userable":ustate
    							
    					};
    					$.ajax({ 
    					    url:  "${pageContext.request.contextPath}/rest/usertype", 
    					    type: "PUT",
    					    data: JSON.stringify(frmData),
    					    beforeSend: function(xhr) {
    		                    xhr.setRequestHeader("Accept", "application/json");
    		                    xhr.setRequestHeader("Content-Type", "application/json");
    		                },
    					    success: function(data) { 
// 	    							console.log(data);    					    	
	    					    	//usertype.listUsertype(gPage);
	    					    	    								
	    							if($(obj).data("status")===false){	    								
	    			    				$(obj).removeClass("fa-check icon-success");
	    			    				$(obj).addClass("fa-remove icon-danger");
	    			    			}else{	    			    				
	    			    				$(obj).removeClass("fa-remove icon-danger");
	    			    				$(obj).addClass("fa-check icon-success");
	    			    			}    						
    					    	
    					    },
    					    error:function(data,status,er) {    					    	
    					        console.log("error: "+data+" status: "+status+" er:"+er);
    					    }
    					});
    					
    				}else{
    					    					
    					//do something when user click cancel    					
    					if($(obj).data("status")===true){
    	        			    	    				
    	    				$(obj).data("status",false);
    	    			}else{   	    				
    	    				
    	    				$(obj).data("status",true);
    	    			}    						
    				}
    			}, {
    				ok: "Yes",
    				cancel: "Cancel",
    				classname: "mycus"
    				/* ,classname: "statusConfirm",
    				reverseButtons: true */ 
    			});
			});
			
			
			//delete usertype equal yes
			$("#frmConfirm").submit(function(e){				
				 e.preventDefault();
				 usertype.deleteUniversity();
			});
			
			$("#btCancel").on('click', function(){			
								
				$("#p-frmConfirm").bPopup().close();
			});
			
			// Get one forum usertype
			/* usertype.getUniversity = function(cateid){
				KA.createProgressBarWithPopup();
				console.log(cateid);
				 $.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/log/usertype/"+cateid, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.RES_DATA != null){
							$("#usertypeId").val(data.RES_DATA.usertypeId); 
							$("#usertypeName").val(data.RES_DATA.usertypeName); 
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
			usertype.listUsertype(1);
				
			
			// Show Form Add Usertype Popup
			$("#showFrmAddUsertype").click(function(){
								
				$(".modal-body").css("height","285px");
				
				$("#p-frmUsertype").bPopup({modalClose: false});
				$("#frmUsertype").attr("method", "POST");				
				$("#frmUsertype").trigger("reset");
				$("#btSubmit").text("Add");
			});
						
			// Show Form Update University Popup
			$(document).on('click',"#showFrmUpdateUniversity", function(){
				//alert($(this).data("cateid"));
				
				var uniName = $(this).parent().prev().text();
				var cateId = $(this).data("cateid");
				KA.createProgressBarWithPopup();				
// 				console.log(cateId);
				$("#usertypeId").val(cateId); 
				$("#usertypeName").val(uniName);
				
				$("#p-frmUsertype").bPopup({modalClose: false});
				//usertype.getUniversity($(this).data("cateid"));
				KA.destroyProgressBarWithPopup();
				
				//$("#frmUsertype").trigger("reset");
				$("#frmUsertype").attr("method", "PUT");
				$("#btSubmit").text("Update");
				
			});
			
			// Add or update Forum University
			$("#frmUsertype").submit(function(e){
				 e.preventDefault();
				 usertype.addOrUpdateUniversity();
			});			
			
		});
		</script>

</body>
</html>
