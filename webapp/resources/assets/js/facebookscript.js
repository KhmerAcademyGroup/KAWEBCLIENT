	window.fbAsyncInit = function() {
			FB.init({
			      appId      : '733594286732881',
			      xfbml      : true,
			      version    : 'v2.1'
			    });
		    
			  
			FB.Event.subscribe('auth.authResponseChange', function(response){
		 	 if (response.status === 'connected'){
		 		alert("Connected to Facebook");
		  		//document.getElementById("message").innerHTML +=  "<br>Connected to Facebook";
		  		//SUCCESS
		  	 }else if (response.status === 'not_authorized'){
		  		alert("Failed to Connect");
		    	//document.getElementById("message").innerHTML +=  "<br>Failed to Connect";	
		    	//FAILED
		    } else {
		    		alert("Logged Out");
		    	//document.getElementById("message").innerHTML +=  "<br>Logged Out";
		    	//UNKNOWN ERROR
		    }
			});	
			
	    };
	    
	   	function Login(){
	   		KA.createProgressBar();
			FB.login(function(response) {
			   if (response.authResponse){
				  
				   var fbname = "";
				   var fbemail ="";
				   var fbprofileimage = "";
				   FB.api('/me', function(response) {
					   
					   fbname = response.name;
					   fbemail = response.email;
					   fbprofileimage = response.id;
					   fbId =  response.id;
					   fbGender = response.gender;
					   
//					   alert(fbname + " | " + fbemail + " | " + fbprofileimage+ " | " +  fbGender +" | " + fbId); 
					   $.ajax({
							url : path+"/rest/login_with_fb",
							method: "POST",
							datatype : "JSON",
							beforeSend: function(xhr) {
				                    xhr.setRequestHeader("Accept", "application/json");
				                    xhr.setRequestHeader("Content-Type", "application/json");
				            },
				            data: JSON.stringify({ email : fbemail, scID : fbId, scType : 2 }),
							success: function(data){ 								
								if(data.USER != null){
									userLogin(data);
								}else{
									if(data.USER != null){
										userLogin(data);
									}else{
										console.log(data);
										 frmData = {  email : fbemail,
						         				 	  username : fbname,
						         				  	  scID : fbId,
						         				  	  scType : 2,
						         				  	  imageUrl : "http://graph.facebook.com/"+fbId+"/picture?type=large",
						         				  	  gender : fbGender
										 }; 
										$.ajax({
											url : path+"/rest/add_user_sc",
											method: "POST",
											datatype : "JSON",
											beforeSend: function(xhr) {
								                    xhr.setRequestHeader("Accept", "application/json");
								                    xhr.setRequestHeader("Content-Type", "application/json");
								            },
								            data: JSON.stringify(frmData),
											success: function(data){ 								
												console.log(data);
												if(data.STATUS == true){
													userLogin(data);
												}else{
													alert("OOP! Please try to register again!");
												}
											}
										});  
									}
								}
							}
						});  
					   
					   
				   });
			    	
	  			}else{
	  				console.log('User cancelled login or did not fully authorize.');
	   			}
			 },{scope: 'email,public_profile', return_scopes: true});
			
			
			
		}
	
	  function getUserInfo() {
		  FB.api('/me', function(response) {
		  var str="<b>Name</b> : "+response.name+"<br>";
		  	  str +="<b>Link: </b>"+response.link+"<br>";
		  	  str +="<b>Username:</b> "+response.username+"<br>";
		  	  str +="<b>id: </b>"+response.id+"<br>";
		  	  str +="<b>Email:</b> "+response.email+"<br>";
		  	  str +="<input type='button' value='Get Photo' onclick='getPhoto();'/>";
		  	  str +="<input type='button' value='Logout' onclick='Logout();'/>";
		  	  document.getElementById("status").innerHTML=str;
	    });
	  }
	  
	  function getPhoto(){
		  FB.api('/me/picture?type=normal', function(response) {
			  var str="<br/><b>Pic</b> : <img src='"+response.data.url+"'/>";
		  	  document.getElementById("status").innerHTML+=str;
		  	  	    
	    });	
	  }
	
	  function Logout(){
			FB.logout(function(){document.location.reload();});
	  }
	
	  function userLogin(data){
		  console.log(data.USER.email + " | " + data.USER.password);
			frmData = { ka_username : data.USER.email,
				  	  ka_password : data.USER.password
				     }; 
			$.ajax({
	            url: path+"/login",
	            type: "POST",
	            datatype : "JSON",
	            data: frmData, 
	            success: function(data) {
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
	            		}, 1 );
	            		
	            	}
	            },
	         	error: function(data){
	            	console.log(data);
				}
	        });
	  }
		
	  
	