
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%-- <%
		 String playlistid = ${playlistid}}	;
	%>  --%>
	
<jsp:include page="../shared/_header.jsp" />

<style type="text/css">
	.work-item{
	box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12) !important;
	}
	.store-list{
	box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12) !important;
	margin-bottom: 10px;
	}
	    .videoname{
	    		display: inline-block;
			    white-space: nowrap;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    -o-text-overflow: ellipsis;
			    width: 219px;
    }
</style>
</head>

<body class="tooltips no-padding" style="background:#EEEFF1 !important" >

	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->

	<!-- BEGIN TOP NAVBAR -->
	<jsp:include page="../shared/_menu.jsp" />
	<!-- END TOP NAVBAR -->


	<!-- My Contend -->

	<div class="container ka-container">




		<div class="the-box no-border">
			<div id="firtvideo">
			
			</div>
		</div>








		<div id="work-mixitup" class="work-content">
			<div class="row" >
			<h6 class="page-title" id="getTotalVideo"> </h6>
			<div id="listVideoinPlaylist">
				
			</div>						
			<div id="loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"/></div>						
			<div class="text-center">
				<button class="btn btn-primary" id="btLoadMore" style="display:none" > Load more</button>
			</div>		

			</div>
			<!-- /.row -->
		</div>
		<!-- /#work-mixitup -->



	</div>
	
	<!-- ============================================================== -->
	
		<div class="modal fade" id="frmadd" tabindex="-1" role="dialog"
					aria-labelledby="DefaultModalLabel" aria-hidden="true">
					<div class="modal-dialog ">
						<div class="modal-content">
							
							<div class="modal-body" style="padding-bottom: 0px;">
								<div
									class="panel with-nav-tabs panel-default panel-square panel-no-border">
									<div class="panel-heading">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#videosearch-panel"
												data-toggle="tab">Video Search</a></li>
											<li class=""><a href="#your-video-panel"
												data-toggle="tab">Your video</a></li>
										</ul>
									</div>
									<div id="panel-collapse-1" class="collapse in">
										<div class="panel-body" >
											<div class="tab-content">

												<div class="tab-pane fade in active" id="videosearch-panel">

													<div class='btn-toolbar top-table' role='toolbar'>
														<div class='btn-group'>
															<input type='text' id='searchVideos' class='form-control'
																placeholder='Search by Video title'>
														</div>
													</div>
												<h6 class="page-title" id="getTotalVideoSearch"> </h6>
												
													<div id="getVideoSearch" style="margin-top: 10px;">
													
													
													</div>
													<!-- page gination -->
													<div class="text-center">
				    									<div id="demo4_top" class="demo4_top" style="margin-bottom: -41px;"></div>
				    								</div>

												</div>

												<div class="tab-pane fade" id="your-video-panel">

													<div class='btn-toolbar top-table' role='toolbar'>
														<div class='btn-group'>
															<input type='text' id='searchYourVideo'
																class='form-control' placeholder='Search by Video title'>
														</div>
													</div>
													<h6 class="page-title" id="getTotalVideoUser"> </h6>
													<div id="getYourVideo" style="margin-top: 10px;"></div>
														<div id="loadingVideoUser" class="text-center">
															<img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif" />
														</div>
														<div class="text-center">
															<button class="btn btn-primary" id="btLoadMoreUseVideo"	style="display: none">Load more</button>
														</div>

									</div>


											</div>
											<!-- /.tab-content -->
										</div>
										<!-- /.panel-body -->
									</div>
									<!-- /.collapse in -->
								</div>
							</div>
							<div class="modal-footer" style="padding: 1px 19px 6px;">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" onclick="closeFrmPopAdd()">Close</button>
							</div>
							<!-- /.modal-footer -->
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-doalog -->
				</div>
				<!-- /#DefaultModal -->




	<div class="modal fade" id="frmup_date_playlist" tabindex="-1" role="dialog" aria-labelledby="DefaultModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
											<div class="modal-content" style="border-radius: 5px;">
											  <div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="DefaultModalLabel">Update playlist</h4>
											  </div>
											  <div class="modal-body" >
												
													<form method="post" name="frmupdateplaylist" action="/" id="frmupdateplaylist" >
														 <div class="form-group">
															<label for="exampleInputEmail1">Playlist name</label>
															<input type="text" class="form-control" name="playlistname" id="updatename" placeholder="EG. MyTop">
															<input type="hidden" class="form-control" name="playlistid"  id="updateid" placeholder="EG. MyTop">
															<input type="hidden" class="form-control" name="thumbnail"  id="thumbnail" placeholder="EG. MyTop">
															<small  class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
														  </div>
														  <div class="form-group">
															<label for="exampleInputPassword1">Description</label>
															<input type="text" name="description" class="form-control" id="updatedescription" placeholder="EG. My music">
														 </div>
														 <div class="form-group">
															<label>Set View</label>
															<select class="form-control" id="updatepublicview" name="updatepublicview" tabindex="2">
																<option value="false">Private</option>
																<option value="true">Public</option>
															</select>
														</div>
														 	<button type="button" id="btclosefrmupdate" class="btn btn-default" data-dismiss="modal">Close</button>
														 	 <input type="submit" id="btnupdateplaylist"   class="btn btn-success" value="Update">
													</form> 
													
											  </div>
											  <div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
											  </div><!-- /.modal-footer -->
											</div><!-- /.modal-content -->
										  </div><!-- /.modal-doalog -->
										</div><!-- /#DefaultModal -->	
										
										<!-- ================================================================ -->



	<!-- End My Contend -->






	<jsp:include page="../shared/_footer.jsp" />





	
	<script id="jfirtvideo" type="text/x-jquery-tmpl">
		<div class="media">
					<a class="pull-left"> <img alt="image" class="store-image"
						src="https://i.ytimg.com/vi/{{= thumbnailUrl}}/mqdefault.jpg"
						style="height: 130px"></a>
					<div class="clearfix visible-xs"></div>
					<div class="media-body">
						<a></a>
						<h4 class="media-heading" style="padding: 0px; margin: 0px">
							<a><strong class="text-black">{{= playlistName}}</strong></a>&nbsp;<span
								class="label label-danger" style="font-size: 10px;"><i
								class="fa fa-lock"></i> Private</span>
						</h4>
						<ul style="list-style: none; padding: 0px; margin: 0px;">
							<li><a class="text-muted small">by {{= username}} | {{= countVideos}} Videos </a></li>
							<li><span class="text-muted small">{{= description}} </span></li>
						</ul>
					</div>
					<!-- /.media-body -->
					<span class="small text-muted" style="color: #37BC9B"> 
						<a href="#" data-backdrop="static" class="btn btn-default btn-perspective" data-toggle="modal" onclick="PlayAll()"><i class="fa fa-play"></i> Play All </a>&nbsp; &nbsp; 					

						{{if userId == "MQ=="}}  
						<a href="#frmadd" data-backdrop="static" class="btn btn-default btn-perspective" data-toggle="modal" onclick="clkickBtAdd()"><i class="fa fa-plus-square-o"></i>
							Add video </a>&nbsp; &nbsp;
						<a href="#frmup_date_playlist"
						class="btn btn-default btn-perspective"
						onclick="getPlaylistForUpdate(344)" data-toggle="modal"><i
							class="fa fa-cogs"></i> Playlist settings </a> &nbsp; &nbsp;
						<a href="#" onclick="deletePlayList('deleteplaylist.act?playlistid=344')" class="btn btn-default btn-perspective">
							<i class="fa fa-trash-o"></i> Delete 
						</a>
						{{/if}}
							
					</span>
				</div>

