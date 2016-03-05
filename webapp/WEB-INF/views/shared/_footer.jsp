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
					<li><a href="#${pageContext.request.contextPath}/elearning">Facebook</a></li>
					<li><a href="#${pageContext.request.contextPath}/tutorial">Google+</a></li>
					<li><a href="#${pageContext.request.contextPath}/forum">Instagram</a></li>
					<li><a href="#${pageContext.request.contextPath}/forum">Twitter</a></li>
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

		<div id="p-frmLogin" class="ka-popup" style="display: none;width: 30%;">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>x</span></span>
					</button>
					
					<h4 class="bolded">Login to your Khmer Academy Account</h4>

				</div>
				<div class="modal-body" >
					
					<form class="form-horizontal m-t-20" id="frmLogin" action="${pageContext.request.contextPath}/login" method="POST">
	                    
	                    <div id="message"></div>
	                    
	                    <div class="form-group ">
	                        <div class="col-xs-12">
	                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="ka_email" id="ka_email" placeholder="Email">
	                        </div>
	                    </div>
	
	                    <div class="form-group">
	                        <div class="col-xs-12">
	                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is incorrect!')" oninput="setCustomValidity('')" name="ka_password"  id="ka_password" placeholder="Password">
	                        </div>
	                    </div>
	
	                    <div class="form-group ">
	                        <div class="col-xs-12">
	                            <div class="checkbox checkbox-primary">
	                                <input id="checkbox-signup" type="checkbox">
	                                <label for="checkbox-signup">
	                                    Remember me
	                                </label>
	                            </div>
	                            
	                        </div>
	                    </div>
	                    
	                    <div class="form-group text-center m-t-40">
	                        <div class="col-xs-12">
	                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit">Login</button>
	                        </div>
	                    </div>
	
	                    <div class="form-group m-t-30">
	                        <div class="col-sm-7">
	                            <a href="#"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
	                        </div>
	                        <div class="col-sm-5 text-right">
	                            <a href="javascript:" class="btSignUp">Create an account</a>
	                        </div>
	                    </div>
	                </form>
					
				</div>
			</div>
		</div>
		
		
		<div id="p-frmSignUp" class="ka-popup" style="display: none;width: 30%;">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>x</span></span>
					</button>
					
					<h4 class="bolded">Sign up Khmer Academy account and start Learning</h4>

				</div>
				<div class="modal-body" >
					
					<form class="form-horizontal m-t-20" id="frmSignUp" action="${pageContext.request.contextPath}/signup" method="POST">
	                    
	                    <div id="message-re"></div>
	                    
	                    <div class="form-group ">
	                        <div class="col-xs-12">
	                        	<label>Email <span style="color:red">*</span></label>
	                            <input class="form-control rounded bold-border" type="email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="email" id="email" placeholder="Email">
	                        </div>
	                    </div>
	                    
	                    <div class="form-group ">
	                        <div class="col-xs-12">
	                        	<label>Username <span style="color:red">*</span></label>
	                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('Username is required!')" oninput="setCustomValidity('')" name="username" id="username" placeholder="Username">
	                        </div>
	                    </div>
	
	                    <div class="form-group">
	                        <div class="col-xs-12">
	                        	<label>Password <span style="color:red">*</span></label>
	                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is required!')" oninput="setCustomValidity('')" name="password"  id="password" placeholder="Password">
	                        </div>
	                    </div>
	                    
	                    <div class="form-group">
	                        <div class="col-xs-12">
	                        	<label>Confirm password <span style="color:red">*</span></label>
	                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The Confirm Password is required!')" oninput="setCustomValidity('')" name="repassword"  id="repassword" placeholder="Confirm Password">
	                        </div>
	                    </div>
	                    
	                    <div class="form-group">
	                    	<div class="col-xs-12">
	                    			<label>Department <span style="color:red">*</span></label>
									<select placeholder="Choose a department" class="form-control rounded bold-border" id="getDepartment">
										
									</select>
							</div>
						</div>
						
	                    <div class="form-group">
	                    	<div class="col-xs-12">
	                    			<label>University <span style="color:red">*</span></label>
									<select placeholder="Choose a university" class="form-control rounded bold-border" id="getUniversity">
										
									</select>
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
               
                $(".btLogin").click(function(){ 
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
							  				   '<strong class="alert-link">Your account has not yet confirm.</strong>'+ 
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
	         		  alert($("#password").val() +" "+ $("#repassword").val());
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
				 				  				   '<strong class="alert-link">Email aleady exists</strong>'+ 
				 							   '</div>');
		    	            		KA.destroyProgressBarWithPopup();
		    	            	}else{
		    	            		$("#message-re").replaceWith('<div id="message-re" class="alert alert-success alert-bold-border square fade in alert-dismissable"> '+ 
					   		                       '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'+ 
					 				  				   '<strong class="alert-link">You have been registered succssfully</strong>'+ 
					 					            '</div>');
		    	            		
		    	            		setTimeout(function(){
		    	            			/*  frmData = { ka_username : $("#email").val(),
		   	         				             ka_password : $("#password").val()
		   	         				          }; */
		    	            			 email =  $("#email").val();
		    	            			 $.ajax({
		    	     						url : "${pageContext.request.contextPath}/rest/sendmail?email="+email+"&type=signup",
		    	     						method: "GET",
		    	     						success: function(data){ 
		    	     							
				    		    	            	alert("Goto your email: "+email);
				    		    	            	KA.destroyProgressBarWithPopup();
				    		    	            },
				    		    	         	error: function(data){
				    		    	         		console.log(data);
				    		    				}
				    		    	        });
		    	            			 
			    	            		/* $.ajax({
			    		    	            url: "${pageContext.request.contextPath}/login",
			    		    	            type: "POST",
			    		    	            datatype : "JSON",
			    		    	            data: frmData, 
			    		    	            success: function(data) {
			    		    	            	location.href = data;
			    		    	            },
			    		    	         	error: function(data){
			    		    	         		console.log(data);
			    		    				}
			    		    	        }); */
		    						}, 500 );
		    	            	}
		    	            	console.log(data);
		    	            },
		    	         	error: function(data){
		    	         		KA.destroyProgressBarWithPopup();
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
   		
   		<!-- Facebook Plugin script -->
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
		<!-- End facebook plugin -->
   		 
   		 <jsp:include page="../shared/_search.jsp" />
   		 
   		    