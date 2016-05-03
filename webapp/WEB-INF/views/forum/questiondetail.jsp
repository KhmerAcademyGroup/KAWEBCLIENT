<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Question Detail | Forum</title>
		<jsp:include page="../shared/_header.jsp" />
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css" rel="stylesheet">
	</head>
 
	<body class="tooltips no-padding">
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="../shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		<!-- My Contend -->
		
		<div class="container ka-container" >
		
		
			
				<ol class="breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/forum"><spring:message code="qp_all_question"/></a></li>
<!-- 				  <li><a href="#fakelink">Users</a></li> -->
				  <li><a href="${pageContext.request.contextPath}/forum/question/ask"><spring:message code="qp_ask_question"/></a></li>
				</ol>
				
			<h2 class="page-title" id="getTotalQuestion"> </h2>
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div>
	
			<div class="row">
					<div class="col-sm-8 col-md-9" >
						
						<div class="section">
								
								<!-- Question -->
								
								<div id="q-loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/inline_loading.gif"/></div>
								
								<h2 class="page-title" id="qTitle"><!-- Duis autem vel eum iriure dolor in hendrerit in vulputate velit --></h2>
								
								<table class="table">
											<tbody>
												<tr>
													<td class="vu-table-td footable-last-column text-left" style="width: 10%;">
														<div style="font-size:20px">
															<span data-toggle="tooltip" id="likeQ" style="cursor:pointer" data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>
															<br/><span id="qTotalVotes"><!-- 110 --></span><br/>
															<span data-toggle="tooltip" id="unlikeQ" style="cursor: pointer;" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>
														</div>
													</td>
													
													<td class="expand footable-first-column" style="padding-right: 0px;">
															<div style="padding:20px;background-color:#f2f7fd;min-height: 150px;" id="qDetail">
															   <!-- Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... -->
															</div>
															
															<span id="qTags">
															
															</span>
															<!-- <a href="list.act?tag=java">
																<span class="label label-primary">java</span>
															</a> -->
													</td>
													
												
												</tr>
												<tr>
													<td style="border-top: none;"></td>
													<td style="border-top: none;">
														<div>
															<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs"><spring:message code="qp_share"/></a> <!-- <a class="btn btn-default active btn-xs" href="#">Edit</a> --></span>
															<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" id="qUsername"><!-- Phearun --></a></span>
														</div>
														<div class="text-right"><small id="qDate"><!-- Jan 18, 2016 --></small></div>
														<div class="text-right"><img id="qUserImage" style="width: 40px;" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar.png" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
											</tbody>
											<tfoot>
												
											</tfoot>
										</table>
									
										<!-- End Question -->
										
										<h4 class="page-title"> <span id="totalAnswer"> </span> <spring:message code="qp_answer"/></h4>
										
										<!-- Selected Answer -->
										
										<table class="table" id="getSelectedAnswer" style="display:none">
											<tbody >
												<tr>
													<td class="vu-table-td footable-last-column text-left" style="width: 10%;">
														<div style="font-size:20px">
															<span data-toggle="tooltip" id="likeSA" data-sa="sa" style="cursor: pointer;"  data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>
															<br/><span id="selectedAnswerTotalVotes"><!-- 110 --></span><br/>
															<span data-toggle="tooltip" style="cursor: pointer;" id="unlikeSA" data-sa="sa" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>
															<br/>
															<span data-toggle="tooltip" data-original-title="This question owner accepted as the best answer." class="favorite fa fa-star text-warning"></span>
														</div>
													</td>
													
													<td class="expand footable-first-column" style="padding-right: 0px;">
															<div style="padding:20px;background-color:#f2f7fd;min-height: 150px;" id="selectedAnswerDetail">
															   <!-- Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme --> 
															</div>
															
															<span id="selectedAnswerTags">
															
															</span>
															
															<!-- <a href="list.act?tag=java">
																<span class="label label-primary">java</span>
															</a> -->
													</td>
												</tr>
												
												<tr>
													<td style="border-top: none;"></td>
													<td style="border-top: none;">
														<div>
															<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs"><spring:message code="qp_share"/></a> <!-- <a class="btn btn-default active btn-xs" href="#">Edit</a> --> </span>
															<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" id="selectedAnswerUsername"><!-- Phearun --></a></span>
														</div>
														<div class="text-right"><small id="selectedAnswerDate"><!-- Jan 18, 2016 --></small></div>
														<div class="text-right"><img style="width: 40px;" id="selectedAnswerUserImage" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar.png" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
											</tbody>
										</table>
										
									 	<!-- End Selected Answer -->
									 	
									 	
									 	
									 	<!-- Answers -->
										
										<div id="getAnswers"> 
										
										</div>
																				
										<!-- <table class="table"  >
											<tbody >
												<tr>
													<td class="vu-table-td footable-last-column text-left" style="width: 10%;">
														<div style="font-size:20px">
															<span data-toggle="tooltip" data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>
															<br/><span id="answerTotalVotes">110</span><br/>
															<span data-toggle="tooltip" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>
															<br/>
															<span data-toggle="tooltip" data-original-title="This question owner accepted as the best answer." class="favorite fa fa-star text-warning"></span>
														</div>
													</td>
													
													<td class="expand footable-first-column" style="padding-right: 0px;">
															<div style="padding:20px;background-color:#f2f7fd" id="answerDetail">
															   Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															</div>
															
															<span id="answerTags">
															
															</span>
															
															<a href="list.act?tag=java">
																<span class="label label-primary">java</span>
															</a>
													</td>
												</tr>
												
												<tr>
													<td style="border-top: none;"></td>
													<td style="border-top: none;">
														<div>
															<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs">Share</a> <a class="btn btn-default active btn-xs" href="#">Edit</a> </span>
															<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" id="answerUsername">Phearun</a></span>
														</div>
														<div class="text-right"><small id="answerDate">Jan 18, 2016</small></div>
														<div class="text-right"><img style="width: 40px;" id="answerUserImage" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar-1.jpg" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
											</tbody>
										</table>  -->
										
										<!-- End Answers -->
										
										
										<div id="a-loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/inline_loading.gif"/></div>
										
										
										 <div class="text-center">
											<button class="btn btn-warning" id="btLoadMore" style="display:none" ><spring:message code="fp_more"/></button>
										</div>
								
								
								<hr/>
								<h4 class="page-title"><spring:message code="qp_answer"/></h4> 
								
								<span id="msg"> </span>
								
								<div>
									<div class="summernote"> </div>
								</div>
								
								<button class="btn btn-primary" id="btPostAnswer"><spring:message code="qp_share_your_answer"/></button>
						
				</div>
					</div><!-- /.col-sm-8 col-md-9 -->
					
					
					<div class="col-sm-4 col-md-3">
						
						<!-- BEGIN SIDEBAR -->
						<div class="section sidebar">
							
							<div class="panel panel-no-border panel-sidebar">
							  <div class="panel-heading">
								<h3 class="panel-title"><spring:message code="qp_related"/> : </h3>
							  </div> 
							   <ul class="media-list" id="getRelatedQuestion">
								  <!-- <li class="media">
									<div class="media-body">
										<p class="text-info">
											<a href="#fakelink" style="color: #3BAFDA;">
											Duis autem vel eum iriure
											dolor in hendrerit in...
											</a>
										</p>
										<p class="small">5 Votes | Asked June 05, 2014</p>
									</div>
								  </li> -->
								  
								</ul>
							</div>
							
						
						
						
						
							
							<!-- <div class="the-box no-border tags-cloud">
									<h4 class="small-heading more-margin-bottom">TAGS</h4>
										<p>
											<a href="#fakelink"><span class="label label-primary">Computer</span></a> 
											<a href="#fakelink"><span class="label label-primary">HTML</span></a> 
											<a href="#fakelink"><span class="label label-primary">CSS3</span></a> 
											<a href="#fakelink"><span class="label label-primary">Jquery</span></a> 
											<a href="#fakelink"><span class="label label-primary">Web</span></a> 
											<a href="#fakelink"><span class="label label-primary">Design</span></a> 
											<a href="#fakelink"><span class="label label-primary">HTML5</span></a> 
											<a href="#fakelink"><span class="label label-primary">Photoshop</span></a> 
											<a href="#fakelink"><span class="label label-primary">Javascript</span></a> 
											<a href="#fakelink"><span class="label label-primary">CSS Transition</span></a> 
										</p>
							</div> 
							
							<a href="#fakelink">
							<img src="assets/img/work/14.jpg" alt="Banner" class="banner">
							</a>
							
							<a href="#fakelink">
							<img src="assets/img/work/16.jpg" alt="Banner" class="banner">
							</a>
							-->
						</div><!-- /.section -->
						<!-- END SIDEBAR -->
						
					</div><!-- /.col-sm-4 col-md-3 -->
				</div>
			
			
						
		</div>
		
	
		
		
		<!-- End My Contend -->
