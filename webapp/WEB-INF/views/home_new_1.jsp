<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>

		<jsp:include page="shared/_header.jsp" />
		<!-- Side Bar -->
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
  		
  		<!-- Carousel -->
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		
		<style>
			.owl-carousel .mitem{
				/* padding: 30px 0px; */
				margin-right: 10px; 
				color: #FFF;
				-webkit-border-radius: 3px;
				-moz-border-radius: 3px;
				border-radius: 3px;
				text-align: center;
			}
			.media-lib-item:hover{
				box-shadow: 2px 5px 10px -4px #4D4D4D;
			}
			.media-lib-item{
				box-shadow:2px 5px 10px 0px #E8E9EE;
			}
			
			.owl-carousel .item{
				padding:0px;
				margin:0px;
			}
			.owl-carousel .item img{
				width:100%;
			}
			
			
			/* 
			.akn-slider{
				border:1px solid #dadada;
				min-height:400px;
				max-height:400px;
				width:60%;
				float:left;
				overflow:hidden;
			}
			.akn-slider img{
				width:100%;
			}
			.akn-tag{
				z-index:1;
				position:absolute;
				top:16px;
			}
			.akn-tag p{
				background-color:rgb(78, 156, 80);
				color:#fff;
				padding:3px 7px;
			}
			.title{
				position:absolute;
				top:336px;
				background-color:rgba(0, 0, 0, 0.65);
				width:100%;
				padding:5px 5px 0px 5px;
			}
			.title p{
				color:#fff;
			}
			.title a{
				color:#fff;
			}
			.next-akn{
				border:1px solid #dadada;
				float:right;
				width:39%;
				min-height:400px;
			}
			.clear{
				clear:both;
			}
			
			.button-left{
				background:url('http://news.khmeracademy.org/resources/images/left.png');
				border-top-right-radius:2px;
				border-bottom-right-radius:2px;
			}
			.button-right{
				right:40.3%;
				background:url('http://news.khmeracademy.org/resources/images/right.png');
				border-top-left-radius:2px;
				border-bottom-left-radius:2px;
			}
			.button-left, .button-right{
				cursor:pointer;
				position:absolute;
				min-height:50px;
				width:30px;
				top:calc(400px / 2 - 10px);
				background-repeat:no-repeat;
				background-size:30px 50px;
				background-color:rgba(218, 218, 218, 0.52);
			}
			.button-left:hover, .button-right:hover{
				background-color:rgba(218, 218, 218, 0.68);
			} */
			
		</style> 
		
	</head>
 
	<body class="tooltips no-padding" >
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="shared/_menu.jsp" />	
		<!-- END TOP NAVBAR -->
		
<!-- 	style="background:#E8E9EE" style="background:#fff;" -->
	        <!-- Page Content -->
	        <div class="container ka-container"  >
	            		
	            		
	            			
	            			
				            <div class="row">
				            	
				            	
				            	<!-- Bannner -->
				            	<div class="row" style="margin-bottom: 20px;padding: 15px;">
										<div class="col-lg-12">
												<jsp:include page="shared/_banner.jsp"></jsp:include>
										</div>
