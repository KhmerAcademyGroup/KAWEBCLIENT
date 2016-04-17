<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
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
			
			.top-title {
			    position: relative;
			    background-color: rgba(1, 1, 1, 0.4);
			    top: 106px;
			    margin-right: 5px;
			    min-height: 55px;
			    max-height: 55px;
			    width: 100%;
			    padding: 0px 5px 0px 5px;
			    color: #fff;
			}
			.top-image {
			    margin-top: -55px;
			}


.new-playlist{
	position:absolute !important;
	width:40%;
	height:100%;
	background-color:black;
	opacity:.7;
	left:60%;
	padding-top:17%;
}
.store-item:hover  .new-playlist{
	width:100%;
	left:0%;
	z-index:100;
	cursor:pointer;
}
.new-playlist ul{
	list-style:none;
	padding:0px;
	font-size:150%;
	font-weight:bold;
	color:white;
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
		
	        <!-- Page Content -->
	        <div class="container ka-container"  >
	            		
	            		
	            			
	            			
				            <div class="row">
				            	
				            	
				            	<!-- Bannner -->
				            	<div class="row" style="margin-bottom: 0px;padding: 15px;">
											
												<div class="owl-carousel" id="owl-banner">
												    <div class="item">
												    	<img src='${pageContext.request.contextPath}/resources/assets/img/banner/KA_MoEYS.jpg' alt='' class="img-responsive">
												    </div>
													<div class='item'>
												    	<img src='${pageContext.request.contextPath}/resources/assets/img/banner/short_course.jpg' alt='' class="img-responsive">
													</div>
													<div class='item'>
												    	<img src='${pageContext.request.contextPath}/resources/assets/img/banner/4th.jpg' alt='' class="img-responsive">
													</div>
													<div class='item'>
												    	<img src='${pageContext.request.contextPath}/resources/assets/img/banner/kshrd.jpg' alt='' class="img-responsive">
													</div>
												</div>


								</div> <!-- End Banner -->
								
								
								
								<!-- BEGIN OWL CAROUSEL -->
								
						
							
						
							
							</div>	 <!-- End List Courses -->
							
							
				<div  class="row" style="margin-left:0px;margin-top:40px;    margin-bottom: 70px;">
								
							
							
							
						<div class="row" style="margin-bottom: 30px;">
						
								<div class="row">
								
									<div class="col-lg-8">
											<!--   E-Learning -->
											<div class="panel panel-primary panel-square panel-no-border">
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
															<h3 class="panel-title"><a href="${pageContext.request.contextPath}/elearning"><spring:message code="mp_e-learning"/></a></h3>
														  </div>
												
														 <div class="panel with-nav-tabs panel-default">
															  <div class="panel-heading"  style="background:white">
																<ul class="nav nav-tabs">
																	<li class="active"><a href="#panel-recent" data-toggle="tab" class="eTab"  data-mid="empty" data-id="getRecent" aria-expanded="true">ថ្មីៗ</a></li>
																	<li class=""><a href="#panel-general" data-toggle="tab" class="eTab"       data-mid="MjU="  data-id="getGeneral" aria-expanded="false">ចំណេះ​ទូទៅ</a></li>
																	<li class=""><a href="#panel-computerBasic" data-toggle="tab" class="eTab" data-mid="MjQ="  data-id="getComputerBasic" aria-expanded="false">កុំព្យូទ័រ​កម្រិត​មូលដ្ឋាន</a></li>
																    <li class=""><a href="#panel-language" data-toggle="tab" class="eTab"      data-mid="MjM="  data-id="getLanguage" aria-expanded="false">ភាសា</a></li>
																    <li class=""><a href="#panel-programming" data-toggle="tab" class="eTab"   data-mid="MQ=="  data-id="getProgramming" aria-expanded="false">Programming</a></li>
																	<li class=""><a href="#panel-web" data-toggle="tab" class="eTab"           data-mid="MTc="  data-id="getWeb" aria-expanded="false">ការរចនា​គេហទំព័រ</a></li>
																	<li class=""><a href="#panel-mobile" data-toggle="tab" class="eTab"        data-mid="MjE="  data-id="getMobile" aria-expanded="false">Mobile</a></li>
																	<li class=""><a href="${pageContext.request.contextPath}/elearning"> ផ្សេងៗ</a></li>
																</ul>
															  </div>
																<div id="panel-collapse-1" class="collapse in" aria-expanded="true">
																	<div class="panel-body">
																		<div class="tab-content">
																			<div class="tab-pane fade active in" id="panel-recent">
																				<div  id="getRecent" class="row" style="height:  640px; overflow: hidden;">
															  							<%-- <% for(int i=0;i<9;i++){ %>
																						<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3" style="width: 245px;">
																							<div class="the-box full store-item text-center checkchb">
																								<a href="playlistdetail.act?playlistid=353">
																									<div class="new-playlist">
																										<ul>
																											<li><i class="fa fa-play-circle"></i></li>
																										</ul>
																									</div>
																								</a>
																								<img  style="width: 210px;" src="https://i.ytimg.com/vi/g1dNbTBvEHc/mqdefault.jpg" class="item-image" alt="Image">
																								<div class="the-box no-margin no-border item-des">
																									<div class="row">
																										<div class="col-xs-12">
																											<p class="text-danger">
																												<strong class="text-black">TTTTTT</strong>
																											</p>
																										</div>
																										<!-- /.col-xs-7 -->
																									</div>
																									<!-- /.row -->
																								</div>
																							</div>
																							<!-- /.the-box .no-border .full .store-item -->
																							<!-- END ITEM STORE -->
																						</div>
																						<% } %> --%>
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-general">
																					<div  id="getGeneral" class="row" style="height: 640px; overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-computerBasic">
																					<div  id="getComputerBasic" class="row" style="height: 640px;overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-language">
																					<div  id="getLanguage" class="row" style="height: 640px;overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-programming">
																					<div  id="getProgramming" class="row" style="height: 640px; overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-web">
																					<div  id="getWeb" class="row" style="height: 640px;overflow: hidden;">
															  						
																					</div>
																			</div>
																			<div class="tab-pane fade" id="panel-mobile">
																					<div  id="getMobile" class="row" style="height: 640px; overflow: hidden;">
															  						
																					</div>
																			</div>
																			
																				
																					<!-- <div class="row text-center">
															  								<button class="btn btn-primary btn-xs" id="btLoadMore" style="display: inline-block;"> < </button>
																							<button class="btn btn-primary btn-xs"  id="btLoadMore" style="display: inline-block;"> > </button>
																					</div> --> 		
																						
																			<!-- /.tab-pane fade -->
																		</div><!-- /.tab-content -->
																	</div><!-- /.panel-body -->
																</div><!-- /.collapse in -->
															</div>
			            								
										</div>	
										<!--  End E-Learning -->
										
										<!--  Tutorial -->
										<div class="panel panel-primary panel-square panel-no-border">
											 <div class="panel-heading" style="background:rgb(78, 156, 80)">
												<h3 class="panel-title"><a href="/KAWEBCLIENT/tutorial">ឯកសារ</a></h3>
											  </div>
											  <div class="panel-body" style="padding: 15px;  padding-left:0px;   border: 1px solid #D5DAE0;">
												<div class="list-group success square no-side-border" id="listcategory">
													  <%-- <%for(int i=0;i<12;i++) {%>
													  <div class="col-sm-3" style="width: 190px;    padding-right: 0px;">      
													  	<div class="the-box no-border full store-item text-center"> 
													  	     <div class="the-box bg-info no-margin no-border item-des">        
													  	    	 <h5><a href="/KAWEBCLIENT/tutorial/detail/MjI=" style="color:white">Adobe Photoshop</a></h5>     
													  	     </div>        
													  	  </div>           
													  </div>
													  <% } %> --%>
												</div>
											  </div><!-- /.panel-body -->
											
											</div>
											<!-- End Tutorial -->
											
											<!--  Forum -->
											<div class="panel panel-primary panel-square panel-no-border">
																  <div class="panel-heading" style="background:rgb(78, 156, 80)">
																	<h3 class="panel-title"><a href="${pageContext.request.contextPath}/elearning"  ><spring:message code="mp_forum"/></a></h3>
																  </div>
														
																<div class="inbox"  id="getQuestion" style="padding: 15px;    height: auto;  border: 1px solid #D5DAE0;">	
																		
																</div>	
											 </div> 	
											<!-- End Forum -->
											
											
										
										
									</div>
									
									
									
									
									<div class="col-lg-4">
											<!-- News -->
											<div class="panel panel-primary panel-square panel-no-border">
															
															<%-- <div class="section-heading">
																<div class="inner-border"></div>
																<h3 style="color:#4c954d;"><a href="http://news.khmeracademy.org/"  target="_blank"> <img  src="http://akn.khmeracademy.org/resources/images/logo/e7229712-6ba2-4b7a-94a0-f4c71df9eb9f.png" style="width:20px;height:20px"><spring:message code="mp_akn"/></a></h3>
															</div> --%>
															
														  <div class="panel-heading" style="background:rgb(78, 156, 80)">
																<h3 class="panel-title"><a href="http://news.khmeracademy.org/"  target="_blank"> <img  src="http://akn.khmeracademy.org/resources/images/logo/e7229712-6ba2-4b7a-94a0-f4c71df9eb9f.png" style="width:20px;height:20px"><spring:message code="mp_akn"/></a></h3>
														  </div> 
												
														 <div class="panel with-nav-tabs panel-default">
															  <div class="panel-heading" style="background:white">
																<ul class="nav nav-tabs">
																	<li class="active"><a href="#panel-home-1" class="newsTab" data-id="getAKN" data-toggle="tab" aria-expanded="true">ថ្មីៗ</a></li>
																	<li class=""><a href="#panel-scholarship-1" data-toggle="tab" class="newsTab" data-id="getAKNScholarship"   aria-expanded="false">អាហារូបកណ៍</a></li>
																	<li class=""><a href="#panel-technology-1" data-toggle="tab" class="newsTab" data-id="getAKNTechnology"  aria-expanded="false">បចេ្ចកវិជ្ជា</a></li>
																    <li class=""><a href="#panel-national-1" data-toggle="tab" class="newsTab" data-id="getAKNNational"  aria-expanded="false">ពត៌មានជាតិ</a></li>
																    <li class=""><a href="#panel-international-1" data-toggle="tab" class="newsTab" data-id="getAKNInternational"  aria-expanded="false">ពត៌មានអន្តរជាតិ</a></li>
																	<li class=""><a href="#panel-life" data-toggle="tab" class="newsTab" data-id="getAKNLife"  aria-expanded="false">ជីវិត</a></li>
																	<li class=""><a href="#panel-sport" data-toggle="tab" class="newsTab" data-id="getAKNSport"  aria-expanded="false">កីឡា</a></li>
																	<li class=""><a href="http://news.khmeracademy.org/"  target="_blank"> ផ្សេងៗ</a></li>
																</ul>
															  </div>
																<div id="panel-collapse-1" class="collapse in" aria-expanded="true">
																	<div class="panel-body">
																		<div class="tab-content">
																			<div class="tab-pane fade active in" id="panel-home-1">
																					<div  id="getAKN" style="height:  auto; overflow: hidden;">
														  	
																					</div>
																					<%-- <% for(int i=0;i<10;i++){ %>
																					<div class="owl-item" style="width: 160px;    margin-right:10px;float: left;">                   
																						 <div class="mitem">
																						 	 <div>                      
																						 	 	<div class="thumbnail media-lib-item" style="height: 170px;padding: 0px;overflow: hidden;">            
																						 	 		<a href="/KAWEBCLIENT/elearning/playvideo?v=MTQxNA==&amp;playlist=Mzc4">                        
																						 	 			<img src="http://cdn.sabay.com/cdn/news.sabay.com.kh/wp-content/uploads/2016/04/Featuredmey-285x170.jpg" alt="...">
																						 	 		</a>                       
																						 	 		<div class="caption text-left">                        
																						 	 			<p class="small ">                          
																							 	 			<a href="#"><span class="text-muted" style="color:#4D4D4D">	<img style="width:20px;height:20px" src="http://akn.khmeracademy.org/resources/images/logo/2acd099d-d9e3-475e-a99e-fdf693f45efb.png" alt="Business Cambodia"> ​ម៉ុង ឫទ្ធី៖ កម្មករ និងបុគ្គលិកគឺជា ដង្ហើមរបស់ខ្ញុំ ម៉ុង ឫទ្ធី៖ កម្មករ និងបុគ្គលិកគឺជា ដង្ហើមរបស់ខ្ញុំ</span>    </a>                    
																						 	 			</p>                       
																						 	 		</div>                      
																						 	 	</div>                     
																						 	 </div>                    
																						 </div>                   
																					</div>
																					<%} %> --%>
																	
																			</div>
																			<div class="tab-pane fade" id="panel-scholarship-1">
																				<div  id="getAKNScholarship" style="height:  auto; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-technology-1">
																				<div  id="getAKNTechnology" style="height:  auto; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-national-1">
																				<div  id="getAKNNational" style="height:  auto; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-international-1">
																				<div   id="getAKNInternational" style="height:  auto; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-life">
																				<div   id="getAKNLife" style="height:  auto; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<div class="tab-pane fade" id="panel-sport">
																				<div   id="getAKNSport" style="height:  auto; overflow: hidden;">
														  	
																				</div>
																			</div>
																			<!-- /.tab-pane fade -->
																		</div><!-- /.tab-content -->
																	</div><!-- /.panel-body -->
																</div><!-- /.collapse in -->
															</div>
			            								
										</div>	 
									</div>
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
		
		
		 <script id="tlistcategory_tmpl" type="text/x-jquery-tmpl">
				<div class="col-sm-3" style="width: 190px; padding-right: 0px;" >      
												<a href="${pageContext.request.contextPath}/tutorial/detail/{{= categoryId}}">
													  	<div class="the-box no-border full store-item text-center"> 
													  	     <div class="the-box bg-info no-margin no-border item-des">        
													  	    	 <h5>{{= categoryName}}</h5>     
													  	     </div>        
													  	  </div>        
												</a>   
				</div>
		</script>
																
																
		 <script id="question_tmpl" type="text/x-jquery-tmpl">
				<div class="caption text-left shortenString" style="    border-bottom: 1px solid  #D5DAE0;margin-bottom: 5px;padding-bottom: 5px;">
						<span class="small ">
								<a title="{{= title }}" class="no-underline ka-question" href="${pageContext.request.contextPath}/forum/question/{{= commentId }}" >
									{{= title }}
								</a>
						</span> 
				</div> 
		</script>
		
		
					<%-- <div class="col-md-3" style="width: 50%;height:70px;display: -webkit-box;">	
							<div style="width:70px;height:50px">
								<a href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}">
										<img   src="{{= thumbnailUrl }}" alt="{{= playlistName }}" class="img-responsive">
								</a>
							</div>
							<div class="caption text-left  shortenString" style="padding: 10px;width:80%;padding-top: 0px;">                       
									<p class="small shortenString">                       
											<a class="no-underline" href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}" style="color:#656D78;font-size: 17px;">                         
													<b>{{= playlistName }}</b>                  
											</a>   
									</p>               
							</div>
					</div> --%>
					
		 <script id="elearning_tmpl" type="text/x-jquery-tmpl">
					

																						<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3" style="width: 245px;">
																							<div class="the-box full store-item text-center checkchb">
																								<a href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}">
																									<div class="new-playlist">
																										<ul>
																											<li><i class="fa fa-play-circle"></i></li>
																										</ul>
																									</div>
																								</a>
																								<img  src="{{= thumbnailUrl }}" alt="{{= playlistName }}" class="img-responsive">
																								<div class="the-box no-margin no-border item-des">
																									<div class="row">
																										<div class="col-xs-12"> 
																											<p class="text-danger shortenString" >
																												<strong class="text-black">{{= playlistName }}</strong>
																											</p>
																										</div>
																										<!-- /.col-xs-7 -->
																									</div>
																									<!-- /.row -->
																								</div>
																							</div>
																							<!-- /.the-box .no-border .full .store-item -->
																							<!-- END ITEM STORE -->
																						</div>
		</script>	
		
		<script type="text/javascript">
			
				function getColor(){
					return Math.random().toString(16).slice(2, 8);
				}
					
				 function displayNews(block,data){
					/*  var akn1 = '<table class="shortenString">';
						for(var j=0; j<data.length; j++){
							akn1 += '<tr style="height: 40px;"><td><a href="'+data[j].url+'" target="_blank">​<img  style="width:20px;height:20px" src="http://akn.khmeracademy.org/resources/images/logo/'+data[j].site.logo+'" alt="'+data[j].site.name+'"></a></td>'
								   +'<td><a style="padding-left: 10px;color:#656D78;overflow:hidden;text-overflow: ellipsis;white-space: nowrap;" href="'+data[j].url+'" target="_blank">​'+data[j].title+'</a></td></tr>';
						}
						akn1 += "</table>";
						$("#"+block).html(akn1); */
						
						
					var akn1="";
					for(var j=0; j<data.length; j++){
						akn1 += "<div class='owl-item' style='width: 160px; margin-right:10px;float: left;'>"+                
						 			"<div class='mitem'>"+
					 	 				"<div> "+                   
					 	 					"<div class='thumbnail media-lib-item' style='height: 170px;padding: 0px;overflow: hidden;'>"+          
					 	 						"<a href='"+data[j].url+"'>"+                       
					 	 							"<img  style='height:108px'  src='"+data[j].image+"' alt='"+data[j].site.name+"'>"+
					 	 						"</a>  "+                     
					 	 						"<div class='caption text-left'>"+                        
					 	 							"<p class='small'> "+                         
						 	 							"<a href='"+data[j].url+"'><span class='text-muted' style='color:#4D4D4D'><img style='width:20px;height:20px' src='http://akn.khmeracademy.org/resources/images/logo/"+data[j].site.logo+"' alt='"+data[j].site.name+"'>"+data[j].title+"</span>    </a>"+                    
					 	 							"</p>"+                       
						 	 					"</div> "+                     
						 	 				"</div>"+                     
						 				" </div>"+                   
						 			"</div>"+                   
								"</div>";
					}
					$("#"+block).html(akn1);
						
						
						
				} 
				 
				 
				function displayElearning(id,data){
					var elearning = "";
					for(var i=0; i<data.RES_DATA.length;i++){
						
						elearning +=  '<div class="col-md-3" style="width: 50%;height:70px;display: -webkit-box;">'
										 +'<div>'
										 +'<a href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}">'
										 +'<img  width="70px" height="50px" src="'+data.RES_DATA[i].thumbnailUrl+'" alt="'+data.RES_DATA[i].playlistName+'">'
														+'</a>'
										 +'</div>'
										 +'<div class="caption text-left  shortenString" style="padding: 10px;width:80%;padding-top: 0px;">'                       
										 +'<p class="small shortenString"> '                      
										 +'<a class="no-underline" href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId }}&playlist={{= playlistId }}" style="color:#656D78;font-size: 16px;">'                         
										 +'<b>'+data.RES_DATA[i].playlistName+'</b> '                 
										 +'</a> ' 
										 +'<br/>'
										 +'<span class="text-muted" style="color:#4D4D4D">'+data.RES_DATA[i].description+'</span>' 
										 +'</p>'               
										 +'</div>'
										 +'</div>';
					}
					$("#"+id).html(elearning);
					
					
				}
				
				
			 
		    $(document).ready(function() {
		    	
		    	$('#owl-banner').owlCarousel({
		    		navigation:false,
		    		singleItem:true,
		    		autoPlay:true
		    	})
		    	
		    	// Forum 
		    	showForum = function(data){ 
		    		$.ajax({
							url:'${pageContext.request.contextPath}/rest/forum/questiondto?page=1&item=15',
							method: 'GET',
							success:function(data){
									console.log(data);
								if(data.STATUS == true){
	    							$("#question_tmpl").tmpl(data.RES_DATA).appendTo("#getQuestion");
	    						
	    						}
							}
					});	
		    	};
		    	// End Forum
		    	
		    	
		    	
		    	
		    	
		    	// Tutorial
				showTutorial = function(data){ 
		    		$.ajax({
					url : "${pageContext.request.contextPath}/tutorial/rest/list_tutorial?item=12",
					method: "GET",
					success : function(data){ console.log(data);
// 						console.log(data.RES_DATA); 
						$("#tlistcategory_tmpl").tmpl(data.RES_DATA).appendTo("#listcategory");
						
						
					}
					
						
					});
				};
		    	// End Tutorial
		    	
		    	
		    	//akn-block	
		    	showNews = function(data){
		    		$.ajax({
						url:'${pageContext.request.contextPath}/akn/scholarship/'+data,
						method: 'GET',
						success:function(data){console.log(data);
							displayNews(data.KEY ,data.NEWS.RESPONSE_DATA);
						}
					});	
		    	};
				
				
				
				
				$(document).on('click',".newsTab" , function(){  
					 if ($("#"+$(this).data("id")).find('table').length > 0) { 
						 return; 
					  }else{
						 showNews($(this).data("id"));
					  }
					 
	    		});
				//end akn-block
		    
				
				//E-Learning-block	
		    	var eID="getRecent";
				showElearning = function(mainCategoryId){ 
		    		$.ajax({
		    			url :"${pageContext.request.contextPath}/rest/elearning/plalylistByMainCateogryWithPagin/"+mainCategoryId+"?page=1&item=14",
						method: 'GET',
						success:function(data){
// 							console.log(data);
							$("#elearning_tmpl").tmpl(data.RES_DATA).appendTo("#"+eID);
// 							displayElearning(eID,data);
						}
					});	
		    	};
				
		    	
		    	
		    	$(document).on('click',".eTab" , function(){  
					 if ($("#"+$(this).data("id")).find('div').length > 0) { 
						 return; 
					  }else{
						  eID = $(this).data("id");
						  showElearning($(this).data("mid"));
					  }
					 
	    		});
		    	
		    	
		    	
		    	showElearning("empty");
		    	showForum();
		    	showTutorial();
		    	showNews("getAKN");
				
			});
			
		   
		    
		   
		</script>  
		
		
		<script type="text/javascript">
			   		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			   			$("#p-IfMobile").bPopup();
			   			if(/Android/i.test(navigator.userAgent) ) {
				   			$("#dwnApp").attr("href","https://play.google.com/store/apps/details?id=org.khmeracademy");
				   		}else if(/iPhone|iPad|iPod/i.test(navigator.userAgent)){
				   			$("#dwnApp").attr("href","https://itunes.apple.com/kh/app/khmer-academy/id1082906587?mt=8");
				   		}
			   		}
			</script>
		
	</body>
</html>