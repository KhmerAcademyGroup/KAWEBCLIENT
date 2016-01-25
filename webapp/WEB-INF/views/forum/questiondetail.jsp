<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
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
				  <li><a href="${pageContext.request.contextPath}/forum">Questions</a></li>
				  <li><a href="#fakelink">Users</a></li>
				  <li><a href="#fakelink">Ask Question</a></li>
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
								
								<h2 class="page-title" id="qTitle"><!-- Duis autem vel eum iriure dolor in hendrerit in vulputate velit --></h2>
								
								<table class="table">
											<tbody>
												<tr>
													<td class="vu-table-td footable-last-column text-left" style="width: 10%;">
														<div style="font-size:20px">
															<span data-toggle="tooltip" data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>
															<br/><span id="qTotalVotes"><!-- 110 --></span><br/>
															<span data-toggle="tooltip" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>
														</div>
													</td>
													
													<td class="expand footable-first-column" style="padding-right: 0px;">
															<div style="padding:20px;background-color:#f2f7fd" id="qDetail">
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
															<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs">Share</a> <!-- <a class="btn btn-default active btn-xs" href="#">Edit</a> --></span>
															<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" id="qUsername">Phearun</a></span>
														</div>
														<div class="text-right"><small id="qDate">Jan 18, 2016</small></div>
														<div class="text-right"><img id="qUserImage" style="width: 40px;" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar-1.jpg" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
											</tbody>
											<tfoot>
												
											</tfoot>
										</table>
									
										<!-- End Question -->
										
										<h4 class="page-title">5 Answers</h4>
										
										<!-- Selected Answer -->
										
										<table class="table">
											<tbody id="getQuestion">
												<tr>
													<td class="vu-table-td footable-last-column text-left" style="width: 10%;">
														<div style="font-size:20px">
															<span data-toggle="tooltip" data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>
															<br/><span>110</span><br/>
															<span data-toggle="tooltip" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>
															<br/>
															<span data-toggle="tooltip" data-original-title="This question owner accepted as the best answer." class="favorite fa fa-star text-warning"></span>
														</div>
													</td>
													
													<td class="expand footable-first-column" style="padding-right: 0px;">
															<div style="padding:20px;background-color:#f2f7fd">
															   Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															</div>
															<a href="list.act?tag=java">
																<span class="label label-primary">java</span>
															</a>
													</td>
												</tr>
												
												<tr>
													<td style="border-top: none;"></td>
													<td style="border-top: none;">
														<div>
															<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs">Share</a> <a class="btn btn-default active btn-xs" href="#">Edit</a></span>
															<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" >Phearun</a></span>
														</div>
														<div class="text-right"><small>Jan 18, 2016</small></div>
														<div class="text-right"><img style="width: 40px;" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar-1.jpg" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
											</tbody>
										</table>
										
									 	<!-- End Selected Answer -->
									 	
									 	<!-- Answers -->
										
										<table class="table">
											<tbody id="getQuestion">
												<tr>
													<td class="vu-table-td footable-last-column text-left" style="width: 10%;">
														<div style="font-size:20px">
															<span data-toggle="tooltip" data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>
															<br/><span>110</span><br/>
															<span data-toggle="tooltip" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>
															<br/><span style="font-size:20px" data-toggle="tooltip" data-original-title="Click to accept this answer because it solved your problem." class="favorite fa fa-star"></span>
															
														</div>
													</td>
													
													<td class="expand footable-first-column" style="padding-right: 0px;">
															<div style="padding:20px;background-color:#f2f7fd">
															   Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															</div>
															<a href="list.act?tag=java">
																<span class="label label-primary">java</span>
															</a>
													</td>
													
												
												</tr>
												<tr>
													<td style="border-top: none;"></td>
													<td style="border-top: none;">
														<div>
															<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs">Share</a> <a class="btn btn-default active btn-xs" href="#">Edit</a></span>
															<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" >Phearun</a></span>
														</div>
														<div class="text-right"><small>Jan 18, 2016</small></div>
														<div class="text-right"><img style="width: 40px;" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar-1.jpg" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
											</tbody>
										</table>
										
										<table class="table">
											<tbody id="getQuestion">
												<tr>
													<td class="vu-table-td footable-last-column text-left" style="width: 10%;">
														<div style="font-size:20px">
															<span data-toggle="tooltip" data-original-title="This question is useful and clear." class="glyphicon glyphicon-chevron-up"></span>
															<br/><span>110</span><br/>
															<span data-toggle="tooltip" data-original-title="This question is not useful and unclear." class="glyphicon glyphicon-chevron-down"></span>
														</div>
													</td>
													
													<td class="expand footable-first-column" style="padding-right: 0px;">
															<div style="padding:20px;background-color:#f2f7fd">
															   Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color... Android theme will not update status bar color Android theme will not update status bar color Android theme 
															</div>
															<a href="list.act?tag=java">
																<span class="label label-primary">java</span>
															</a>
													</td>
													
												
												</tr>
												<tr>
													<td style="border-top: none;"></td>
													<td style="border-top: none;">
														<div>
															<span class="text-left" style="color:#37BC9B;"><a href="#" class="btn btn-default active btn-xs">Share</a> <a class="btn btn-default active btn-xs" href="#">Edit</a></span>
															<span class="text-right" style="float:right"><a style="color:#37BC9B;" href="#" >Phearun</a></span>
														</div>
														<div class="text-right"><small>Jan 18, 2016</small></div>
														<div class="text-right"><img style="width: 40px;" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar-1.jpg" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
											</tbody>
										</table>
										
										<!-- End Answers -->
										
										 <div class="text-center">
											<button class="btn btn-warning id="btLoadMore" style="display:none1" > Load more answer</button>
										</div>
								
								
								<hr/>
								<h4 class="page-title">Answer</h4> 
								
								<div>
									<div class="summernote"> </div>
								</div>
								
								<button class="btn btn-primary">Post your answer</button>
						
				</div>
					</div><!-- /.col-sm-8 col-md-9 -->
					
					
					<div class="col-sm-4 col-md-3">
						
						<!-- BEGIN SIDEBAR -->
						<div class="section sidebar">
							
							<div class="panel panel-no-border panel-sidebar">
							  <div class="panel-heading">
								<h3 class="panel-title">Related : </h3>
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
			$('.summernote').summernote({
				  height: 150,   //set editable area's height
				  placeholder: 'write here...',
				  codemirror: { // codemirror options
				    theme: 'monokai'
				  }
				});
			

		});
	</script>
		
		 <script id="related_question_tmpl" type="text/x-jquery-tmpl">
				<li class="media" style="margin: 0px 0;">
									<div class="media-body">
										<p class="text-info">
											<a href="#fakelink" style="color: #3BAFDA;">
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
		
			  $(document).ready(function(){
				
				  
				 	questionDetail = {};
				    
			  		questionDetail.relatedQuestion = function(questionId){   
					 
	    				$.ajax({ 
	    				    url: "${pageContext.request.contextPath}/rest/forum/question?item=10",  
	    				    type: 'GET',
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) {  console.log(data);  
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
	    			
	    			questionDetail.relatedQuestion();
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
	    			
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
	    				    	console.log("Question : "+data.RESP_DATA.title);  
								if(data.RESP_DATA != null ){
									$("#qTitle").text(data.RESP_DATA.title);
									$("#qTotalVotes").text(data.RESP_DATA.vote);
									$("#qDetail").text(data.RESP_DATA.detail);
									$("#qUsername").text(data.RESP_DATA.username);
									$("#qDate").text(data.RESP_DATA.postDate);
// 									$("#qUserImage").text(data.RESP_DATA.title);
									tags = data.RESP_DATA.tag.split(", ");
									tagHTML = "";
									for(var i=0; i<tags.length; i++){
										tagHTML += "<a href='list.act?tag="+tags[i]+"' style='padding-right: 2px;'><span class='label label-primary'>"+tags[i] +" </span></a>";
									}
									$("#qTags").append(tagHTML);

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
		    				    	console.log("Answer : "+data.RESP_DATA[0].title);  
									if(data.RESP_DATA != null ){
// 										console.log(data.RESP_DATA); 
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
		    				    	console.log("Selected Answer : "+data);  
									if(data.RESP_DATA != null ){
// 										console.log(data.RESP_DATA); 
									}
		    				    },
		    				    error:function(data,status,er) { 
		    				        console.log("error: "+data+" status: "+status+" er:"+er);
		    				    }
		    				});
	    			};
	    			
	    			
	    			questionDetail.getQuestionByQuestionId("${qid}");
// 	    			questionDetail.getAnswerByQuestionId("${qid}",1);
// 	    			questionDetail.getSelectedAnswer("${qid}");
	    			
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
    			
    			
	</body>
</html>
							