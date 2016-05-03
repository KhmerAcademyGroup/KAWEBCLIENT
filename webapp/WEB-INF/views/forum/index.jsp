<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Forum</title>
		<jsp:include page="../shared/_header.jsp" />
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
		
<%-- 				<jsp:include page="../shared/_banner.jsp"></jsp:include> --%>
			
				<ol class="breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/forum"><spring:message code="fp_all_question"/></a></li>
<!-- 				  <li><a href="#fakelink">Users</a></li> -->
				  <li><a href="${pageContext.request.contextPath}/forum/question/ask"><spring:message code="fp_ask_question"/></a></li>
				</ol>
				
				
				
			<h3 class="page-title"> <span id="getType">  </span> <span id="getTotalQuestion"> </span> </h3>
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div>
	
			<div class="row"  >
					<div class="col-sm-8 col-md-9">
						
						<div class="section">
								
								<table class="table">
						
											<tbody id="getQuestion">
											
												<!-- 
												<tr>
													<td class="expand footable-first-column">
														<span class="desc-wrapper"> 
															<a  href="question.act?q=229" class="ka-question"> 
																Android theme will not update status bar color Android theme will ...
															</a> 
															<p>
															   Android theme will not update status bar color Android theme will not update status bar color Android theme 
															   will not update status bar color Android theme will not update status bar color...
															</p>
															<a href="list.act?tag=java">
																<span class="label label-primary">java</span>
															</a>
														</span>
													</td>
													<td class="vu-table-td footable-last-column" style="width: 140px;">
														<div style="width: 40px;"><small>0 Votes</small></div>
														<div style="width: 60px;"><small>0 Answers</small></div>
													</td>
													<td class="vu-table-td footable-last-column">
														<div style="width: 40px;"><a class="username-coloured" style="color:#37BC9B;" href="#" >Phearun</a></div>
														<div style="width: 70px;"><small>Jan 18, 2016</small></div>
														<div><img style="width: 40px;" src="/KAWEBCLIENT/resources/assets/img/avatar/avatar-1.jpg" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
												 -->
												
												
											</tbody>
											<tfoot>
												
											</tfoot>
										</table>
									
									
								<div id="loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"/></div>
										
								 <div class="text-center">
									<button class="btn btn-primary" id="btLoadMore" style="display:none" ><spring:message code="fp_more"/></button>
								</div>
						
				</div>
					</div><!-- /.col-sm-8 col-md-9 -->
					
					
					<div class="col-sm-4 col-md-3">
						
						<!-- BEGIN SIDEBAR -->
						<div class="section sidebar"  style="min-height:600px" >
							
							<div class="panel panel-square panel-primary panel-no-border">
							  <div class="panel-heading lg">
								<h3 class="panel-title"><spring:message code="fp_category"/></h3>
							  </div>
							   <!-- List group -->
								<div class="list-group" id="getCategory">
								  
								 
								</div>
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
		
		 <script id="question_tmpl" type="text/x-jquery-tmpl">
												<tr>
													<td class="expand footable-first-column">
														<span class="desc-wrapper"> 
															<a  href="${pageContext.request.contextPath}/forum/question/{{= commentId }}" class="ka-question"> 
																{{= title }}
															</a> 
															<p>
															   <p> {{= detail }} </p>
															</p>
															<div class="text-right" id="getTage">
																<a href='list.act?tag='"{{= tag }}"'><span class='label label-primary'> {{=  tag }} </span> </a>
															</di>
														</span>
													</td>
													<td class="vu-table-td footable-last-column">
														<div style="width: 40px;"><small>{{= vote }} Votes</small></div>
														<div style="width: 60px;"><small>{{= commentCount }} Answers</small></div>
													</td>
													<td class="vu-table-td footable-last-column">
														<div style="width: 100px;" ><a  class="ka-username" style="color:#37BC9B;" href="#" >{{= username }}</a></div>
														<div style="width: 70px;"><small>{{= postDate }}</small></div>
														<div><img style="width: 40px;" src="{{= userImageUrl }}" class="avatar img-circle" alt="Avatar"></div>
													</td>
												</tr>
		</script>





		
		 <script id="category_tmpl" type="text/x-jquery-tmpl">
				<a href="javascript:" data-cateid="{{= categoryId }}" data-cate="{{= categoryName }}" id="listQuestionByCate" class="list-group-item">{{= categoryName }} ({{= commentCount }})</a>
		</script>


		<script type="text/javascript">
			  $(document).ready(function(){
			  	
				   
				  
				    var question = {};
			  		var page = 1;
			  		var totalPage = 0;
			  		var url ="";
			  		var type ="All";
			  		var empty = true;
			  		
			  		question.listQuestion = function(cateid, tag ,page){
			  			if(empty == true){
			  				$("#getQuestion").empty();			  				
			  			}
			  			$("#loading").show();
			  			$("#btLoadMore").hide();
			  			if(type== "All"){
			  				url = "${pageContext.request.contextPath}/rest/forum/question?page="+page+"&item=10";
			  			}else if(type== "ByCate"){
			  				url = "${pageContext.request.contextPath}/rest/forum/question/c/"+cateid+"?page="+page+"&item=10";
			  			}else if(type== "ByTag"){
			  				url = "${pageContext.request.contextPath}/rest/forum/question/t/"+tag+"?page="+page+"&item=10";
			  			}
	    				$.ajax({ 
	    				    url: url,  
	    				    type: 'GET',
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) {  
	    				    	console.log(data);
	    				    	if(data.STATUS == false){
	    				    		$("#loading").hide();
	    				    		$("#getTotalQuestion").text("Question Not found!");
	    				    		return;
	    				    	}
	    				    	
	    						$("#getTotalQuestion").text(data.PAGINATION.totalCount + " Questions");
	    						totalPage = data.PAGINATION.totalPages;
	    						
	    						questionDiv = "";
	    						
	    						
	    						for(var i=0;i<data.RES_DATA.length;i++){
	    							tagHTML = "";
	    							if(data.RES_DATA[i].tag != null){
										tags = data.RES_DATA[i]["tag"].split(", ");
										for(var j=0; j<tags.length; j++){
											tagHTML += "<a id='listQuestionByTag' data-tag='"+tags[j].trim()+"' href='javascript:' style='padding-right: 2px;'><span class='label label-primary'>"+tags[j] +" </span></a>";
										}
									}

									questionDiv += '<tr>'+
														'<td class="expand footable-first-column">'+
															'<span class="desc-wrapper"> '+
																'<a  href="${pageContext.request.contextPath}/forum/question/'+data.RES_DATA[i]["commentId"]+'" class="ka-question">'+
																	shorten(data.RES_DATA[i]["title"] , 80)+
																'</a> '+
																/* '<p>'+
																   '<p> '+shorten(data.RES_DATA[i]["detail"] , 230)+'</p>'+
																'</p>'+ */
																'<div class="text-left" id="getTage" style="margin-top:20px">'+
																	tagHTML+
																'</di>'+
															'</span>'+
														'</td>'+
														'<td class="vu-table-td footable-last-column">'+
															'<div style="width: 70px;"><small>'+data.RES_DATA[i]["vote"]+' Votes</small></div>'+
															'<div style="width: 70px;"><small>'+data.RES_DATA[i]["commentCount"]+' Answers</small></div>'+
														'</td>'+
														'<td class="vu-table-td footable-last-column">'+
															'<div style="width: 65px;" ><a  class="ka-username" style="color:#37BC9B;" href="javascript:" >'+shorten(data.RES_DATA[i]["username"], 10)+'</a></div>'+
															'<div style="width: 65px;"><small>'+data.RES_DATA[i]["postDate"]+'</small></div>'+
															'<div><img style="width: 40px;" src="'+  data.RES_DATA[i].userImageUrl+'" class="avatar img-circle" alt="Avatar"></div>'+
														'</td>'+
													'</tr>';
									
									
								}
	    						
	    						$("#loading").hide();
	    						$("#getQuestion").append(questionDiv);
	    						if(page >= data.PAGINATION.totalPages){ 
	    							$("#btLoadMore").hide();
	    						}else{
	    							$("#btLoadMore").show();
	    						}
	    				    },
	    				    error:function(data,status,er) { 
	    				        console.log("error: "+data+" status: "+status+" er:"+er);
	    				    }
	    				});
	    				
	    				
	    			};
	    			
	    			
	    			question.listCategory = function(){
	    				$.ajax({ 
	    				    url: "${pageContext.request.contextPath}/rest/category?page=1&item=100",  
	    				    type: 'GET',
	    				    beforeSend: function(xhr) {
	    	                    xhr.setRequestHeader("Accept", "application/json");
	    	                    xhr.setRequestHeader("Content-Type", "application/json");
	    	                },
	    				    success: function(data) { 
	    						if(data.RES_DATA.length>0){
	    							$("#category_tmpl").tmpl(data.RES_DATA).appendTo("#getCategory");
	    						}
	    				    },
	    				    error:function(data,status,er) { 
	    				        console.log("error: "+data+" status: "+status+" er:"+er);
	    				    }
	    				});
	    			};
	    		
	    			question.listCategory();
	    			
	    		    if("${tag}" != ''){
	    		    	 type="ByTag";
		    			 empty = true;
		    			 page = 1;
		    			 $("#getType").text("${tag}" +" : ");
		    			 $("#btLoadMore").attr("data-tag" ,"${tag}" );
						 question.listQuestion( null , "${tag}",page);	
		    		}else{
		    			question.listQuestion(null,null,page);
		    		}
	    			
	    			
	    			
	    			
	    			$(document).on('click',"#listQuestionByCate" , function(){ 
	    			    type="ByCate";
	    			    empty = true;
	    				page = 1;
	    				$("#getType").text($(this).data("cate") +" : ");
	    				$("#btLoadMore").attr("data-cateid" ,$(this).data("cateid") );
						question.listQuestion($(this).data("cateid"), null , page);	   
	    			});
	    			
	    			$(document).on('click',"#listQuestionByTag" , function(){ 
	    			    type="ByTag";
	    			    empty = true;
	    				page = 1;
	    				$("#getType").text($(this).data("tag") +" : ");
	    				$("#btLoadMore").attr("data-tag" ,$(this).data("tag") );
	    				alert($(this).data("tag"));
						question.listQuestion( null , $(this).data("tag"),page);	   
	    			});
	    			
	    			
	    			
	    			$("#btLoadMore").click(function(){ 
// 	    				console.log(type);
	    				page++;
	    				empty = false;
// 	    				if(page > totalPage){
// 	    					$(this).hide();
// 	    					return ;
// 	    				}
// 	    				$(this).hide();
						$("#loading").show();
						if(type=="All"){
							question.listQuestion(null,null,page);
						}else if(type=="ByCate"){
							question.listQuestion($(this).data("cateid"), null , page);	   
						}else if(type=="ByTag"){
							question.listQuestion( null , $(this).data("tag"),page);	   
						}
	    			});
	    	  });
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  function shorten(text, maxLength) {
				  var ret = text;
				  if (ret.length > maxLength) {
				  ret = ret.substr(0,maxLength-3) + " ...";
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
							