</script>
	
		<script id="jlistVideoInplaylist" type="text/x-jquery-tmpl"> 
			<div
						class="col-sm-4 col-md-3 col-xs-6 mix " style="display: inline-block;  opacity: 1;">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId}}&playlist=${ playlistid }">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a>
								{{if userId == "MQ=="}}  
								 <a
									href="#">
									<i class="glyphicon glyphicon-remove-sign "
									style="margin-left: 89%"></i>
								</a>
								{{/if}}
							</div>
							<!-- /.hover-wrap -->
							<i> <a href="playlistdetail.act?playlistid=1"><img
									
									src="https://i.ytimg.com/vi/{{= youtubeUrl}}/mqdefault.jpg"
									alt="..."></a>
							</i>
							<div class="the-box no-border transparent no-margin" style="height: 100px;">
								<div class="media-body" class="color:blue;">

									<h5 class="media-heading" style="padding: 0px; margin: 0px;">
										<strong class="text-black">{{= videoName}}</strong>
									</h5>
									<ul style="list-style: none; padding: 0px; margin: 0px;">
										<li class="text-muted small">by {{= username}}
											|{{= postDate}}</li>
										<li><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp;{{= countVotePlus}}&nbsp;&nbsp;
											<i class="fa fa-thumbs-o-down"></i>&nbsp;&nbsp;{{= countVoteMinus}}&nbsp;&nbsp;
											<i class="fa fa-eye"></i>&nbsp;&nbsp;{{= viewCounts}}&nbsp;&nbsp;</li>
									</ul>
								</div>
							</div>
							<!-- /.the-box no-border transparent -->
						</div>
						<!-- /.work-item -->
					</div>

       </script>

	<script id="jgetVideoSearch" type="text/x-jquery-tmpl">
 	

	<div class="the-box no-border store-list">
		<div class="media">
			<a class="pull-left" href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId}}"><img
				alt="image" class="store-image img-responsive"
				src="https://i.ytimg.com/vi/{{= youtubeUrl}}/mqdefault.jpg"
				style="width: 179px; height: 94px;"></a>
			<div class="clearfix visible-xs"></div>
			<div class="media-body" style="overflow: visible">				
				<div class="btn-group pull-right">					
					
						<button class="btn btn-info btadd" vid={{= videoId}}>Add</button>
						
					
				</div>
				<ul class="list-inline">
					<li><a href="../elearning/play.act?v=13" title="{{= videoName}}"><span class="videoname"
							class="text-black">{{= videoName}}</span></a></li>
					<br/>
						<li><a  >by {{= username}}</a> | <span>{{= postDate}}</span></li>
					<br/>						
						<li>
						{{= countVotePlus}}
						<i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;&nbsp;{{= countVoteMinus}}
						<i class="fa fa-thumbs-down"></i>  &nbsp;&nbsp;&nbsp;{{= viewCounts}} 
						<i class="fa fa-eye"></i>      &nbsp;&nbsp;&nbsp;</span>
						</li>						
				</ul>								
			</div>
		</div>
	</div>


	