<!-- 		<a href="list.act?tag=java"> -->
<!-- 																	<span class="label label-primary">java</span> -->
<!-- 																</a> -->
		
		<jsp:include page="../shared/_footer.jsp" />
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.js"></script>
		<script type="text/javascript">
		$(function() {
			$('.summernote').summernote(
					{
						height : 200,
						toolbar : [
								
								[
										'style',
										[ 'bold', 'italic', 'underline',
												'clear' ] ],
								[ 'fontsize', [ 'fontsize' ] ],
								[ 'color', [ 'color' ] ],
								[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
								[ 'height', [ 'height' ] ]
// 								[ 'codeview', [ 'codeview' ] ],						
						]
					});
			

		});
	</script>
		
		 <script id="related_question_tmpl" type="text/x-jquery-tmpl">
				<li class="media" style="margin: 0px 0;">
									<div class="media-body">
										<p class="text-info">
											<a href="${pageContext.request.contextPath}/forum/question/{{= commentId }}" style="color: #3BAFDA;">
											{{= title }}
											</a>
										</p>
										<p class="small">{{= vote }} Votes | Asked June 05, 2014</p>
					</div>
				</li>
		</script>
		 

		<script type="text/javascript">
		
			  var question = "";
			  var answer = "";
			  var selectedAnswer = "";
			  var cid = "";
			  	
			  var page = 1;
		  	  var totalPage = 0;
		  		
		  	 
		  	  
			  $(document).ready(function(){
				
				  
				 	questionDetail = {};
				    
			  		questionDetail.relatedQuestion = function(cid){   
					 
	    				$.ajax({ 
	    				    url: "${pageContext.request.contextPath}/rest/forum/question/c/"+cid+"?page="+page+"&item=10",
	    				    type: 'GET',
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) { // console.log(data);  
	    						for(var i=0;i<data.RES_DATA.length;i++){
									data.RES_DATA[i]["title"]  = shorten(data.RES_DATA[i]["title"] , 75);
								}
	    						if(data.RES_DATA.length>0){
	    							$("#related_question_tmpl").tmpl(data.RES_DATA).appendTo("#getRelatedQuestion");
	    						}
	    				    },
	    				    error:function(data,status,er) { 
	    				        console.log("error: "+data+" status: "+status+" er:"+er);
	    				    }
	    				});
	    			};
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			//////////////////////////////////////////////////////////////////////////////////////////////////////////
	    			
	    			questionDetail.getQuestionByQuestionId = function(questionId){   
						 
	    				$.ajax({ 
	    				    url: "${pageContext.request.contextPath}/rest/forum/question/"+questionId,  
	    				    type: 'GET',
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) {  
// 	    				    	console.log("Question : "+data.RESP_DATA.title);  
								if(data.RESP_DATA != null ){
									cid = data.RESP_DATA.categoryId;
// 									console.log("CID " + cid);
									questionDetail.relatedQuestion(cid);
									$("title").text(data.RESP_DATA.title + " | Forum");
									$("#qTitle").text(data.RESP_DATA.title);
									$("#qTotalVotes").text(data.RESP_DATA.vote);
									$("#qDetail").html(data.RESP_DATA.detail);
									$("#qUsername").text(data.RESP_DATA.username);
									$("#qDate").text(data.RESP_DATA.postDate);
									$("#qUserImage").attr("src" ,  data.RESP_DATA.userImageUrl);
									$("#likeQ,#unlikeQ").attr("data-commentid",data.RESP_DATA.commentId);
									$("#likeQ").attr("data-type","LIKEQ");
									$("#unlikeQ").attr("data-type","UNLIKEQ");
									tags = data.RESP_DATA.tag.split(", ");
									tagHTML = "";
									for(var i=0; i<tags.length; i++){
										tagHTML += "<a href='${pageContext.request.contextPath}/forum/questions?tag="+tags[i].trim()+"' style='padding-right: 2px;'><span class='label label-primary'>"+tags[i] +" </span></a>";
									}
									$("#qTags").append(tagHTML);
	    							$("#q-loading").hide();

								}
	    				    },
	    				    error:function(data,status,er) { 
	    				        console.log("error: "+data+" status: "+status+" er:"+er);
	    				    }
	    				});
	    			};
	    			
	    			questionDetail.getSelectedAnswer = function(questionId){   
						 
		    			$.ajax({ 
		    				    url: "${pageContext.request.contextPath}/rest/forum/question/"+questionId+"/selectedanswer",  
		    				    type: 'GET',
		    				    beforeSend: function(xhr) {
		    	                    xhr.setRequestHeader("Accept", "application/json");
		    	                    xhr.setRequestHeader("Content-Type", "application/json");
		    	                },
		    				    success: function(data) {  
									if(data.RESP_DATA != null ){
										$("#selectedAnswerTotalVotes").text(data.RESP_DATA.vote);
										$("#selectedAnswerDetail").append(data.RESP_DATA.detail);
										$("#selectedAnswerUsername").text(data.RESP_DATA.username);
										$("#selectedAnswerDate").text(data.RESP_DATA.postDate);
										$("#likeSA,#unlikeSA").attr("data-commentid",data.RESP_DATA.commentId);
										$("#likeSA").attr("data-type","LIKEA");
										$("#unlikeSA").attr("data-type","UNLIKEA");
										$("#selectedAnswerUserImage").attr("src" ,   data.RESP_DATA.userImageUrl);
										if(data.RESP_DATA.tag != null){
											tags = data.RESP_DATA.tag.split(", ");
											tagHTML = "";
											for(var i=0; i<tags.length; i++){
												tagHTML += "<a href='${pageContext.request.contextPath}/forum/questions?tag="+tags[i].trim()+"' style='padding-right: 2px;'><span class='label label-primary'>"+tags[i] +" </span></a>";
											}
											$("#selectedAnswerTags").append(tagHTML);
										}
										$("#q-loading").hide();
		    							$("#getSelectedAnswer").show();
									}
		    				    },
		    				    error:function(data,status,er) { 
		    				        console.log("error: "+data+" status: "+status+" er:"+er);
		    				    }
		    				});
	    			};
	    			
	    			questionDetail.getAnswerByQuestionId = function(questionId,page){   
						 
		    			$.ajax({ 
		    				    url: "${pageContext.request.contextPath}/rest/forum/question/"+questionId+"/answers?item=10&page="+page,  
		    				    type: 'GET',
		    				    beforeSend: function(xhr) {
		    	                    xhr.setRequestHeader("Accept", "application/json");
		    	                    xhr.setRequestHeader("Content-Type", "application/json");
		    	                },
		    				    success: function(data) {   
		    				    	
									answers = "";
									
		    				    	if(data.RESP_DATA != null){ 
								    	$("#totalAnswer").text(data.PAGINATION.totalCount);  
								    	totalPage = data.PAGINATION.totalPages;
								    	
								    	for(var i=0;i<data.RESP_DATA.length;i++){ 
								    		tagHTML = "";
// 								    		console.log(data.RESP_DATA[i].selected);
								    		if(data.RESP_DATA[i].selected == false){  
// 								    			console.log(data.RESP_DATA[i].tag);
								    			tagHTML = "";
				    							if(data.RESP_DATA[i].tag != null){
													tags = data.RESP_DATA[i]["tag"].split(", ");
													for(var j=0; j<tags.length; j++){
														tagHTML += "<a id='listQuestionByTag' data-tag='"+tags[j].trim()+"' href='${pageContext.request.contextPath}/forum/questions?tag="+tags[j].trim()+"' style='padding-right: 2px;'><span class='label label-primary'>"+tags[j] +" </span></a>";
													}
												}
												selectHTML = "";
												if(data.RESP_DATA[i].userId == "${userId}"){
													selectHTML = '<br/><span  id="selectQuestion" data-answerid="'+data.RESP_DATA[i].commentId+'" data-toggle="tooltip" data-original-title="Click to accept this answer because it solved your problem, and it is the best answer." class="favorite fa fa-star"></span>';
												}
												answers += '<table class="table">'+
																'<tbody>'+
																	'<tr>'+
																		'<td class="vu-table-td footable-last-column text-left" style="width: 10%;">'+
																			'<div style="font-size:20px">'+
																				'<span style="cursor: pointer;" id="likeA" data-commentid="'+data.RESP_DATA[i].commentId+'" data-type="LIKEA" data-toggle="tooltip" data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>'+
																				'<br/><span id="answerTotalVotes'+data.RESP_DATA[i].commentId+'">'+data.RESP_DATA[i].vote+'</span><br/>'+
																				'<span style="cursor: pointer;" id="unlikeA" data-commentid="'+data.RESP_DATA[i].commentId+'" data-type="UNLIKEA" data-toggle="tooltip" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>'+
																				selectHTML +
																			'</div>'+
																		'</td>'+
																		
																		'<td class="expand footable-first-column" style="padding-right: 0px;">'+
																				'<div style="padding:20px;background-color:#f2f7fd;min-height: 150px;" id="answerDetail">'+
																					data.RESP_DATA[i].detail+ 
																				'</div>'+
																				'<span>'+tagHTML+'</span>'+
																		'</td>'+
																	'</tr>'+
																	
																	'<tr>'+
																		'<td style="border-top: none;"></td>'+
																		'<td style="border-top: none;">'+
																			'<div>'+
																				'<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs">Share</a>  </span>'+
																				'<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" id="answerUsername">'+data.RESP_DATA[i].username+'</a></span>'+
																			'</div>'+
																			'<div class="text-right"><small id="answerDate">'+data.RESP_DATA[i].postDate+'</small></div>'+
																			'<div class="text-right"><img style="width: 40px;" id="answerUserImage" src="'+data.RESP_DATA[i].userImageUrl+'" class="avatar img-circle" alt="Avatar"></div>'+
																		'</td>'+
																	'</tr>'+
																'</tbody>'+
															'</table> ';
												
 								    		}
								    		
								    		
								 	   }
								    	
								    	$("#a-loading").hide();
								    	$("#getAnswers").append(answers);
			    						if(page >= data.PAGINATION.totalPages){ 
			    							$("#btLoadMore").hide();
			    						}else{
			    							$("#btLoadMore").show();
			    						}
			    						
								    	
								    	
									}
		    				    },
		    				    error:function(data,status,er) { 
		    				        console.log("error: "+data+" status: "+status+" er:"+er);
		    				    }
		    				});
		    			
	    			};
	    			
	    			
	    			/* Post Answer */
    				questionDetail.postAnswer = function(data){
    					 KA.createProgressBar();
    					$.ajax({ 
	    				    url: "${pageContext.request.contextPath}/rest/forum/answer",  
	    				    type: 'POST',
	    				    data: JSON.stringify(data), 
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) {  
	    				    	$("#getAnswers").empty();
	    				    	questionDetail.getAnswerByQuestionId("${qid}",1);
// 	    				    	console.log(data);
	    				    	KA.destroyProgressBar();
	    				    },
	    				    error:function(data) { 
	    				        console.log(data);
	    				    }
	    				});
    				};
    				
	    			questionDetail.getQuestionByQuestionId("${qid}");
	    			questionDetail.getSelectedAnswer("${qid}");
	    			questionDetail.getAnswerByQuestionId("${qid}",1);
	    			
	    			$("#btPostAnswer").click(function(){
	    				if('${userId}' == ''){
	    					$(".btLogin").trigger('click');
// 	    					console.log(0);
	    				}else{
// 	    					console.log(1);
	    				}
	    				if(		$(".summernote").code().replace(/<\/p>/gi, "").replace('&nbsp;', '').replace(/<br\/?>/gi, "").replace(/<\/?[^>]+(>|$)/g, "").replace(' ', '').length == '' ||
	    						$(".summernote").code().replace(/<\/p>/gi, "").replace('&nbsp;', '').replace(/<br\/?>/gi, "").replace(/<\/?[^>]+(>|$)/g, "").replace(' ', '').length	< 40	
	    				){
// 	    					console.log("Answer must be at least 40 characters. You entered " + $(".summernote").code().replace(' ', '').replace(/<\/p>/gi, "").replace('&nbsp;', '').replace(/<br\/?>/gi, "").replace(/<\/?[^>]+(>|$)/g, "").length);
	    					$("#msg").replaceWith('<div id="msg" class="alert alert-danger alert-bold-border square fade in alert-dismissable">'+
							  '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
							  '<span class="alert-link">Answer must be at least 40 characters. You entered '+ $(".summernote").code().replace(' ', '').replace(/<\/p>/gi, "").replace('&nbsp;', '').replace(/<br\/?>/gi, "").replace(/<\/?[^>]+(>|$)/g, "").length+'!</span>'+
							  '</div>');
	    				}else{
	    					$("#msg").replaceWith('<div id="msg" class="alert alert-success alert-bold-border square fade in alert-dismissable">'+
	  							  '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
	  							  '<span class="alert-link">Your answer has been submitted. Thanks for contirbuting an answer!</span>'+
	  							  '</div>');
	    					jsonData =  {
	    						"title" : $("#qTitle").text(),
	    						"detail" : $(".summernote").code(),
	    						"parentId" : "${qid}" ,
	    						"userId"   : '${userId}'
	    					};
	    					
	    					questionDetail.postAnswer(jsonData);
// 	    					console.log(jsonData);
	    					$(".summernote").code('');
	    				}
	    				
	    			});
	    			
	    			$("#btLoadMore").click(function(){ 
    					page++;
				    	$("#a-loading").show();
				    	$("#btLoadMore").hide();
						questionDetail.getAnswerByQuestionId("${qid}",page);
    				});
	    			
	    			
	    			var afterVoted=0;
	    			
	    			/* VOTE */
    				questionDetail.vote = function(data,type,voteType){
    					$.ajax({ 
	    				    url: "${pageContext.request.contextPath}/rest/forum/vote/"+type,  
	    				    type: 'POST',
	    				    datatype: "json",
	    				    data: JSON.stringify(data), 
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) {  
	    				    	
    	    					if(voteType == "LIKEQ" || voteType == "UNLIKEQ" ){
    				    			$("#qTotalVotes").text( data.TOTAL_VOTE);
    	    					}else if(voteType == "LIKEA" || voteType == "UNLIKEA" ){
    	    						$("#answerTotalVotes"+data.COMMENTID).text( data.TOTAL_VOTE);
    	    					}else if( voteType == "SA"){
    	    						$("#selectedAnswerTotalVotes").text( data.TOTAL_VOTE);
    	    					} 
//     	    					console.log(data);
//     	    					console.log(voteType);
	    				    },
	    				    error:function(data) { 
	    				        console.log(data);
	    				    }
	    				});
    				};
    				
    				$(document).on('click',"#likeQ,#unlikeQ,#likeSA,#unlikeSA,#likeA,#unlikeA", function(){
//     					console.log($(this).data("type"));
    	    			if('${userId}' == ''){
    	    				$(".btLogin").trigger('click');
    	    			}else{
    	    				json = {
    	    						"commentId": $(this).data("commentid"),
    	    						"userId": "${userId}"
    	    					};
    	    				type = "";
    	    				if($(this).data("sa") == "sa"){
    	    					type = "SA";
    	    				}else{
    	    					type = $(this).data("type");
    	    				}
    	    				$(this).data("type");
    	    			 	questionDetail.vote(json , $(this).data("type"),type);
    	    			 	
    	    			 	
    	    			 	
    					
    	    			}
    				});
    				
    				$(document).on('click',"#selectQuestion", function(){
//     					console.log($(this).data("answerid"));
    					data = {
    							 "answerId": $(this).data("answerid"),
    							 "questionId": "${qid}"
    					};
    					$.ajax({ 
	    				    url: "${pageContext.request.contextPath}/rest/forum/selectanswer",  
	    				    type: 'POST',
	    				    datatype: "json",
	    				    data: JSON.stringify(data), 
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) {  
	    				    	$("#p-success").bPopup({modalClose: false});
	    						setTimeout(function(){
	    							location.reload();
	    						}, 1000 );
	    				    	
	    				    },
	    				    error:function(data) { 
	    				        console.log(data);
	    				    }
	    				});	
    				});
    				
				
			  });	
	    		
			  
			 
			  
			  
			 
			  
			  
			  
			  function shorten(text, maxLength) {
				  var ret = text;
				  if (ret.length > maxLength) {
				  ret = ret.substr(0,maxLength-3) + "...";
				  }
				  return ret;
		 	 }
			  
			  function parseHtmlEnteties(str) {
				    return str.replace(/&#([0-9]{1,3});/gi, function(match, numStr) {
				        var num = parseInt(numStr, 10); // read num as normal number
				        return String.fromCharCode(num);
				    });
				}
		</script>	
    			
    	<div id="p-success" class="ka-popup" style="display: none;width: 50%;">
			<div class="alert alert-success alert-block fade in alert-dismissable">
								  <button type="button" class="close" aria-hidden="true">
									<span class="button b-close"><span>x</span></span>
								</button>
								 You have been selected this answer to be the best answer.
			</div>		
		</div>	
		
		<!-- <script src="http://memo.khmeracademy.org/resources/js/hrdmemoplugin.js"></script>	 -->
    			
	</body>
</html>
							
