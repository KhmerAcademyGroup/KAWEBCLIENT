<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- BEGIN FOOTER -->
<footer class="">
	<div class="container">
		<div class="row">
		
			<div class="col-sm-6 col-md-2">
				<h4>About</h4>
				<ul class="list">
					<li><a href="${pageContext.request.contextPath}/about">Our mission</a></li>
					<li><a href="${pageContext.request.contextPath}/about/people">People</a></li>
<%-- 					<li><a href="${pageContext.request.contextPath}/about/volunteer">Our volunteers</a></li> --%>
					<li><a href="${pageContext.request.contextPath}/about/supporter">Our Supporters</a></li>
					<li><a href="${pageContext.request.contextPath}/about/partner">Our partners</a></li>
					<li><a href="#${pageContext.request.contextPath}/about/contact">Contact us</a></li>
				</ul>
			</div>
			
			<div class="col-sm-6 col-md-2">
				<h4>Service</h4>
				<ul class="list">
					<li><a href="${pageContext.request.contextPath}/elearning">E-Learning</a></li>
					<li><a href="${pageContext.request.contextPath}/tutorial">Tutorials</a></li>
					<li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
				</ul>
			</div>
			
			<div class="col-sm-6 col-md-2">
				<h4>Contribute</h4>
				<ul class="list">
					<li><a href="https://www.facebook.com/KhmerAcademy.Org/" target="_blank">Facebook</a></li>
					<li><a href="https://plus.google.com/+KhmerAcademyOrg/posts" target="_blank">Google+</a></li>
					<li><a href="https://www.youtube.com/channel/UCnE8zj9WeCl0Jvi8mX6olww" target="_blank">Youtube</a></li>
				</ul>
			</div>
			
			<div class="col-sm-6 col-md-2">
				<h4>Contribute</h4>
				<ul class="list">
					<li><a href="${pageContext.request.contextPath}/about/contribute">Donate</a></li>
					<li><a href="${pageContext.request.contextPath}/about/contribute">Volunteer</a></li>
				</ul>
			</div>
			
			<%-- <div class="col-sm-6 col-md-4">
				<h4><spring:message code="contactus"/></h4>
				
				<p>
				<spring:message code="contactustext"/>
				
				</p>
			</div>
			<div class="clearfix visible-sm"></div> --%>
			
			<div class="col-sm-6 col-md-3">
				<h4><spring:message code="followus"/></h4>
				<div class="fb-like-box" data-href="https://www.facebook.com/KhmerAcademy.Org" data-colorscheme="dark" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
			</div><!-- /.col-sm-3 -->
		</div><!-- /.row -->
	</div><!-- /.container -->
</footer><!-- /.section -->

<div class="footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<spring:message code="copyright"/>
			</div><!-- /.col-sm-5 -->
			<!-- <div class="col-sm-7 text-right">
				<ul class="list-inline">
				  <li><a href="#fakelink">All Khmer News</a></li>
				  <li><a href="#fakelink">Employees Record</a></li>
				  <li><a href="#fakelink">Memo</a></li>
				</ul>
			</div> -->
		</div><!-- /.row -->
	</div><!-- /.container -->
</div><!-- /.footer -->
<!-- END FOOTER -->



<!-- BEGIN BACK TO TOP BUTTON -->
<div id="back-top">
	<i class="fa fa-chevron-up"></i>
</div>
<!-- END BACK TO TOP -->