<!-- 										<div class="col-lg-2"> -->
<%-- 												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/appstore.png"/> --%>
<!-- 												<div style="height:20px"></div> -->
<%-- 												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/playstore.png"/> --%>
<!-- 										</div> -->
								</div><!-- /.the-box -->
								
								<!--akn-slider  -->
								<div class="the-box no-border clear-padding">
										<div class="col-lg-8" style="padding-left: 0px;">
											<!-- <div class="akn-tag">
												<p>ព័ត៌មាន អាហារូបករណ៍</p>
											</div>
											<div id="owl-akn" class="owl-carousel owl-theme">
											
											</div>
											<div class="slide-button">
												<div id="sleft" class="button-left"></div>
												<div id="sright" class="button-right"></div>
											</div>  -->
											
											
											<div class="panel panel-primary panel-square panel-no-border">
													  <div class="panel-heading" style="background:rgb(78, 156, 80)">
														<h3 class="panel-title"><a href="http://news.khmeracademy.org/"  target="_blank"> <img  src="http://akn.khmeracademy.org/resources/images/logo/e7229712-6ba2-4b7a-94a0-f4c71df9eb9f.png" style="width:20px;height:20px"> All Khmer News - Scholarship </a></h3>
													  </div>
														
													<ul class="list-group currency-rates widget-currency-ticker"  id="getAKN" style="height:  380px; overflow: hidden;">
													
														  	
														  	
														  	
													</ul>
															
															  
														
											</div> 
										</div>
										
										<div class="col-lg-4">
												<div class="panel panel-primary panel-square panel-no-border">
													  <div class="panel-heading" style="background:rgb(78, 156, 80)">
														<h3 class="panel-title"><a href="${pageContext.request.contextPath}/forum"  target="_blank"> Forum - Recent Question  </a></h3>
													  </div>
														
													<ul class="list-group currency-rates widget-currency-ticker"  id="getQuestion" style="height:  380px; overflow: hidden;">
													
														  	
														  	
														  	
													</ul>
															
															  
														
											</div> 
										</div>
										<div class="clear"></div>
								</div><!--/end akn-slider  -->
								
								<!-- BEGIN OWL CAROUSEL -->
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Recent Courses</span>
										<br/>
										<br/>
									   	<div id="recent">
									    
										</div>
								</div><!-- /.the-box -->
								
								
								
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">General Education</span>
										<br/>
										<br/>
										<div id="generalEdu">	
																    
										</div>
								</div>
								
								
								
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Computer Science</span>
										<br/>
										<br/>
										<div id="computerScience">	
																    
										</div>
								</div>
								
								<div class="the-box no-border clear-padding" style="margin-bottom: 0px;">
										<span class="small-title" style="font-weight: bold;">Language</span>
										<br/>
										<br/>
										<div id="language">	
																    
										</div>
								</div>
								
								<div class="row" style="    background:rgb(78, 156, 80);text-align: center;margin: 20px 15px 20px;height: 50px;border-radius: 3px;padding-top: 3px;font-size: 30px;">
										<a style="color: white;" href="${pageContext.request.contextPath}/elearning">Browse Courses</a>
								</div>
								
							</div>
						
	                        
	                   
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    <!-- /#wrapper -->
	    
	    
	    
		
		<!-- BEGIN FOOTER -->
		<jsp:include page="shared/_footer.jsp" />
		
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>
		
		 <script id="question_tmpl" type="text/x-jquery-tmpl">
				<li class="list-group-item" style="margin-top: 0px;">
						<div class="row">
								<div class="col-xs-12 shortenString"><a  href="${pageContext.request.contextPath}/forum/question/{{= commentId }}" target="_blank">​{{= title }}</a></div>
						</div>
				</li>
		</script>
		<script type="text/javascript">
			
				 function displayNews(data){
					 var akn1 = '';
						for(var j=0; j<data.length; j++){
							akn1 +='<li class="list-group-item" style="margin-top: 0px;">'+
												'<div class="row">'+
												'<div class="col-xs-1"><a href="'+data[j].url+'" target="_blank">​<img style="width:20px;height:20px" height="20px" src="http://akn.khmeracademy.org/resources/images/logo/'+data[j].site.logo+'" alt="'+data[j].site.name+'"></a></div>'+
												'<div class="col-xs-11"><a href="'+data[j].url+'" target="_blank">​'+shorten(data[j].title,120)+'</a></div>'+
												'</div>'+
										 	'</li>';
						}
						$("#getAKN").html(akn1);
				} 
			 
		    $(document).ready(function() {
		    	
		    	// Forum 
		    		$.ajax({
							url:'${pageContext.request.contextPath}/rest/forum/question?page=1&item=8',
							method: 'GET',
							success:function(data){
								if(data.RES_DATA.length>0){
	    							$("#question_tmpl").tmpl(data.RES_DATA).appendTo("#getQuestion");
	    						}
							}
					});	
		    	// End Forum
		    	
		    	
		    	
		    	//$.post("dashboard.act", {
				//}, function(data) {
					
		    	//akn-block	
		    		/* $.ajax({
					url:'${pageContext.request.contextPath}/akn/scholarship/',
					method: 'GET',
					success:function(data){
							var akn1 = "";
							for(var j=0; j<data.length; j++){
								akn1 +='<li class="list-group-item" style="margin-top: 0px;">'+
											'<div class="row">'+
											'<div class="col-xs-5"><a href='"+data[j].url+"' target='_blank'>​"+data[j].title+"</a></div>'+
											'</div>'+
									 	'</li>';
								  	
								  	
							}
							alert(data);
							$("#geTakn").append(akn1);
						}
					});   */
		    	
					$.ajax({
						url:'${pageContext.request.contextPath}/akn/scholarship/',
						method: 'GET',
						success:function(data){
							
							console.log(data);
// 							var akn1 = '<ul class="list-group currency-rates widget-currency-ticker"  style="height: 410px; overflow: hidden;">';
// 							for(var j=0; j<data.length; j++){
// 								akn1 += akn1 +='<li class="list-group-item" style="margin-top: 0px;">'+
// 													'<div class="row">'+
// 													'<div class="col-xs-5"><a href="'+data[j].url+'" target="_blank">​"'+data[j].title+'"</a></div>'+
// 													'</div>'+
// 											 	'</li>';
// 							}
// 							akn1+="</u>";
// 							$("#getAKN").html(akn1);
							
							displayNews(data.RESPONSE_DATA);

							
						}
					});	
					
					
				/* function displaySlide(data){
					var akn1 = "";
					for(var j=0; j<data.length; j++){
						akn1 += "<div class='item'>"
								+ "<img src='${pageContext.request.contextPath}/resources/uploads/sc.jpg' alt='"+data[j].image+"'>"
									+ "<div class='title'>"
										+ "<p><a href='"+data[j].url+"' target='_blank'>​"+data[j].title+"</a></p>"
									+ "</div>"  
						  	+ "</div>"
					}
					$("#owl-akn").html(akn1);
				}
				
				$.ajax({
					url:'${pageContext.request.contextPath}/akn/scholarship/',
					method: 'GET',
					success:function(data){
						
						displaySlide(data.RESPONSE_DATA);
						
						$("#owl-akn").owlCarousel({
						      slideSpeed : 300,
						      paginationSpeed : 400,
						      singleItem:true, 
						      autoPlay:true
						});
						
						var owl = $("#owl-akn");
						
						$("#sright").click(function(){
						    owl.trigger('owl.next');
					 	})
						$("#sleft").click(function(){
						    owl.trigger('owl.prev');
						})
						
					}
				}); */ 
				
				
				//end akn-block
				
				
				$.ajax({
					url :"http://localhost:8080/KAAPI/api/elearning/playlist/playlists/recents",
					type: "GET",
					dataType: "JSON",
					 headers: {
						"Authorization": "Basic S0FBUEkhQCMkOiFAIyRLQUFQSQ=="
					 }, 
					success: function(data){ console.log(data);
						var recent="";
		 				recent = "<div id='owl-recent' class='owl-carousel owl-theme'>";
						$.each(data.RES_DATA, function(key, value){
							recent+="<div class='mitem'>"
											+"<div>"
											+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
												+"<a href='elearning/playlistdetail/"+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
									 			+"<div class='caption text-left'>"
													+"<p class='small'><a class='no-underline' href='${pageContext.request.contextPath}/elearning/playlistdetail/"+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+shorten(value.playlistName,50)+"</b></a><br>"
													+"<span class='text-muted' style='color:#4D4D4D'>"+shorten(value.description,70)+"</span></p>"
												+"</div>"
											+"</div>"
										+"</div>"
									 +"</div>";
						});
						recent+= "</div>";
						$("#recent").html(recent);
						
						var generalEdu="<div id='owl-generalEdu' class='owl-carousel owl-theme'>";
						$.each(data.HIGH_SCHOOL, function(key, value){
							generalEdu+="<div class='mitem'>"
												+"<div>"
												+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
													+"<a href='elearning/playlistdetail/"+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
										 			+"<div class='caption text-left'>"
														+"<p class='small'><a class='no-underline' href='${pageContext.request.contextPath}/elearning/playlistdetail/"+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+shorten(value.playlistName,50)+"</b></a><br>"
														+"<span class='text-muted' style='color:#4D4D4D'>"+shorten(value.description,70)+"</span></p>"
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
						}); 
							
						generalEdu+= "</div>";
						$("#generalEdu").html(generalEdu);
							
							
						var computerScience="<div id='owl-computerScience' class='owl-carousel owl-theme'>";
						$.each(data.COMPUTER_SCIENCE, function(key, value){
							computerScience+="<div class='mitem'>"
													+"<div>"
													+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
														+"<a href='elearning/playlistdetail/"+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
											 			+"<div class='caption text-left'>"
															+"<p class='small'><a class='no-underline' href='${pageContext.request.contextPath}/elearning/playlistdetail/"+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+shorten(value.playlistName,50)+"</b></a><br>"
															+"<span class='text-muted' style='color:#4D4D4D'>"+shorten(value.description,70)+"</span></p>"
														+"</div>"
													+"</div>"
												+"</div>"
											 +"</div>";
						});
							
						computerScience+= "</div>";
						$("#computerScience").html(computerScience);	
							
							
						var language="<div id='owl-language' class='owl-carousel owl-theme'>";
						$.each(data.LANGUAGES, function(key, value){
							language		+="<div class='mitem'>"
													+"<div>"
													+"<div class='thumbnail media-lib-item' style='height: 250px;padding: 0px;'>"
														+"<a href='elearning/playlistdetail/"+value.playlistId+"'><img  src='"+value.thumbnailUrl+"' alt='...'></a>"
											 			+"<div class='caption text-left'>"
															+"<p class='small'><a class='no-underline' href='${pageContext.request.contextPath}/elearning/playlistdetail/"+value.playlistId+"' style='color:#50a253;font-size: 16px;'><b>"+shorten(value.playlistName,50)+"</b></a><br>"
															+"<span class='text-muted' style='color:#4D4D4D'>"+shorten(value.description,70)+"</span></p>"
														+"</div>"
													+"</div>"
												+"</div>"
											 +"</div>";
						});
						language+= "</div>";
						$("#language").html(language);
						showme(); 
					}
		    	});
			});
			
		    function showme(){
				var owl_recent = $("#owl-recent");
				owl_recent.owlCarousel({
			    items : 5, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			     
			    var owl_generalEdu = $("#owl-generalEdu");
			     
			    owl_generalEdu.owlCarousel({
			    items : 5, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_computerScience = $("#owl-computerScience");
			     
			    owl_computerScience.owlCarousel({
			    items : 5, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_language = $("#owl-language");
			     
			    owl_language.owlCarousel({
			    items : 5, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
		    }
		    
		    function shorten(text, maxLength) {
				  var ret = text;
				  if (ret.length > maxLength) {
				  ret = ret.substr(0,maxLength-3) + " ...";
				  }
				  return ret;
		 	 }
		</script>  
		
	</body>
</html>