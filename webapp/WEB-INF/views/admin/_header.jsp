<%-- <%@page import="model.dto.User"%> --%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%-- <%
	 if( session.getAttribute("ka_user") == null){
			out.println("<script>window.location.href='../index.act'; </script>");return;
	 }
 	 User usr = (User) session.getAttribute("ka_user");	
 	 
 	 
 	 
 	 if(usr.getUsertypeid() !=5 && usr.getUsertypeid() !=4  ){
 		out.println("<script>window.location.href='../index.act'; </script>");return;
 	 }
%> --%>


<script src="assets/js/jquery.min.js"></script>
<style>
			.required{
				color: red;
			}

#mysearch{
	width:55%;
}
#txtsearch{
	width:110%;
}

#frmg{
	width: 80%;
}

@media (min-width: 1030px) and (max-width: 1600px) {
	#txtsearch{
		width: 110%;
	}
}
@media (min-width: 920px) and (max-width:  1030px) {
	#txtsearch{
		width:220%;
	}
}
@media (min-width: 801px) and (max-width:  920px) {
	#txtsearch{
		width:160%;
	}
}



@media (min-width: 1255px) and (max-width: 1415px) {
	#mysearch{
		width:50%;
	}
}
@media (min-width: 1230px) and (max-width: 1255px) {
	#mysearch{ 
 		width:50%; 
	} 
 } 
 @media (min-width: 801px) and (max-width: 1230px) {
	#mysearch{ 
 		width:25%; 
	} 
	#txtsearch {
	 width: 122%;
	}
	 #frmg{
		width: 60%;
	}
 } 

 @media (max-width: 800px) {
	#mysearch{ 
 		width:100%;
	} 
	#txtsearch {
	 width: 100%;
	}
	 #frmg{
		width: 100%;
	}
	#bts{
	position: absolute;
	top: 13px;
	right: 33px;
	}
 } 

 @media (max-width: 767px) {
	#bts{
	top: 15px;
	}
 } 
 
 @media (max-width: 973px) {
	#mysearch{ 
 		display:none;
	} 
 } 
mysearch
/* @media (min-width: 1030px) and (max-width: 1415px) { */
/* 	#mysearch{ */
/* 		width:60%; */
/* 	} */
/* } */
</style>


	
	
