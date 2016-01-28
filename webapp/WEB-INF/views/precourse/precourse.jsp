<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="../shared/_header.jsp" />
	<style>
			.required{
				color: red;
			}
	</style>
</head>
<body>
	
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
	<jsp:include page="../shared/_menu.jsp" />
	
		
		
		
					
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
				
				
				<div class="container">
					<!-- Begin page heading -->
					<!-- <h1 class="page-heading">User Information <small></small></h1> -->
					<h1></h1>
					<!-- End page heading -->
				
					<div class="row">
						
						<div class="col-sm-12">
							<div class="alert alert-success square fade in alert-dismissable" id="alertsuccess" style="display: none;">
								  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								  <strong>Well done!</strong> You successfully registered Pre-Course.
							</div>
							<%if(request.getAttribute("afteradd")!=null){
							%>
								<script>
									$("#alertsuccess").show();
								</script>
							<%}
							%>
							
							<div class="panel panel-primary">
								  <div class="panel-heading">
											
										Pre-Course Register Information:
										
								  </div>
								  
								  <div class="panel-body">
								  
								  	<sec:authorize access="isAuthenticated()">
										<!-- Form Khmer -->																						
										<form class="form-horizontal" action="${pageContext.request.contextPath}/precourse/rest/addprecourse" method="post" id="frmaddprecourse">	
										<div class="col-sm-6">
										<div class="form-group">
											<input type="hidden" name="userId" id="userId"/>
											
											<label class="col-lg-3 control-label">Name: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" required class="form-control" id="username" name="username"/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Tel: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" required class="form-control" id="phonenumber" name="telephone"  />
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Email: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="email" required class="form-control" id="email" name="email" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Date Of Birth: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text"  name="dob" required  data-date-format="yyyy-mm-dd" class="form-control datepicker" id="calendar" >
											</div>
										</div>
										<div class="form-group">
											<label class=" col-lg-3 control-label">University: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="university" name="university" required/>
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
															<input type="radio" name="gender" value="male" required data-bv-notempty-message="The gender is required" data-bv-field="gender"> Male
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
											<label class="col-lg-3 control-label">Address: <span class="required">*</span></label>
											<div class="col-lg-9">
												<input type="text" id="address" name="pob" class="form-control" required>
											</div>
										</div>
										
										<div class="form-group">
												<label class="col-lg-3 control-label">Java: </label>
												<div class="col-lg-9">
													<select name="javaCourse" class="form-control" id="java">
														<option value="">Please Select Shift</option>
														<option value="morning">Morning (8:00am - 10:00am)</option>
														<option value="afternoon">Afternoon (02:00pm - 04:00pm)</option>
														<option value="evening">Evening (06:00pm - 08:00pm)</option>
													<!-- 	<option value="weekend">Weekend (08:00am - 11:00 am) - (02:00pm - 5:00pm)</option> -->
													</select>
											
											</div>
										</div>	
										<div class="form-group">
												<label class="col-lg-3 control-label">Web: </label>
												<div class="col-lg-9">
													<select name="webCourse" class="form-control" id="web">
														<option value="">Please Select Shift</option>
														<option value="morning">Morning (8:00am - 10:00am)</option>
														<option value="afternoon">Afternoon (02:00pm - 04:00pm)</option>
														<option value="evening">Evening (06:00pm - 08:00pm)</option>
														<!-- <option value="weekend">Weekend (08:00am - 11:00 am) - (02:00pm - 5:00pm)</option> -->
													</select>
											
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">Comment: </label>
											<div class="col-lg-9">
												<textarea name="comment" class="form-control" id="comment"></textarea>
											</div>
										</div>
										<div class="form-group" style="display:none;" id="paymentp">
											<label class="col-lg-3 control-label">Payment: </label>
											<div class="col-lg-9">
												<button type="button" class="btn btn-danger btn-perspective" id="btnpayment">Unpaid</button>
											</div>
										</div>
										<!-- Button Post -->
										<div class="form-group" id="btnaction">
											<div class="col-lg-9 col-lg-offset-3">
												<button type="reset" class="btn btn-default btn-perspective">Cancel</button>
												<button id="msubmit" class="btn btn-info btn-perspective" type="submit">Save</button>
											</div>
										</div>
										<!-- Button Post -->
										</div>	
										<!-- /From -->
										</form>	
										
										<div class="col-sm-6">
											<a href="#" data-toggle="modal" data-target="#precourseevent"><img class="img-responsive" src="http://khmeracademy.org/sources/precourses.png"/></a>
										</div>
						
									</sec:authorize>
										
									<sec:authorize access="isAnonymous()">	
										<div class="col-sm-12">
											<div>
												<a href="#" data-toggle="modal" data-target="#precourseevent"><img class="img-responsive" src="http://khmeracademy.org/sources/precourses.png"/></a>
											</div>
											<div>
												<div class="col-sm-6">
													<a class="btLogin btn btn-info btn-perspective pull-right" href="#" >
														<strong>Login</strong>
													</a>
													
												</div>
							
												<div class="col-sm-6" >
												<span style="margin-right: 20px;">OR</span>
													<a class="btSignUp btn btn-danger btn-perspective" href="#" >
														<strong>Register</strong>
													</a>
												</div>
											</div>										
										</div>
										
										
									</sec:authorize>					
																	
									
									</div>
								 
							</div>
							</div><!-- /.panel .panel-info -->
						</div>
				</div><!-- /.container-fluid -->
				
				<!-- Modal -->
				<div id="precourseevent" class="modal fade" role="dialog">
				  <div class="modal-dialog">
				
				    <!-- Modal content-->
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">Pre-Course</h4>
				      </div>
				      <div class="modal-body">
				        <img class="img-responsive" src="http://khmeracademy.org/sources/precourses.png"/>
				      </div>
				    
				    </div>
				
				  </div>
				</div>
				
			</div><!-- /.page-content -->
		
		
		
		
		
		
		<jsp:include page="../shared/_footer.jsp" />
		
		<script src="${pageContext.request.contextPath}/resources/assets/js/moment.js"></script>
		
		<sec:authorize access="isAuthenticated()">
			<script>
			$.get("${pageContext.request.contextPath}/api/isLogin",function(data){
				checkPrecouse(data.USERID);
				$("#userId").val(data.USERID);
				$("#username").val(data.USERNAME);				
				$("#email").val(data.EMAIL);
			});
			
			
			function checkPrecouse(userid){
				$.get("${pageContext.request.contextPath}/precourse/rest/checkprecourse/"+ userid,function(data){
					
					if(data.STATUS == true){
						$.get("${pageContext.request.contextPath}/precourse/rest/getprecoursestudent/"+ userid,function(userdata){	
							var data = userdata.RES_DATA;
							
							$("#username").val(data.username);
							
							$("#email").val(data.email);
							
							$("#phonenumber").val(data.telephone);
							
							$("#calendar").val(moment(data.dob).format('YYYY-MM-DD'));
							
							$("#university").val(data.university);
							
							$("#address").val(data.pob);
							
							$("#comment").val(data.comment);
							
							$("#java").val(data.javaCourse);
							
							$("#web").val(data.webCourse);
							
							$("#year").val(data.year);
							
							$("input[name=gender][value='"+data.gender+"']").prop("checked",true);
							
							
							if(data.payment >0){
								disableform();
								$("#btnpayment").text("Paid");
								$("#btnpayment").removeClass("btn-danger");
								$("#btnpayment").addClass("btn-success");
							}else{
								$("#frmaddprecourse").attr("action","${pageContext.request.contextPath}/precourse/rest/editprecourse");
								$("#msubmit").text("Update");
								
								$('<input>').attr({
								    type: 'hidden',
								    id: 'precourseid',
								    name: 'id',
								    value: data.id
								}).appendTo('#frmaddprecourse');
							}							
							$("#paymentp").show();
						});	
					}else{
						
					}
				});
			}
				function disableform(){
					$("#username").attr("disabled", true);
					$("#email").attr("disabled", true);
					$("#phonenumber").attr("disabled", true);
					$("#calendar").attr("disabled", true);
					$("#address").attr("disabled", true);
					$("#university").attr("disabled", true);
					$("#comment").attr("disabled", true);
					$("#java").attr("disabled", true);
					$("#web").attr("disabled", true);
					$("#year").attr("disabled", true);
					$("input[name=gender]").attr("disabled", true);
					$("#btnaction").remove();
					$("#frmaddprecourse").removeAttr('action');
				}
				
				$("#frmaddprecourse").submit(function(e){
					e.preventDefault();
					
					var $form = $("#frmaddprecourse");
					var frmData = getFormData($form);
					$.ajax({
						url: $form.attr('action'),
						method: "POST",
						dataType: "JSON",
						beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
						data: JSON.stringify(frmData),
						success: function(data){
							location.reload();
						}
					}); 
				});
				
				function getFormData($form){
				    var unindexed_array = $form.serializeArray();
				    var indexed_array = {};

				    $.map(unindexed_array, function(n, i){
				        indexed_array[n['name']] = n['value'];
				    });

				    return indexed_array;
				}
				
			</script>		
		
		</sec:authorize>
		
		
		
		
</body>
</html>