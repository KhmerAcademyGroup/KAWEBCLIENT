	<%@page import="java.util.ArrayList"%>
<%-- <%@page import="model.dto.Department"%>
<%@page import="model.dto.University"%>
<%@page import="model.dto.User"%> --%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
 <%
 	/* 	User usr = (User) session.getAttribute("ka_user"); */
 		ArrayList listDepartment = (ArrayList)request.getAttribute("listDepartment");
 		ArrayList listUniversity = (ArrayList)request.getAttribute("listUnivsersity");
%>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
<script>
	//CHECKING COOKIE
	var ca = document.cookie.split(';');
	var langsetted = false;
	for(var i=0; i<ca.length; i++) {
	    var c = ca[i];
	    while (c.charAt(0)==' ') c = c.substring(1);
	    if (c.indexOf("lang")==0){
	    	langsetted = true;
	    }
	}
	if(!langsetted){
    	$.get("http://ipinfo.io", function (response) {
    		if(response.country=="KH"){
        		document.cookie = "lang=km;";
        		location.reload();
    		}
    	}, "jsonp");
    }
</script>
	<header class="header">
		<div class="row">
			<div class="columns small-12"><a href="#" class="header-logo">
					<img src="${pageContext.request.contextPath}/resources/assets/img/main_page/khmeracademy.png" alt="Khmer Academy">
					
				</a>
				
				<div class="header-inner">
					<a href="#" class="button-burger">
						<span></span>
					</a>
				
					<nav class="nav">
						
						<ul id="menu">
								<li><a href="."><spring:message code="hometext"/></a></li>
								<li><a href="elearning"><spring:message code="elearning"/></a></li>
								<li><a href="forum/index.act"><spring:message code="forum"/></a></li>
								<li><a href="tutorials/index.act"><spring:message code="tutorial"/></a></li>
								<li><a href="http://news.khmeracademy.org">ព័ត៌មាន</a></li>
								
								<% if( session.getAttribute("ka_user") != null){ %>
								<li class="dropdown">
								  <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #fff">
									<img src="uploads/<%-- <%=usr.getUserimageurl() %> --%>" class="avatar img-circle" alt="Avatar" width="30px">
									<strong><%-- <%= usr.getUsername() %> --%> Vuthea</strong>
								  </a>
								  <ul class="dropdown-menu square primary margin-list-rounded with-triangle">
									<li><a href="elearning/account.act"><spring:message code="accinfo"/></a></li>
									
									<li><a class="dropdown-toggle" href="#" data-reveal-id="form-chpwd">Change password</a></li>
									<li><a href="elearning/mypublicprofile.act">My public profile</a></li>
									<li class="divider"></li> 
									
									<li><a href="logout.act">Log out</a></li>
								  </ul>
								</li>
								<% }else{ %>
								
								<li>
									<a  class="dropdown-toggle" href="#" data-reveal-id="form-login">
										<strong><spring:message code="login"/></strong>
									</a>
								</li>
								<li>
									<a data-reveal-id="form-register"  href="#" >
									<spring:message code="signup"/>
									</a>
								</li>
								
								<% } %>
								
								<!-- <li>
									<ul class="ulflag">
										<li class="liflag"><a onclick="setCookie('lang', 'km')" href="#"><i><img src="uploads/Cambodia-Flag.png" class="img-responsive" alt="Khmer" title="Khmer"> </i></a></li>
										
										<li class="liflag"><a onclick="setCookie('lang', 'en')"  href="#"><i><img src="uploads/United-Kingdom-flag.png" class="img-responsive" alt="English" title="English" ></i></a></li>
									</ul>
								</li> -->
								
							  </ul>
							  
					</nav><!-- /.nav -->
			
							<!-- Form popup -->
								<div id="form-login" class="reveal-modal tiny" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog" style="border-radius:5px">
									<form id="myformlogin" data-abide>
										<div class="form-group">
										<label for="exampleInputEmail1"><h3><spring:message code="loginuracc"/></h3></label>
									  </div>
									  
									  <div class="form-group">
										<label for="exampleInputEmail1"><spring:message code="email"/></label>
										<input required type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
										<small class="error">Email is required.</small>
									  </div>
									  <div class="form-group">
										<label for="exampleInputPassword1"><spring:message code="password"/></label>
										<input required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
										<small class="error">Password is required.</small>
									  </div>
									  <div class="form-group">
									  	<span id="displaylogin" style="color: red; font-family: Lato,Calibri,Arial,sans-serif;"></span>
									  </div>
									  <div class="form-group">
									  	<div class="col-lg-offset-5">
									 		 <!-- <button type="button" onclick="$.magnificPopup.close();" class="btn btn-default btn-perspective">Close</button> -->
									 		 <button type="submit" onclick="login()" class="button tiny success radius"><spring:message code="login"/></button>
									 		 
										</div>
									   </div>
									   
									   <div class="form-group">
									  	<div class="col-lg-offset-5">
									 		  <label>
												 <span><a class="dropdown-toggle" href="#" data-reveal-id="forgotpwd" ><spring:message code="forgetpass"/></a></span>
											  </label>
										</div>
									   </div>
									   
									    <div class="form-group">
									  	<div class="col-lg-offset-4">
									 		  <label>
												 <spring:message code="donthaveacc"/> <span><a class="dropdown-toggle" href="#" data-reveal-id="form-register"><spring:message code="signup"/></a></span>
											  </label>
										</div>
									   </div>
									</form>
									  
									 <a class="close-reveal-modal" aria-label="Close">&#215;</a>   
								</div>
								
								
								
								<div id="form-register" class="reveal-modal tiny" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog" style="border-radius:5px">
									
									 <div class="form-group">
										<label for="exampleInputEmail1"><h3> <spring:message code="createacc"/></h3></label>
									  </div>
									  
																																			
										<form class="form-horizontal" id="myformvalidator" action="actionregisteruser.act" method="post" data-abide>	
										<div class="col-sm-12">	
										<div class="form-group">
											<label class="control-label"> <spring:message code="username"/><span class="required">*</span></label>
											<div>
												<input type="text" class="form-control" name="username" required  />
												 <small class="error">Name is required and must be a string.</small>
											</div>
										</div>
		
										<div class="form-group">
											<label class="control-label"> <spring:message code="email"/><span class="required">*</span></label>
											<div>
												<input type="text" class="form-control" id="txtemail" name="email" onblur="checkemail()" required/>
												 <small class="error">An email address is required.</small>
											</div>
											
											<small id="emailvalid" style="display: block; color: red; font-size: 14px;"  class="help-block"></small>
										</div>
										<%if(listDepartment!=null){ %>
										<div class="form-group">
											<label class="control-label"><spring:message code="department"/><span class="required">*</span></label>
											<select name="department" class="form-control">
												<%-- <%for(int i=0;i<listDepartment.size();i++){ 
												Department department = (Department)listDepartment.get(i);
												%>
												<option value="<%=department.getDepartmentId()%>"><%=department.getDepartmentName() %></option>
												<%} %> --%>
												<option value="12">Other</option>
											</select>
											
										</div>
										<div class="form-group">
											<label class="control-label"><spring:message code="school"/><span class="required">*</span></label>
											<select name="university" class="form-control">
												<%-- <%for(int i=0;i<listUniversity.size();i++){ 
												University university = (University)listUniversity.get(i);
												%>
												<option value="<%=university.getUniversityId()%>"><%=university.getUniversityName() %></option>
												<%} %> --%>
												<option value="36">Other</option>
											</select>
										</div>
										<%} %>
										<div class="form-group">
											<label class="control-label"><spring:message code="password"/><span class="required">*</span></label>
											<div class="password-field">
												<input id="password" type="password" class="form-control" name="password" required />
												 <small class="error">An password is required.</small>
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label"><spring:message code="confirmpwd"/><span class="required">*</span></label>
											<div class="password-confirmation-field">
												<input type="password" class="form-control" name="confirmpassword" required data-equalto="password" />
												 <small class="error">The password did not match.</small>
											</div>
										</div>
										
										<div class="form-group">
												<label class="control-label"><spring:message code="gender"/><span class="required">*</span></label>
												<div >
													
												<input required type="radio" name="gender" value="male" required="" data-bv-notempty-message="The gender is required" data-bv-field="gender"> <spring:message code="male"/>
													
													
												<input required type="radio" name="gender" value="female" > <spring:message code="female"/>
														
												 <small class="error">An gender is required.</small>
											</div>
										</div>
										</div>
									
																		
										<!-- Button Post -->
										<div class="form-group">
											<div class="col-lg-offset-5">
												
												<button class="button tiny success radius" id="msignup" type="submit"><spring:message code="signup"/></button>
											</div>
										</div>
										<!-- Button Post -->
										
													
																
										<!-- /From -->
										</form>	
										 <a class="close-reveal-modal" aria-label="Close">&#215;</a>							
								</div>
								
							     <div id="form-chpwd" class="reveal-modal tiny" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog" >
									
									  <div class="form-group">
										<label for="choldpwd">Old Password<span class="required">*</span></label>
										<input type="password" class="form-control" id="choldpwd" name="choldpwd" placeholder="Enter Old Password" onchange="checkcholdpwd()">
									  	<small id="choldvalid" style="display: block; color: red; font-size: 14px;"  class="help-block"></small>
									  </div>
									  <div class="form-group">
										<label for="chpassword">New Password<span class="required">*</span></label>
										<input type="password" class="form-control" id="chpassword" name="chpassword" placeholder="New Password" required>
										 <small class="error">The password required.</small>
									  </div>
									  <div class="form-group">
										<label for="chconfirmpassword">Confirm Password<span class="required">*</span></label>
										<input type="password" class="form-control" id="chconfirmpassword" name="chconfirmpassword" placeholder="Confirm Password" required data-equalto="chpassword" >
										 <small class="error">The password did not match.</small>
									  </div>
									  <div class="form-group">
									  	<span id="display" style="color: red; font-family: Lato,Calibri,Arial,sans-serif;"></span>
									  	 <small id="cantchangepwd" style="display: block; color: red; font-size: 14px;"  class="help-block"></small>
									  </div>
									 
									  <div class="form-group">
									  	<div class="col-lg-offset-5">
									 		 <button class="btn btn-info btn-perspective" id="chsubmit" >Change</button>
										</div>
									   </div>
									   
								</div>
								
								
								
								<!-- Form popup -->
								<div id="forgotpwd" class="reveal-modal tiny" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
									
									  <div class="form-group">
										<label for="exampleInputEmail1"><h3>Forgot Password</h3></label>
									  </div>
									  
										  <div class="form-group">
											<label for="exampleInputEmail1">Your Email address</label>
											<input type="email" class="form-control" id="forgotpwdemail" placeholder="Enter email">
											<small data-bv-validator="notEmpty" id="ifnull" class="help-block" style="color:red;display:none">The email address is required and can't be empty</small>
										 	<small data-bv-validator="notEmpty" id="ifnot" class="help-block" style="color:red;display:none">Incorrect email address!</small>
										  </div>
										  
										
										  
										  <div class="form-group" id="setting"  style="display:none">
										  		<div class="col-lg-offset-5">
													<img src="${pageContext.request.contextPath}/resources/assets/img/SendingMail.gif" height="120px"  >
												</div>
										  </div>
										  
										  
										  <div class="form-group">
										  	<div class="col-lg-offset-4">
										 		 <!-- <button type="button" onclick="$.magnificPopup.close();" class="btn btn-default btn-perspective">Close</button> -->
										 		 <button id="btresset" class="btn btn-info btn-perspective">Resset password</button>
											</div>
										   </div>  
									   
								</div>
								
								<!-- Form change password -->
								<div id="frmchangepwd" class="reveal-modal tiny" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
									
									  <div class="form-group">
										<label for="exampleInputEmail1"><h3>Resset Password</h3></label>
									  </div>
									  
									  <div class="form-group">
												<label  style="color:green">Please check your email address to see this code!</label>
												<input type="text" class="form-control" id="code" placeholder="Code">
												
												<small data-bv-validator="notEmpty" id="ifcodenot" class="help-block" style="color:red;display:none">This code is invalid.</small>
												<small data-bv-validator="notEmpty" id="ifcodenull" class="help-block" style="color:red;display:none">Code is required and can't be empty!</small>
										</div>
										
										<div class="form-group">
												<label>Email</label>
												<input type="text" readonly="readonly" class="form-control" id="ch-email">
										</div>
										
										<div class="form-group" id="notmatch" style="display:none">
												<label style="color:red">The password and its confirmed password are not match</label>
										</div>
										
										<div class="form-group">
												<label>New password</label>
												<input type="text"  class="form-control" id="ch-pwd" >
												<small data-bv-validator="notEmpty" id="ifpwdnull" class="help-block" style="color:red;display:none; font-size:14px;">Password is required and can't be empty!</small>
										</div>
										
										<div class="form-group">
												<label>Confirm new password</label>
												<input type="text"  class="form-control" id="ch-confirm-pwd">
												<small data-bv-validator="notEmpty" id="ifconpwdnull" class="help-block" style="color:red;display:none">Password is required and can't be empty!</small>
										</div>
												  
										<div class="form-group">
											<div class="col-lg-offset-4">
												<button type="button" onclick="$.magnificPopup.close();" class="btn btn-default btn-perspective">Close</button>
												<button id="btsave" class="btn btn-info btn-perspective">Save</button>
											</div>
										 </div>
									  
									   
									  
								</div>
								
								
								
								<div id="finalfrm" class="reveal-modal tiny" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
									 <div class="form-group">
										<label for="exampleInputEmail1"><h3>Resset Password</h3></label>
									  </div>
									  
									  <div class="form-group">
											<label  style="color:green">Your resset password get successfully. Please <span class="inline-popups"><a class="dropdown-toggle" href="#form-login" data-effect="mfp-zoom-in">login</a></span> again!</label>
									  </div>
										
									  <div class="form-group" id="processing">
										  		<div class="col-lg-offset-5">
													<img src="${pageContext.request.contextPath}/resources/assets/img/processing.gif" height="150px"  >
												</div>
									  </div>
									  
								</div>				
					
				
					<!-- <div class="header-actions">
						<a href="page-donate.html" class="button">Donate</a>
					</div> --><!-- /.header-actions -->
				</div><!-- /.header-inner --></div><!-- /.columns small-12 -->
		</div><!-- /.row -->
	</header><!-- /.header -->
	
			<script>
			 $("#clickshownav").click(function(){
				$("#mynav").slideToggle(0);
			})	;	 
			
			function signup(){
				$.post("register.act" , 
						{ 
					exampleInputEmail1 : $("#emailregister").val()
							 
							
						}, 
							function(data){
						if(data=="Success")
							alert(1);
							
				});
			}
			function checkemail(){
				
				$.post("checkemail.act" ,
						{
					txtemail : $("#txtemail").val()
					
						},
						function(data){
							
							if(data=="Success"){
								$("#txtemail").val(null);
								$("#emailvalid").text("Duplicated Email. Please Try New Email.");								
								$("#msignup").disable();
								
								
							}else{
								$("#emailvalid").text("");
								
							}
						}
				
				);				
			}
			
			
			$("#myformlogin").submit(function(e){
				e.preventDefault();
				login();
			});
			
			function login(){
				if($("#exampleInputEmail1").val()==""){
					$("#display").text("Email Cannot Empty!");
				}
				$.post("login.act" , 
						{ 
					exampleInputEmail1 : $("#exampleInputEmail1").val(),
					exampleInputPassword1 : $("#exampleInputPassword1").val()
							
						}, 
					 function(data){							
							//location.href="index.act";
						if(data=="Success"){
							window.location.reload();
						}else{
							document.getElementById("displaylogin").innerHTML="Invalid Email Or Password";
							$("#exampleInputPassword1").val(null);
						}
							
				});
			}
			
			
			$("#chsubmit").click(function(){
				
				$.post("changeuserpassword.act", {
					myoldpwd : $("#choldpwd").val(),
					mynewpwd : $("#chpassword").val()
				}, 
				function(data){
					if(data=="Success"){
						location.reload();
					}else{
						$("#cantchangepwd").text("Invalid Password! Please check your old or new password!");
					}
				});
			});
			
			
			function checkcholdpwd(){
				
			$.post("checkoldpassword.act" ,
					{
				
				oldpassword : $("#choldpwd").val()
				
					},
					function(data){
						if(data=="Success"){
							$("#choldvalid").text("");
							$("#chsubmit").attr("type", "submit");								
							
						}else{
							
							$("#choldpwd").val("");
							$("#choldvalid").text("Password Not Valid. Please Entry Again!");
							$('input[type="submit"]').attr('disabled','disabled');
							
						}
					}
			
			);				
		}

								$(function () {
									
									$("#btresset").click(function(){
										if($.trim($("#forgotpwdemail").val()) == ""){
											$("#ifnull").css("display","block");
										}else{
											$("#setting").css("display","block");	
											$.post("sendmailtochpwd.act", { forgotpwdemail : $("#forgotpwdemail").val() } , function(data){
												if(data == "no"){
													$("#setting").css("display","none");	
													$("#ifnull").css("display","none");
													$("#ifnot").css("display","block");
												}else if(data =="sent"){
													$("#ifnull").css("display","none");
													$("#ifnot").css("display","none");
													$("#setting").css("display","none");
													
													$("#ch-email").val($("#forgotpwdemail").val() );
													
													$.magnificPopup.open({
												        type: 'inline',
												        items: {src: '#frmchangepwd'},
												        preloader: false,
												        modal: true,
												        delegate: 'a',
														removalDelay: 500, //delay removal by X to allow out-animation
														midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
													});
													
													
													
												}else{
													alert("Error");
												}
											});
											
											
										}
									
										
									});
									
									$("#btsave").click(function(){
										if($.trim($("#code").val()) == ""){
											$("#ifcodenull").css("display","block");
										}else{
											$("#ifcodenull").css("display","none");
										}
										if($.trim($("#ch-pwd").val()) == ""){
											$("#ifpwdnull").css("display","block");
										}else{
											$("#ifpwdnull").css("display","none");
										}	
										if($.trim($("#ch-confirm-pwd").val()) == ""){
											$("#ifconpwdnull").css("display","block");
										}else{
											$("#ifconpwdnull").css("display","none");
										}
										
										if($.trim($("#ch-pwd").val()) != "" && $.trim($("#ch-confirm-pwd").val()) != ""){
											
											if( $.trim($("#ch-pwd").val()) == $.trim($("#ch-confirm-pwd").val()) ){
												$("#notmatch").css("display","none");
												
												$.post("ressetpwd.act", { 
													oldpwd : $.trim($("#code").val())  ,  
													newpwd : $.trim($("#ch-pwd").val())   , 
													email: $.trim($("#ch-email").val()) 
													
												} , function(data){
													 if(data =="Resset fail"){
														 $("#ifcodenot").css("display","block");
													 }else{
														 $("#ifcodenot").css("display","none");
														 
														 $.magnificPopup.open({
														        type: 'inline',
														        items: {src: '#finalfrm'},
														        preloader: false,
														        modal: true,
														        delegate: 'a',
																removalDelay: 500, //delay removal by X to allow out-animation
																midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
														});
														 
														 $("#processing").css("display","none");
													 }
												});
												
												
											}else{
												$("#notmatch").css("display","block");
											}
											
										}
										
									});
								});
								
				
			function setCookie(key, value){
				document.cookie = key + "=" + value;
				document.location.reload(true);
			}			
		</script>
		<script src="${pageContext.request.contextPath}/resources/sources/ienotsupport.js"></script>
		