<!--
===========================================================
END PAGE
===========================================================
-->

		<!-- Modal -->
								
		
		<div id="p-frmLogin" class="ka-popup" style="display: none;width:70%;    margin-top: 100px;">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>x</span></span>
					</button>
					
					<h4 class="bolded">Login</h4>

				</div>
				<div class="modal-body">
					
					
					<div class="row">
					
					<form class="form-horizontal" id="frmLogin" action="${pageContext.request.contextPath}/login" method="POST">
	                    
	                    <div class="col-lg-6">
	                    	
	                    	<h5 class="bolded">Login with you social accounts</h5>	
	                	    <div class="form-group ">
	                	    	<div class="col-lg-12">
	                				<button style="background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block"><i class="fa fa-facebook"></i> Facebook</button>
	                			</div>
	                		</div>			
	                    	
	                    	<hr style="margin: 20px;">
	                    	
	                    	<h5 class="bolded">Login with you Khmer Academy accounts</h5>	
	                    	
		                    <div id="message"></div>
		                    
		                    <div class="form-group ">
		                        <div class="col-lg-12">
		                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="ka_email" id="ka_email" placeholder="Email">
		                        </div>
		                    </div>
		
		                    <div class="form-group">
		                        <div class="col-lg-12">
		                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is incorrect!')" oninput="setCustomValidity('')" name="ka_password"  id="ka_password" placeholder="Password">
		                        </div>
		                    </div>
		
		                    <div class="form-group ">
		                        <div class="col-lg-12">
		                            <div class="checkbox checkbox-primary">
		                                <input id="checkbox-signup" type="checkbox">
		                                <label for="checkbox-signup">
		                                    Remember me
		                                </label>
		                            </div>
		                            
		                        </div>
		                    </div>
		                    
		                    <div class="form-group text-center m-t-40">
		                        <div class="col-lg-12">
		                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit">Login</button>
		                        </div>
		                    </div>
		
		                    <div class="form-group m-t-30">
		                        <div class="col-sm-7">
		                            <a  href="#reset" id="btFrmreset"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
		                        </div>
		                        <div class="col-sm-5 text-right">
		                            <a href="javascript:" class="btSignUp">Create an account</a>
		                        </div>
		                    </div>
	                  
	                  	 </div>
	                    
	                    <div class="col-lg-6">
	                			
	                		<h5 class="bolded">Login with social accounts</h5>	
	                		<button style="background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block"><i class="fa fa-facebook"></i> Facebook</button>
	                			
	               		</div>
	                
	                
	                </form>
	                
	                
	                  </div>
	                   
	              
	                
					
				</div>
			</div>
		</div>
		
		
		<div id="p-frmSignUp" class="ka-popup" style="display: none;width: 70%;">
			<div class="modal-content" style="top:90px">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>x</span></span>
					</button>
					
					<h4 class="bolded">Sign up Khmer Academy account and start Learning</h4>

				</div>
				<div class="modal-body" >
					
					<form class="form-horizontal m-t-20" id="frmSignUp" action="${pageContext.request.contextPath}/signup" method="POST">
	                    
	                    <div id="message-re"></div>
	                    
	                    
	                     <div class="col-lg-6">
			                    <div class="form-group ">
			                        <div class="col-lg-12">
			                        	<label>Email <span style="color:red">*</span></label>
			                            <input class="form-control rounded bold-border" type="email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="email" id="email" placeholder="Email">
			                        </div>
			                    </div>
			                    
			                    <div class="form-group ">
			                        <div class="col-lg-12">
			                        	<label>Username <span style="color:red">*</span></label>
			                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('Username is required!')" oninput="setCustomValidity('')" name="username" id="username" placeholder="Username">
			                        </div>
			                    </div>
			
			                    <div class="form-group">
			                        <div class="col-lg-12">
			                        	<label>Password <span style="color:red">*</span></label>
			                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is required!')" oninput="setCustomValidity('')" name="password"  id="password" placeholder="Password">
			                        </div>
			                    </div>
			                    
			                    <div class="form-group">
			                        <div class="col-lg-12">
			                        	<label>Confirm password <span style="color:red">*</span></label>
			                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The Confirm Password is required!')" oninput="setCustomValidity('')" name="repassword"  id="repassword" placeholder="Confirm Password">
			                        </div>
			                    </div>
			            </div>
			            
			            <div class="col-lg-6">        
			                    <div class="form-group">
			                    	<div class="col-lg-12">
			                    			<label>Department <span style="color:red">*</span></label>
											<select placeholder="Choose a department" class="form-control rounded bold-border" id="getDepartment">
												
											</select>
									</div>
								</div>
								
			                    <div class="form-group">
			                    	<div class="col-lg-12">
			                    			<label>University <span style="color:red">*</span></label>
											<select placeholder="Choose a university" class="form-control rounded bold-border" id="getUniversity">
												
											</select>
									</div>
								</div>
								
								<div class="form-group">
			                    	<div class="col-lg-12">
										<h5 class="bolded">Sign up with social accounts</h5>	
	                					<button style="background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block"><i class="fa fa-facebook"></i> Facebook</button>
	                				</div>
								</div>
						</div>
	                    
	                    
	                    <div class="form-group text-center m-t-40">
	                        <div class="col-xs-12">
	                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit">Sign Up</button>
	                        </div>
	                    </div>
		
		 				<div class="form-group text-center m-t-40">
	                        <div class="col-xs-12">
	                            Already have an account? <a href="#" id="btSLogin">Login</a>
	                        </div>
	                    </div>
	                    
	                </form>
					
				</div>
			</div>
		</div>
		
		
									<div id="frmreset" class="ka-popup" style="display: none;width: 70%;">
										  
										  <div class="modal-content">
												<div class="modal-header">
								
													<button type="button" class="close" aria-hidden="true">
														<span class="button b-close"><span>x</span></span>
													</button>
													
													<h4 class="bolded">Reset Password</h4>
								
												</div>
												<div class="modal-body" >
													
													<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist" >
													<label> Enter your email here</label>
													<div class="input-group">
													
                                      						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>                                      
                                     						<input type="text" class="form-control" name="email" id="emailaddress" placeholder="Enter your email !">
                                   						 </div>
														 <br/>													 																												 
														 	 <input type="button" id="btn_submit"   class="btn btn-success" value="Submit">
														 	 <img src="${pageContext.request.contextPath}/resources/assets/img/sending.gif" class="sending"/><label class="sending">Sending to your email...</label>
														 	 &nbsp;&nbsp;&nbsp;<label class="check_your_email" style="color:green;">We have sent a link to reset your password! Please go to your email!</label>
													</form> 
													
												</div>
											</div>
											
											
											
										  
										</div><!-- /#DefaultModal -->	
		
		


										<div id="frmSendMailToConfrim" class="ka-popup" style="display: none;width: 70%;">
										  
										  <div class="modal-content">
												<div class="modal-header">
								
													<button type="button" class="close" aria-hidden="true">
														<span class="button b-close"><span>x</span></span>
													</button>
													
													<h4 class="bolded">Please provide your email that you have registered with Khmer Academy!</h4>
								
												</div>
												<div class="modal-body" >
													
													<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist" >
													
													<div id="message-resend"></div>
													
													<label> Enter your email here</label>
													<div class="input-group">
													
                                      						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>                                      
                                     						<input type="text" class="form-control" name="email" id="confirm_email" placeholder="Enter your email !">
                                   						 </div>
														 <br/>													 																												 
														 	 <input type="button" id="btn_submit_again"   class="btn btn-success" value="Submit">
														 	 <img src="${pageContext.request.contextPath}/resources/assets/img/sending.gif" class="sending"/><label class="sending">Sending to your email...</label>
														 	 &nbsp;&nbsp;&nbsp;<label class="check_your_email" style="color:green;">we have sent you a new link to confirm your account. Please go to your email!</label>
													</form> 
													
												</div>
											</div>
										  
										</div>
		
		
