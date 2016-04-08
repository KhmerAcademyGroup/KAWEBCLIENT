<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	<style>
		.required{
			color: red;
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
					<br/>
					<div class="panel panel-info">
								  <div class="panel-heading">
									<h1 class="panel-title">
									<i class="fa fa-tasks"></i>
										<a href="index.act"  >
										List Pre-Course Students

										</a>
									</h1>
								  </div>
									
					</div><!-- /.panel panel-default -->
										
					<!-- BEGIN DATA TABLE -->
					<div class="the-box">
						<div class="table-responsive">
						<table class="table table-th-block table-hover" id="precourseTable">
							<thead class="the-box dark full">
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Gender</th>
									<th>Email</th>
									<th>Phone</th>
									<th>University</th>
									<th>Year</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
								
								
								
							</tbody>
						</table>
						<div id="pagination" class="pull-right">
												
						 </div>
						</div><!-- /.table-responsive -->
					</div><!-- /.the-box .default -->
					<!-- END DATA TABLE -->
					
				</div><!-- /.container-fluid -->

			<!-- BootStrap Model Popup -->		
				<!-- Modal -->
			<div id="myPopup" class="modal fade" role="dialog">
			  <div class="modal-dialog modal-lg">
			
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">View Pre-Course Student</h4>
			      </div>
			   		<br/>
			   		<form class="form-horizontal" id="frmPrecourse" action="${pageContext.request.contextPath}/admin/precourse/rest/updateprecoursewithpayment" method="PUT">	
										<input type="hidden" id="pid" name="id" />
										<div class="col-sm-12">
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
														<option value="NULL">Please Select Shift</option>
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
														<option value="NULL">Please Select Shift</option>
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
												<button class="btn btn-default btn-perspective" data-dismiss="modal">Cancel</button>
												<button type="submit" id="msubmit" class="btn btn-info btn-perspective" >Save</button>
											</div>
										</div>
										<!-- Button Post -->
										
													
																
										<!-- /From -->
										</form>	
			   	
			   	
			      
			    </div>
			
			  </div>
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
				<td>{{= NO}}</td>
				<td>{{= username}}</td>
				<td>{{= gender}}</td>
				<td>{{= email}}</td>
				<td>{{= telephone}}</td>
				<td>{{= university}}</td>
				<td>{{= year}}</td>
				<td>					
					<a href="#"><i data-precourseid="{{= id}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdatePrecourse"></i></a>
					<button class="btn btn-{{if payment>0}}primary{{else}}warning{{/if}}">{{if payment>0}} Paid {{else}} UnPaid {{/if}}</button>
				</td>
			</tr>
   		</script>
   
   		
         
		<script type="text/javascript">		
		
		var preCourse = {};
		var check = true;
		
		$(document).ready(function(){
			// List all precourse students
			preCourse.listPrecourse = function(currentPage){
				KA.createProgressBar();
				$.ajax({
					url: "${pageContext.request.contextPath}/admin/precourse/rest/getListPrecourse?page="+ currentPage +"&item=20",
					method: "GET",
					beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
	                success: function(data){
// 	                	console.log(data);
	                	if(data.STATUS != false){	
	                		$("tbody#content").empty();
							for(var i=0;i<data.RES_DATA.length;i++){
								data.RES_DATA[i]["NO"] = i+1;
							}
	                		$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
	                		$("#precourseTable").dataTable();
	                	}else{
	                		$("tbody#content").html('<tr>No content</tr>');
	                	}
	                	if(check){
	                		
	                		//preCourse.setPagination(data.PAGINATION.totalPages,1);
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
			
			//Get Information
			preCourse.getDetail = function(preCourseId){				
				$.ajax({
					url: "${pageContext.request.contextPath}/admin/precourse/rest/getPrecourse/"+ preCourseId,
					method: "GET",
					beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
	                success: function(data){
// 	                	console.log(data);
	                	if(data.STATUS != false){	
	                		
	            			document.getElementById("pid").value = data.RES_DATA.id;
	            			document.getElementById("pusername").value = data.RES_DATA.username ;
	            			document.getElementById("pemail").value = data.RES_DATA.email;
	            			document.getElementById("puniversity").value = data.RES_DATA.university;
	            			document.getElementById("paddress").value = data.RES_DATA.pob;
	            			document.getElementById("pphonenumber").value = data.RES_DATA.telephone;
	            			document.getElementById("pdob").value = data.RES_DATA.dob;
	            			document.getElementById("ppayment").value = data.RES_DATA.payment;
	            			document.getElementById("pcomment").value = data.RES_DATA.comment;
	            			$("input[name=gender][value="+data.RES_DATA.gender+"]").attr('checked', true);
	            			$('#pjava option[value='+ data.RES_DATA.javaCourse+']').prop('selected',true);
	            			$('#pweb option[value='+ data.RES_DATA.webCourse +']').prop('selected',true);
	            			$('#year option[value='+ data.RES_DATA.year +']').prop('selected',true);
	            			
	                	}
	                	
	                },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			}
			
			//Pagination
			preCourse.setPagination = function(totalPage, currentPage){
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
   			    	preCourse.listPrecourse(currentPage);
   			    }); 
    		};
    		
    		//Form Updating PreCourse Student
    		preCourse.updatePrecourse = function(){
    			var $form = $("#frmPrecourse");
				var frmData = {
			            			  "id": document.getElementById("pid").value,
			            			  "username": document.getElementById("pusername").value,
			            			  "email": document.getElementById("pemail").value,
			            			  "telephone": document.getElementById("pphonenumber").value,
			            			  "university": document.getElementById("puniversity").value,
			            			  "pob": document.getElementById("paddress").value,
			            			  "dob": document.getElementById("pdob").value,
			            			  "javaCourse": document.getElementById("pjava").value,
			            			  "comment": document.getElementById("pcomment").value,			            			
			            			  "webCourse": document.getElementById("pweb").value,
			            			  "gender": $("input:radio[name='gender']:checked").val(),
			            			  "year": document.getElementById("year").value,
			            			  "payment" : document.getElementById("ppayment").value
								};				
				$.ajax({
					url: $form.attr('action'),
					method: "PUT",
					dataType: "JSON",
					beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
					data: JSON.stringify(frmData),
					success: function(data){					
						$("#myPopup").modal("hide");
						location.reload();
					}
				});  
    		};
    		
    		
    		//Calling List Precourse students
    		preCourse.listPrecourse(1);
    		
    		$(document).on('click', '#showFrmUpdatePrecourse', function(){
    			$("#myPopup").modal({
					backdrop: 'static',
				    keyboard: false
				});
    			
    			preCourse.getDetail($(this).data("precourseid"));
    		});
    		
    		//Form Submit
    		$("#frmPrecourse").submit(function(e){
    			e.preventDefault();
    			preCourse.updatePrecourse();
    		});
    		
    		
		});
		
		</script>

</body>


</html>