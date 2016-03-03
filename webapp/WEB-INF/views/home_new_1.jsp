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
				background-color:rgba(78, 156, 80, 0.64);
				color:#fff;
				padding:3px 7px;
			}
			.title{
				position:absolute;
				bottom:9px;
				background-color:rgba(0, 0, 0, 0.44);
				width:100%;
				padding:5px 5px 0px 5px;
			}
			.title p{
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
			}
			
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
										<div class="col-lg-10">
												<jsp:include page="shared/_banner.jsp"></jsp:include>
										</div>
										<div class="col-lg-2">
												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/appstore.png"/>
												<div style="height:20px"></div>
												<img width="100%" height="100px" src="${pageContext.request.contextPath}/resources/assets/img/main_page/playstore.png"/>
										</div>
								</div><!-- /.the-box -->
								
								<div class="the-box no-border clear-padding">
									<div class="akn-slider">
										<div class="akn-tag">
											<p>ព័ត៌មាន អាហារូបករណ៍</p>
										</div>
										<div id="owl-akn" class="owl-carousel owl-theme">
										
										</div>
										<div class="slide-button">
											<div id="sleft" class="button-left"></div>
											<div id="sright" class="button-right"></div>
										</div>
									</div>
									
									<div class="next-akn">
										Other
									</div>
									<div class="clear"></div>
								</div>
								
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
								
								
							</div>
						
	                        
	                   
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    <!-- /#wrapper -->
	    
	    
	    
		
		<!-- BEGIN FOOTER -->
		<jsp:include page="shared/_footer.jsp" />
		
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/slider/bootstrap-slider.js"></script>
		
		<script type="text/javascript">
			
			
		    $(document).ready(function() {
		    	
		    	//$.post("dashboard.act", {
				//}, function(data) {
					
				//akn-block	
				function displaySlide(data){
					var akn1 = "";
					for(var j=0; j<data.length; j++){
						akn1 += "<div class='item'>"
								+ "<img src='"+data[j].image+"' alt='"+data[j].image+"'>"
									+ "<div class='title'>"
										+ "<p>​"+data[j].title+"</p>"
									+ "</div>"  
						  	+ "</div>"
					}
					$("#owl-akn").html(akn1);
				}
				var data = [
					{
						title:'​ស្គាល់​​ម៉ាក​រថយន្ត​ល្បីៗ​ ចុះ​មាន​ដឹង​ថា​ជា​ផលិតផល​ប្រទេស​​ណា​​អត់?',
						image:'http://cdn.sabay.com/cdn/news.sabay.com.kh/wp-content/uploads/2016/03/Mazda-285x170.jpg'
					},
					 {
						title:'​បុរស​ម្នាក់​អះអាងថា​ខ្លួន​រកឃើញ​បំណែក​នៃ​ផ្នែក​យន្តហោះ​ដែល​ទំនងជា​កម្ទេច​នៃ​យន្តហោះ​ម៉ាឡេស៊ី MH370',
						image:'http://cdn01.sabay.com/cdn/news.sabay.com.kh/wp-content/uploads/2016/03/Bayern-285x170.jpg'
					 }
				];
				
				displaySlide(data);
				
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
				//end akn-block
					
					
	 			 	var recent="";
	 				recent = "<div id='owl-recent' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						recent+=	 "<div class='mitem'>"
										+"<div>"
											+"<div class='thumbnail media-lib-item'>"
												+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
									 			+"<div class='caption text-left'>"
													+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
													+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
												+"</div>"
											+"</div>"
										+"</div>"
									 +"</div>";
					} 
					
					recent+= "</div>";
					$("#recent").html(recent);
					
					var generalEdu="<div id='owl-generalEdu' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						generalEdu+="<div class='mitem'>"
										+"<div>"
											+"<div class='thumbnail media-lib-item'>"
												+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
										 		+"<div class='caption text-left'>"
													+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
													+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
												+"</div>"
											+"</div>"
										+"</div>"
									+"</div>";
					} 
						
					generalEdu+= "</div>";
					$("#generalEdu").html(generalEdu);
						
						
					var computerScience="<div id='owl-computerScience' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						computerScience+="<div class='mitem'>"
												+"<div>"
												+"<div class='thumbnail media-lib-item'>"
													+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
										 			+"<div class='caption text-left'>"
														+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
														+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
					} 
						
					computerScience+= "</div>";
					$("#computerScience").html(computerScience);	
						
						
					var language="<div id='owl-language' class='owl-carousel owl-theme'>";
					for(var i=0;i<10;i++){
						language		+="<div class='mitem'>"
												+"<div>"
												+"<div class='thumbnail media-lib-item'>"
													+"<a href='playlistdetail.act?playlistid="+"playlistid"+"'><img style='width: 270px; height: 170px;' src='https://i.ytimg.com/vi/kagOOdh-DPA/mqdefault.jpg' alt='...'></a>"
										 			+"<div class='caption text-left'>"
														+"<p class='small'><a class='no-underline' style='color:#50a253;font-size: 16px;'><b>username</b></a><br>"
														+"<span class='text-muted' style='color:#4D4D4D'>KSHRD Playlist</span></p>"
													+"</div>"
												+"</div>"
											+"</div>"
										 +"</div>";
					} 
						
					language+= "</div>";
					$("#language").html(language);
					
						
					showme(); 
				//});
		    	
		    });
			
		    function showme(){
				var owl_recent = $("#owl-recent");
				owl_recent.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			     
			    var owl_generalEdu = $("#owl-generalEdu");
			     
			    owl_generalEdu.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_computerScience = $("#owl-computerScience");
			     
			    owl_computerScience.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
			    
			    var owl_language = $("#owl-language");
			     
			    owl_language.owlCarousel({
			    items : 4, //10 items above 1000px browser width
			    itemsDesktop : [1024,4], //5 items between 1000px and 901px
			    itemsDesktopSmall : [900,3], // betweem 900px and 601px
			    itemsTablet: [600,2], //2 items between 600 and 0
			    itemsMobile : [400,1] // itemsMobile disabled - inherit from itemsTablet option
			    });
		    }
		    
		    
		    
		</script>  
		
	</body>
</html>