<!--
===========================================================
Placed at the end of the document so the pages load faster
===========================================================
-->
<!-- MAIN JAVASRCIPT (REQUIRED ALL PAGE)-->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/retina/retina.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/mixitup/jquery.mixitup.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/chosen/chosen.jquery.min.js" ></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/datepicker/bootstrap-datepicker.js" ></script>

<script src="${pageContext.request.contextPath}/resources/assets/plugins/validator/bootstrapValidator.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/validator/myValidator.js"></script>


		



<script>
	$(document).ready(function(){
		$(function(){
		 var shrinkHeader = 250;
		  $(window).scroll(function() {
			var scroll = getCurrentScroll();
			  if ( scroll >= shrinkHeader ) {
				   $('.top-navbar').addClass('shrink-nav');
				   $('.top-navbar').addClass('dark-color');
				}
				else {
				   $('.top-navbar').removeClass('shrink-nav');
				   $('.top-navbar').removeClass('dark-color');
				}
		  });
			function getCurrentScroll() {
				return window.pageYOffset || document.documentElement.scrollTop;
			}
		});
	})
</script>

<script src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>
<!-- BPOP UP -->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bpopup.min.js"></script>
<!-- Progress Bar -->
<script src="${pageContext.request.contextPath}/resources/assets/js/progressbar.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.blockUI.js"></script>
<!-- jQuery Template -->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.tmpl.min.js"></script>



 
<script type="text/javascript">
            /* ==============================================
            Counter Up
            =============================================== */
            $(document).ready(function(){
               
            	
            	$(document).on('click',".btLogin", function(){ 
                	$("#frmLogin").trigger("reset");
                	$("#p-frmLogin").bPopup(/* {modalClose: false} */);
// 					KA.createProgressBar();	
// 					setTimeout(function(){
// 						KA.destroyProgressBar();
// 					}, 1000 );
                	
                });
                
				$("#frmLogin").submit(function(e){
           		
	         		  e.preventDefault(); // alert($(this).serialize());
	         		  frmData = { ka_username : $("#ka_email").val(),
	         				  	  ka_password : $("#ka_password").val()
	         				     }; 
	         		 // alert( JSON.stringify(frmData) + "   "+$("#ka_password").val());
	         		  KA.createProgressBarWithPopup();
	         		  $.ajax({
		    	            url: "${pageContext.request.contextPath}/login",
		    	            type: "POST",
		    	            datatype : "JSON",
		    	            data: frmData, 
		    	            success: function(data) {
		    	            	KA.destroyProgressBarWithPopup();
		    	            	/* if(data == "User account is locked"){
		    	            		alert("3 "+data);
		    	            	}else if(data == "User is disabled"){
		    	            		alert("2 "+data);
		    	            	}else  */
		    	            	console.log(data);
		    	            	if(data == "Bad credentials"){
		    	            		$("#message").replaceWith('<div id="message" class="alert alert-danger alert-bold-border square fade in alert-dismissable"> '+ 
		    	            		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
										  				   '<strong class="alert-link">Invalid username or password! please try again!</strong>'+ 
														   '</div>');
		    	            	}else if(data == 'false'){
		    	            		$("#message").replaceWith('<div id="message" class="alert alert-danger alert-bold-border square fade in alert-dismissable"> '+ 
	            		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
							  				   '<strong class="alert-link">Your email is not yet verify. Please go to your email to verify!</strong>'+ 
											   '<br/><a href="#" id="btFrmSendMailToConf">Not yet receive mail click here!</a>'+
							  				   '</div>');
		    	            	}else{
									$("#message").replaceWith('<div id="message" class="alert alert-success alert-bold-border square fade in alert-dismissable"> '+ 
 	            		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
								  				   '<strong class="alert-link">Login successfully!</strong>'+ 
												   '</div>');
		    	            		setTimeout(function(){
		    	            			location.href = data;
		    	            		}, 500 );
		    	            		
		    	            	}
		    	            	
		    	            },
		    	         	error: function(data){
		    	         		KA.destroyProgressBarWithPopup();
		    	         		console.log(data);
		    				}
		    	        });
	         			
					});
                
                
                
                
                // SIgn up
                $(document).on('click',".btSignUp", function(){   
                	$("#p-frmLogin").bPopup().close();
                	$("#frmSignUp").trigger("reset");
                	$("#p-frmSignUp").bPopup(/* {modalClose: false} */);
                	if( $('#getDepartment').has('option').length == 0 || $('#getUniversity').has('option').length == 0) {
                		listDepartment_University();               		
                	}
// 					KA.createProgressBar();	
// 					setTimeout(function(){
// 						KA.destroyProgressBar();
// 					}, 1000 );
                	
                })
                
                $(document).on('click',"#btSLogin", function(){ 
                	$("#frmLogin").trigger("reset");
                	$("#p-frmLogin").bPopup(/* {modalClose: false} */);
                	$("#p-frmSignUp").bPopup().close();
                });
                
                listUniversity = function(){
                	KA.createProgressBarWithPopup();
    				$.ajax({ 
    				    url: "${pageContext.request.contextPath}/rest/university?page=1&item=100", 
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) { 
    						console.log(data);
    						if(data.RESP_DATA.length>0){
    							$("#university_tmpl").tmpl(data.RESP_DATA).appendTo("#getUniversity");
    						}
    	                	KA.destroyProgressBarWithPopup();
    				    },
    				    error:function(data,status,er) { 
    	                	KA.destroyProgressBarWithPopup();
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    			};
    			
    			listDepartment = function(){
    				KA.createProgressBarWithPopup();
    				$.ajax({ 
    				    url: "${pageContext.request.contextPath}/rest/department?page=1&item=100", 
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) { 
    						console.log(data);
    						$("#department_tmpl").tmpl(data.RESP_DATA).appendTo("#getDepartment");
    						
    						KA.destroyProgressBarWithPopup();
    				    },
    				    error:function(data,status,er) { 
    				    	KA.destroyProgressBarWithPopup();
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    			};
    			
    			listDepartment_University = function(){
    				KA.createProgressBarWithPopup();
    				$.ajax({ 
    				    url: "${pageContext.request.contextPath}/rest/listuniversity_department", 
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) { 
    						console.log(data);
    						$("#department_tmpl").tmpl(data.DEPARTMENT).appendTo("#getDepartment");
    						$("#university_tmpl").tmpl(data.UNIVERSITY).appendTo("#getUniversity");
    						KA.destroyProgressBarWithPopup();
    				    },
    				    error:function(data,status,er) { 
    				    	KA.destroyProgressBarWithPopup();
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    			};
    			
    			$("#frmSignUp").submit(function(e){
	         		  e.preventDefault(); // alert($(this).serialize());
	         		 // alert($("#password").val() +" "+ $("#repassword").val());
	         		  if( $("#password").val().length < 6 || $("#repassword").val().length < 6){
	         			 $("#message-re").replaceWith('<div id="message-re" class="alert alert-danger alert-bold-border square fade in alert-dismissable"> '+ 
	  		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
					  				   '<strong class="alert-link">Password must be at least 6 characters!</strong>'+ 
									   '</div>');
		         			  return; 
	         		  }
	         		  if( $("#password").val() != $("#repassword").val()){
	         			 $("#message-re").replaceWith('<div id="message-re" class="alert alert-danger alert-bold-border square fade in alert-dismissable"> '+ 
  		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
				  				   '<strong class="alert-link">Passwords do not match!</strong>'+ 
								   '</div>');
	         			  return;
	         		  }
	         		  frmData = { email : $("#email").val(),
	         				 	  username : $("#username").val(),
	         				  	  password : $("#password").val(),
	         				  	  universityId : $("#getUniversity").val(),
	         				  	  departmentId : $("#getDepartment").val()
	         		  }; 
	         		  console.log(frmData);
	         		  KA.createProgressBarWithPopup();
	         		  $.ajax({
		    	            url: "${pageContext.request.contextPath}/rest/signup",
		    	            type: "POST",
		    	            datatype : "JSON",
		    	            beforeSend: function(xhr) {
			                    xhr.setRequestHeader("Accept", "application/json");
			                    xhr.setRequestHeader("Content-Type", "application/json");
			                },
		    	            data: JSON.stringify(frmData), 
		    	            success: function(data) {
		    	            	if(data.STATUS == false){
		    	            		$("#message-re").replaceWith('<div id="message-re" class="alert alert-danger alert-bold-border square fade in alert-dismissable"> '+ 
				   		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
				 				  				   '<strong class="alert-link">There is already an account with that email! Please use another email or <a href="#reset" id="btFrmreset">reset your password!</a></strong>'+ 
				 							   '</div>');
		    	            		KA.destroyProgressBarWithPopup();
		    	            	}else{
		    	            		
		    	            		
// 		    	            		setTimeout(function(){
		    	            			
		    	            			 email =  $("#email").val();
		    	            			 $.ajax({
		    	     						url : "${pageContext.request.contextPath}/rest/sendmail?email="+email+"&type=signup",
		    	     						method: "GET",
		    	     						success: function(data){ 
// 				    		    	            	alert("Goto your email: "+email);
										
													$("#message-re").replaceWith('<div id="message-re" class="alert alert-success alert-bold-border square fade in alert-dismissable"> '+ 
									   		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
									 				  				   '<strong class="alert-link">We have sent you a message at <a href="https://'+email+'">'+email+'</a><br/> <span>Please follow the link in that message to complete your Khmer Academy account!</span> <a href="https://'+email+'" class="btn btn-primary btn-xs">Open your mail</a> <a href="#resend" id="btFrmSendMailToConf" class="btn btn-primary btn-xs">Resend email</a></strong>'+ 
									 					            '</div>');
													
													
				    		    	            	KA.destroyProgressBarWithPopup();
				    		    	            },
				    		    	         	error: function(data){
				    		    	         		console.log(data);
				    		    				}
				    		    	        });
		    	            			 
			    	            	
// 		    						}, 500 );
		    	            	}
		    	            	console.log(data);
		    	            },
		    	         	error: function(data){
		    	         		KA.destroyProgressBarWithPopup();
		    	         		console.log(data);
		    				}
		    	        });
	         			
					});
    			
    			
    			$(document).on('click',"#btFrmreset", function(){  
    				$("#p-frmLogin").bPopup().close();
    				$("#p-frmSignUp").bPopup().close();
    				$("#frmreset").bPopup();
    			});
    			
    				
    			
    			
    			
    				
    			  // Reset Password
    			  $(".sending").hide();
	  			  $(".check_your_email").hide();
	  			  $(document).on('click', "#btn_submit", function() {									  
	  					var address =$("#emailaddress").val()
	  					console.log(address);
	  					$(".sending").show();
	  					if(address==""){						
	  						$(".sending").hide(); 
	  						return 0;}
	  					else{
	  					 KA.createProgressBarWithPopup();
	  				 	 $.ajax({
	  						url : "${pageContext.request.contextPath}/rest/sendmail?email="+address+"&type=reset",
	  						method: "GET",
	  						success: function(data){  	    							    																			
	  							if(data.STATUS==true){
	  								$(".sending").hide();
	  								$(".check_your_email").show();															
// 	  								setTimeout(function(){
// 	  									$('#frmreset').bPopup().close();
// 	  									$("#emailaddress").val("");
// 	  									$(".check_your_email").hide();	
// 	  								}, 3000);
	  								
	  							}
	  							else{
	  								$(".sending").hide();
	  								alert("Invalid Email! Please try again!")
	  							}					
	  							KA.destroyProgressBarWithPopup();
	  						}
	  					});  
	  					}
	  				});
    			
    			 $(document).on('click','#btFrmSendMailToConf',function(){
    				 $("#p-frmLogin").bPopup().close();
    				 $("#p-frmSignUp").bPopup().close();
	  				 $("#frmSendMailToConfrim").bPopup();
    			 });
	  			  
    			$(document).on('click','#btn_submit_again',function(){
    				var email =$("#confirm_email").val()
    				KA.createProgressBarWithPopup();
    				$.ajax({
 						url : "${pageContext.request.contextPath}/rest/sendmail?email="+email+"&type=signup",
 						method: "GET",
 						success: function(data){ 
 							$("#message-resend").replaceWith('<div id="message-re" class="alert alert-success alert-bold-border square fade in alert-dismissable"> '+ 
		   		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
		 				  				   '<strong class="alert-link">We have sent you a message at <a href="https://'+email+'">'+email+'</a><br/> <span>Please follow the link in that message to complete your Khmer Academy account!</span> <a href="https://'+email+'" target="_blank" class="btn btn-primary btn-xs">Open your mail</a></strong>'+ 
		 					            '</div>');
		    	            	KA.destroyProgressBarWithPopup();
		    	            },
		    	         	error: function(data){
		    	         		console.log(data);
		    				}
		    	        });  
    			});
	  			  
    			
    			
    			
            });
            
            
        </script>
        
        <script id="university_tmpl" type="text/x-jquery-tmpl">
	    	<option value="{{= universityId }}">{{= universityName }}</option>
   		</script>
   		
        <script id="department_tmpl" type="text/x-jquery-tmpl">
	    	<option value="{{= departmentId }}">{{= departmentName }}</option>
   		</script>
   		
   	
   		 
   		 <jsp:include page="../shared/_search.jsp" />
   		 
   		    