<div class="top-navbar">
				<div class="top-navbar-inner">
					
					<!-- Begin Logo brand -->
					<div class="logo-brand">
						<a href="../"><img alt="KhmerAcademy" src="assets/img/khmeracademy.png" height="60px" ></a>
					</div><!-- /.logo-brand -->
					<!-- End Logo brand -->
					
					<div class="top-nav-content">
						
						
						
						<!-- Begin Collapse menu nav -->
						<div id="main-fixed-nav" >
							<!-- Begin nav search form -->
							
							
							<!-- Begin user session nav -->
						<% if( session.getAttribute("ka_user") != null){ %>
						 <ul class="nav-user navbar-right" id="mynav">
						 	
							<li class="dropdown">
							  <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #fff">
								<img src="../uploads/<%-- <%=usr.getUserimageurl() %> --%>" class="avatar img-circle" alt="Avatar">
								Hi, <strong><%-- <%= usr.getUsername() %> --%>Admin</strong>
							  </a>
							  <ul class="dropdown-menu square primary margin-list-rounded with-triangle">
							    <li><a href=".">Home</a></li>
							    <li><a href="../elearning/index.act">E-Learning</a></li>
								<li><a href="../forum/index.act">Forum</a></li>
								<li><a href="../tutorials/index.act">Tutorials</a></li>
								<li><a href="../elearning/account.act">Account Info.</a></li>
								
								
								<li><a href="../elearning/mypublicprofile.act">My public profile</a></li>
								<li class="divider"></li>
								
								<li><a href="../logout.act">Log out</a></li>
							  </ul>
							</li>
						</ul> 
						
						<%}else{ %>
						<!-- End user session nav -->
						
							<!-- End nav search form -->
							
							<!-- Section for not login user -->
							
							
							<ul class="nav navbar-nav navbar-right" id="mynav">
							    <li><a href="../."><strong>Home</strong></a></li>
							    <li><a href="."><strong>E-Learning</strong></a></li>
								<li><a href="../forum/index.act"><strong>Forum</strong></a></li>
								<li><a href="../tutorials/index.act"><strong>Tutorials</strong></a></li>
								<li class="inline-popups">
									<a  class="dropdown-toggle" href="#form-login" data-effect="mfp-zoom-in">
										<strong>Login</strong>
									</a>
								</li>
								<li class="inline-popups">
									<a data-toggle="dropdown" data-effect="mfp-zoom-in" class="dropdown-toggle"  href="#form-register" >
										<strong>Sign up</strong>
									</a>
								</li>
								
								</ul>
							<%} %>	
								<!-- End Section for not login user -->
								
								<!-- Sign Up success popup -->
								<div id="form-signupsucess" class="white-popup mfp-with-anim mfp-hide " >
									
									  <div class="form-group">
										<label>Thanks You For Sign Up, Please Log in</label>
										
									  </div>
									  
								</div>
								<!-- End -->
								
								<!-- Form popup -->
								<div id="form-login" class="white-popup mfp-with-anim mfp-hide" style="border-radius:5px">
									
									  <div class="form-group">
										<label for="exampleInputEmail1"><h3>Login to your account</h3></label>
									  </div>
									  
									  <div class="form-group">
										<label for="exampleInputEmail1">Email address</label>
										<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
									  </div>
									  <div class="form-group">
										<label for="exampleInputPassword1">Password</label>
										<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
									  </div>
									  <div class="form-group">
									  	<span id="display" style="color: red; font-family: Lato,Calibri,Arial,sans-serif;"></span>
									  </div>
									  <div class="form-group">
									  	<div class="col-lg-offset-5">
									 		 <!-- <button type="button" onclick="$.magnificPopup.close();" class="btn btn-default btn-perspective">Close</button> -->
									 		 <button type="submit" onclick="login()" class="btn btn-info btn-perspective">Login</button>
									 		 
										</div>
									   </div>
									   
									   <div class="form-group">
									  	<div class="col-lg-offset-5">
									 		  <label>
												 <span class="inline-popups"><a class="dropdown-toggle"  data-effect="mfp-zoom-in" href="#forgotpwd">Forgot Password?</a></span>
											  </label>
										</div>
									   </div>
									   
									    <div class="form-group">
									  	<div class="col-lg-offset-4">
									 		  <label>
												  Don't have an account?  <span class="inline-popups"><a class="dropdown-toggle"  data-effect="mfp-zoom-in" href="#form-register">Sign up</a></span>
											  </label>
										</div>
									   </div>
								</div>
								
								
								<!-- Form popup -->
								<div id="forgotpwd" class="white-popup mfp-with-anim mfp-hide" style="border-radius:5px">
									
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
													<img src="assets/img/SendingMail.gif" height="120px"  >
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
								<div id="frmchangepwd" class="white-popup mfp-with-anim mfp-hide" style="border-radius:5px">
									
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
												<small data-bv-validator="notEmpty" id="ifpwdnull" class="help-block" style="color:red;display:none">Password is required and can't be empty!</small>
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
								
								
								
								<div id="finalfrm" class="white-popup mfp-with-anim mfp-hide" style="border-radius:5px">
									 <div class="form-group">
										<label for="exampleInputEmail1"><h3>Resset Password</h3></label>
									  </div>
									  
									  <div class="form-group">
											<label  style="color:green">Your resset password get successfully. Please <span class="inline-popups"><a class="dropdown-toggle" href="#form-login" data-effect="mfp-zoom-in">login</a></span> again!</label>
									  </div>
										
									  <div class="form-group" id="processing">
										  		<div class="col-lg-offset-5">
													<img src="assets/img/processing.gif" height="150px"  >
												</div>
									  </div>
									  
								</div>
								
								<script type="text/javascript">
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
								</script>
								
								
								<div id="form-register" class="white-popup mfp-with-anim mfp-hide " style="border-radius:5px">
									
									 <div class="form-group">
										<label for="exampleInputEmail1"><h3>Create your account</h3></label>
									  </div>
									  
																																			
										<form class="form-horizontal" id="myformvalidator" action="actionregisteruser.act" method="post">	
										<div class="col-sm-12">	
										<div class="form-group">
											<label class="control-label">Username<span class="required">*</span></label>
											<div>
												<input type="text" class="form-control" name="username" />
											</div>
										</div>
		
										<div class="form-group">
											<label class="control-label">Email<span class="required">*</span></label>
											<div>
												<input type="text" class="form-control" id="txtemail" name="email" onblur="checkemail()"/>
											</div>
											
											<small id="emailvalid" style="display: block; color: red;"  class="help-block"></small>
										</div>
										
										<div class="form-group">
											<label class="control-label">School<span class="required">*</span></label>
											<div>
												<input type="text" class="form-control" name="school" />
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label">Password<span class="required">*</span></label>
											<div>
												<input type="password" class="form-control" name="password" />
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label">Confirm Password<span class="required">*</span></label>
											<div>
												<input type="password" class="form-control" name="confirmpassword" />
											</div>
										</div>
										
										<div class="form-group">
												<label class="control-label">Gender<span class="required">*</span></label>
												<div >
													<div class="radio col-sm-4">
														<label>
															<input type="radio" name="gender" value="male" required="" data-bv-notempty-message="The gender is required" data-bv-field="gender"> Male
														</label>
													</div>
													<div class="radio col-sm-4">
														<label>
															<input type="radio" name="gender" value="female" > Female
														</label>
													</div>
											
											</div>
										</div>
										</div>
									
																		
										<!-- Button Post -->
										<div class="form-group">
											<div class="col-lg-offset-5">
												
												<button class="btn btn-info btn-perspective" id="msignup" type="submit">Sign Up</button>
											</div>
										</div>
										<!-- Button Post -->
										
													
																
										<!-- /From -->
										</form>								
								</div>
								
								
								
								<div id="form-chpwd" class="white-popup mfp-with-anim mfp-hide " >
									<form id="changepwdvalidator" >
									  <div class="form-group">
										<label for="choldpwd">Old Password<span class="required">*</span></label>
										<input type="password" class="form-control" id="choldpwd" name="choldpwd" placeholder="Enter Old Password" onchange="checkcholdpwd()">
									  	<small id="choldvalid" style="display: block; color: red;"  class="help-block"></small>
									  </div>
									  <div class="form-group">
										<label for="chpassword">New Password<span class="required">*</span></label>
										<input type="password" class="form-control" id="chpassword" name="chpassword" placeholder="New Password">
										
									  </div>
									  <div class="form-group">
										<label for="chconfirmpassword">Confirm Password<span class="required">*</span></label>
										<input type="password" class="form-control" id="chconfirmpassword" name="chconfirmpassword" placeholder="Confirm Password">
									  </div>
									  <div class="form-group">
									  	<span id="display" style="color: red; font-family: Lato,Calibri,Arial,sans-serif;"></span>
									  	 <small id="cantchangepwd" style="display: block; color: red;"  class="help-block"></small>
									  </div>
									 
									  <div class="form-group">
									  	<div class="col-lg-offset-5">
									 		 <button class="btn btn-info btn-perspective" id="chsubmit" >Change</button>
										</div>
									   </div>
									   </form>
								</div>
								
								
								
							
						</div><!-- /.navbar-collapse -->
						<!-- End Collapse menu nav -->
					</div><!-- /.top-nav-content -->
				</div><!-- /.top-navbar-inner -->
			</div>
			
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
			function login(){
				//alert($("#exampleInputPassword1").val())
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
							document.getElementById("display").innerHTML="Invalid Email Or Password";
							$("#exampleInputPassword1").val(null);
						}
							
				});
			}
			
			
			$("#changepwdvalidator").submit(function(){
				
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
			
			
			
			/* function checkcholdpwd(){
				
			$.post("checkoldpassword.act" ,
					{
				
				oldpassword : $("#choldpwd").val()
				
					},
					function(data){
						if(data=="Success"){
							$("#choldvalid").text("");
							//$("#chsubmit").attr("type", "submit");								
							
						}else{
							
							$("#choldpwd").val("");
							$("#choldvalid").text("Password Not Valid. Please Entry Again!");
							$('input[type="submit"]').attr('disabled','disabled');
							
						}
					}
			
			);				
		} */
		</script>	
		<script src="assets/plugins/validator/example.js"></script>
		<script src="assets/js/myvalidator.js"></script>
								
							