</script>

	<script id="jgetYourVideo" type="text/x-jquery-tmpl">
 	

	<div class="the-box no-border store-list">
		<div class="media">
			<a class="pull-left" href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId}}"><img
				alt="image" class="store-image img-responsive"
				src="https://i.ytimg.com/vi/{{= youtubeUrl}}/mqdefault.jpg"
				style="width: 179px; height: 94px;"></a>
			<div class="clearfix visible-xs"></div>
			<div class="media-body" style="overflow: visible">				
				<div class="btn-group pull-right">					
					
						<button class="btn btn-info btadd" vid={{= videoId}}>Add</button>
						
					
				</div>
				<ul class="list-inline">
					<li><a href="../elearning/play.act?v=13" title="{{= videoName}}"><span class="videoname"
							class="text-black">{{= videoName}}</span></a></li>
					<br/>
						<li><a  >by {{= username}}</a> | <span>{{= postDate}}</span></li>
					<br/>						
						<li>
						{{= countVotePlus}}
						<i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;&nbsp;{{= countVoteMinus}}
						<i class="fa fa-thumbs-down"></i>  &nbsp;&nbsp;&nbsp;{{= viewCounts}} 
						<i class="fa fa-eye"></i>      &nbsp;&nbsp;&nbsp;</span>
						</li>						
				</ul>								
			</div>
		</div>
	</div>


	
</script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			var playlistId="${playlistid}"; 			
			
			
			    var listVideo = {};
		  		var page = 1;
		  		var totalPage = 0;	
		  		var empty = true;
		  		var pageVideoUser=1;
		  				  			
		  		
		  		
		  		listVideo.getPlaylist=function(){
		  			
		  			$.ajax({
					url : "${pageContext.request.contextPath}/rest/elearning/getplaylist/"+playlistId,
					method: "GET",
					success: function(data){									
						console.log(data);
						
						if(data.USERPLAYLIST !=null){
							$("#jfirtvideo").tmpl(data.USERPLAYLIST).appendTo("#firtvideo");							
						} 				  
					}
				});	
		  		};
		  		
		  		/* ========listVideoInPlaylistDetail=========     			
    			url:rest/elearning/playlistdetail/
    			*/
		  		listVideo.listVideoInPlaylist = function(playlistId,page){
		  			
		  			$("#loading").show();
		  			$("#btLoadMore").hide();	
		  			if(empty == true){
		  				$("#listVideoinPlaylist").empty();	
		  			}
    				$.ajax({ 
    					url : "${pageContext.request.contextPath}/rest/elearning/playlistdetail/"+playlistId+"?page="+page+"&item=8",
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) {  console.log(data);    				    
    				    $("#getTotalVideo").text(data.PAGINATION.totalCount + " Videos");
    						$("#loading").hide();
    						if(data.RES_DATA.length>0){
    							$("#jlistVideoInplaylist").tmpl(data.RES_DATA).appendTo("#listVideoinPlaylist");
    						}
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
    			
    			
    			/* ========listVideoUser=========     			
    			url:rest/elearning/listvideouser/
    			*/
					listVideo.listUserVideo = function(userid,pageVideoUser){		  			
		  			$("#loadingVideoUser").show();
		  			$("#btLoadMoreUseVideo").hide();	
		  			if(empty == true){
		  				$("#getYourVideo").empty();	
		  			}
    				$.ajax({ 
    					url : "${pageContext.request.contextPath}/rest/elearning/listvideouser/"+userid+"?page="+pageVideoUser+"&item=4",
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) {  console.log(data);    				    
    				     $("#getTotalVideoUser").text(data.PAGINATION.totalCount + " Videos"); 
    						$("#loadingVideoUser").hide();
    						if(data.RES_DATA.length>0){
    							$("#jgetYourVideo").tmpl(data.RES_DATA).appendTo("#getYourVideo");
    						}
    						if(page >= data.PAGINATION.totalPages){ 
    							$("#btLoadMoreUseVideo").hide();
    						}else{
    							$("#btLoadMoreUseVideo").show();
    						}
    				    },
    				    error:function(data,status,er) { 
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    				
    				
    			};
		  		
    			/* ========listAllVideo=========     			
    			url:rest/elearning/listallvideo/
    			*/
					listVideo.listAllVideo = function(page){		  			
    				
    				$.ajax({ 
    					url : "${pageContext.request.contextPath}/rest/elearning/listallvideo?page="+page+"&item=4",
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) {  console.log(data);        				    
    				    $("#getVideoSearch").empty();	
    				    
    				    $("#getTotalVideoSearch").text(page+=" / "+data.PAGINATION.totalPages);    				        				   
    					if(data.RES_DATA.length>0){
    							$("#jgetVideoSearch").tmpl(data.RES_DATA).appendTo("#getVideoSearch");    	    							
    							
    						}    		    							
    				    },
    				    error:function(data,status,er) { 
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    				
    				
    			};
    			
    			
    			
    			listVideo.loadPagination= function(){
    				
    				var total=$("#getTotalVideoSearch").text();
    				
    				$('.demo4_top').bootpag({
    			        total: 90,    			        
    			        maxVisible: 5,
    			        leaps: true,
    			        firstLastUse: true,
    			        first: '&#8592;',
    			        last: '&#8594;',
    			        wrapClass: 'pagination',
    			        activeClass: 'active',
    			        disabledClass: 'disabled',
    			        nextClass: 'next',
    			        prevClass: 'prev',
    			        lastClass: 'last',
    			        firstClass: 'first'
    			    }).on("page", function(event, num){
    			    	listVideo.listAllVideo(num);
    			    }); 
    		  		
    				};
    			
    			
    				listVideo.getPlaylist();
        			listVideo.listVideoInPlaylist(playlistId,page);
        			listVideo.listUserVideo("MQ==",pageVideoUser);    			
        			listVideo.listAllVideo(1);
        			listVideo.loadPagination();
    			
        			$(".btadd").click(function(){$(this).attr('vid');});		
    			$("#btLoadMore").click(function(){  
    				page++;    				
    				empty = false;
    				$("#loading").show();								
    					listVideo.listVideoInPlaylist(playlistId,page);    				
    			});
				
    			$("#btLoadMoreUseVideo").click(function(){  
    				pageVideoUser++;    				
    				empty = false;
    				$("#loadingVideoUser").show();								
    				listVideo.listUserVideo("MQ==",pageVideoUser);    				
    			});
    			    								
    			
    				    			
		
		});
		/* function addVideoToPlaylist(vid){
			var playlistId="${playlistid}"; 
			$.ajax({
				url : "${pageContext.request.contextPath}/rest/elearning/videotoplaylist/"+playlistId+"/"+vid,
				method: "GET",
				success: function(data){
					alert(data);								  
				}
			});	 
			}
		 */
		
		
		
		
	</script>
	<!-- <script src="http://192.168.178.186:8080/HRD_MEMO/resources/admin/js/memo.min.js"></script> -->
	
</body>
