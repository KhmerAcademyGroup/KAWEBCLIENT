
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <%-- <%
		 String userid = ${userid}	;
	%>  --%> 
	
<jsp:include page="../shared/_header.jsp" />

<style type="text/css">
	.work-item{
	box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12) !important;
	}
	.store-list ,.playlistinfo{
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




		<div class="the-box no-border playlistinfo" >
			<!-- <div id="firtvideo">
			
			</div> -->
			<div class="media">
					<a class="pull-left"> <img alt="image" class="store-image" id="thumbnailurlinfo"
						src=""
						style="height: 130px"></a>
					<div class="clearfix visible-xs"></div>
					<div class="media-body">
						<a></a>
						<h4 class="media-heading" style="padding: 0px; margin: 0px">
							<a><strong class="text-black" id="playlistnameinfo"><!-- {{= playlistName}} --></strong></a>&nbsp;<span
								class="label label-danger" style="font-size: 10px;"><i
								class="fa fa-lock"></i> Private</span>
						</h4>
						<ul style="list-style: none; padding: 0px; margin: 0px;">
							<li><a class="text-muted small" id="usernameinfo"> </a><a class="text-muted small" id="totalvideo"> </a></li>
							<li><span class="text-muted small" id="descriptioninfo"><!-- {{= description}}  --></span></li>
						</ul>
					</div>
					<!-- /.media-body -->
					<span class="small text-muted" style="color: #37BC9B"> 
						<a href="#" data-backdrop="static" class="btn btn-default btn-perspective" data-toggle="modal" onclick="PlayAll()"><i class="fa fa-play"></i> Play All </a>&nbsp; &nbsp; 					

						
						<a href="#frmadd" data-backdrop="static" class="btn btn-default btn-perspective" id="btn-popup-add" data-toggle="modal" ><i class="fa fa-plus-square-o"></i>
							Add video </a>&nbsp; &nbsp;
						<a href="#frmup_date_playlist"
						class="btn btn-default btn-perspective"
						onclick="getPlaylistForUpdate(344)" data-toggle="modal"><i
							class="fa fa-cogs"></i> Playlist settings </a> &nbsp; &nbsp;
						<a href="#" id="btndeleteplaylist"  class="btn btn-default btn-perspective">
							<i class="fa fa-trash-o"></i> Delete 
						</a>
						
							
					</span>
				</div>
		</div>

		<div id="work-mixitup" class="work-content">
			<div class="row" >
			<h6 class="page-title" id="getTotalVideo"> </h6>
			<div id="listVideoinPlaylist">
				
			</div>						
				

			</div>
			<!-- /.row -->
		</div>
		<!-- /#work-mixitup -->

<div id="loading" class="text-center"><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"/></div>						
			<div class="text-center">
				<button class="btn btn-primary" id="btLoadMore" style="display:none" > Load more</button>
			</div>	

	</div>
	
	<!-- ============================================================== -->
	
		<div class="modal fade" id="frmadd" tabindex="-1" role="dialog"
					aria-labelledby="DefaultModalLabel" aria-hidden="true">
					<div class="modal-dialog ">
						<div class="modal-content">
							<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="DefaultModalLabel">Add video to playlist</h4>
											  </div>
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
<h1 id="test">hello</h1>
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
				    									<div id="pagin_all_video" class="pagin_all_video" style="margin-bottom: -41px;"></div>
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
														<!-- page gination -->
													<div class="text-center">
				    									<div id="pagin_video_user" class="pagin_video_user" style="margin-bottom: -41px;"></div>
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
									data-dismiss="modal" id="close_modal_addvideo">Close</button>
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

		<script id="jlistVideoInplaylist" type="text/x-jquery-tmpl"> 
			<div
						class="col-sm-4 col-md-3 col-xs-6 mix " style="display: inline-block;  opacity: 1;">
						<div class="work-item">
							<div class="hover-wrap">
								<a
									href="${pageContext.request.contextPath}/elearning/playvideo?v={{= videoId}}&playlist=${ playlistid }">
									<i class="glyphicon glyphicon-play icon-plus"></i>
								</a>
								{{if userId == "${userid}"}}   
								 <a style="cursor:pointer"
									 class="btnremovevideofromplaylist" vid="{{= videoId}}">
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

	

	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>

	<script type="text/javascript">	
		var playlistId="${playlistid}";
		var userid ="${userid}"; 
		var page = 1;		 		
  		var pageVideoUser=1;	
  		//var userid= "MQ==";
  		var empty_video_inplaylist="<div class='alert alert-success fade in alert-dismissable'>"
				+"<button type='button' class='close' data-dismiss='alert'"
			+"aria-hidden='true'>x</button>"
			+"<strong>No</strong>  videos in this playlist yet !"
			+"</div>";
		$(document).ready(function(){
			    var listVideo = {};
			    var totalPage = 0;	
		  		var empty = true;
		  	    		  				 
		  			$('.modal').on('hidden.bs.modal', function(e)
		  			    {
		  				$("#getYourVideo").html("");
		  				$("#getVideoSearch").html("");
		  				 $(this).removeData();
		  				 
		  			    }) ;
		  		
				listVideo.Listall = function(page){
		  			
		  			console.log("llllllllllllll");
		  			
		  			 $.ajax({ 
		  				url : "${pageContext.request.contextPath}/rest/elearning/listallvideo?page="+page+"&item=4",
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) {     				    	
    				    	allVideoJson = data.RES_DATA;
    				    	$.get("${pageContext.request.contextPath}/rest/elearning/playlistdetail/"+playlistId+"?page=1&item=1000",function(data){
    				    		
    				    		$("#getVideoSearch").html(listVideo.createVideoContent(allVideoJson,data.RES_DATA)); 	
    				    	});
    				    	
    				    },
    	                error:function(data,status,er) { 
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    	                
		  		}); 
				}
				
				/* ========listVideoUser=========     			
    			url:rest/elearning/listvideouser/
    			*/
				listVideo.listUserVideo  = function(userid,pageVideoUser){		  	    				    			
		  			 $.ajax({ 
		  				url : "${pageContext.request.contextPath}/rest/elearning/listvideouser/"+userid+"?page="+pageVideoUser+"&item=4",
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) {
    				    	if(data.RES_DATA != null){
    				    	allVideoJson = data.RES_DATA;    				    	
    				    	$.get("${pageContext.request.contextPath}/rest/elearning/playlistdetail/"+playlistId+"?page=1&item=1000",function(data){    				    		
    				    		$("#getYourVideo").html(listVideo.createVideoContent(allVideoJson,data.RES_DATA));    				    		    				    	
    				    	});    				    	
    				    	
    				    }},
    	                error:function(data,status,er) { 
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
		  		}); 
				}
				
				listVideo.createVideoContent = function(allVideoJson,videoPlaylistJson){						
				 	var str ="";
				 	
				 	 if(allVideoJson != null){
					for(var a=0;a<allVideoJson.length;a++){
						var btn = "<input type='button' class='btn btn-info btnadd' value='Add'";
						 if(videoPlaylistJson != null){
							if(videoPlaylistJson.length != 0){
					 			for(var j=0;j<videoPlaylistJson.length;j++){
					 			 if(allVideoJson[a].videoId == videoPlaylistJson[j].videoId){
					 		 		btn = "<input type='button' class='btn btn-danger btnremove' value='Remove' ";
					 				 console.log(allVideoJson[a].videoId + " = "+ videoPlaylistJson[j].videoId);
					 			 }			 		
					 	}
					 	}
						}
												
						str +="<div class='the-box no-border store-list'>"
						   +"<div class='media'>"
						   +"<a class='pull-left' href='/KAWEBCLIENT/elearning/playvideo?v="+allVideoJson[a].videoId+"'><img alt='image' class='store-image img-responsive' src='https://i.ytimg.com/vi/"+allVideoJson[a].youtubeUrl+"/mqdefault.jpg' style='width: 179px; height: 94px;'></a>"    
						   +" <div class='clearfix visible-xs'></div>"
						   +"   <div class='media-body' style='overflow: visible'>"
						   +"      <div class='btn-group pull-right'>"+btn+"vid="+allVideoJson[a].videoId+"></div>"
						   +"      <ul class='list-inline'>"
						   +"         <li><a href='../elearning/play.act?v=13' title='"+allVideoJson[a].videoName+"'><span class='videoname'>"+allVideoJson[a].videoName+"</span></a></li>"
						   +"         <br>"
						   +"         <li><a>by "+allVideoJson[a].username+"</a> | <span>"+allVideoJson[a].postDate+"</span></li>"
						   +"         <br>"          
						   +"         <li>       "+allVideoJson[a].countVotePlus+"      <i class='fa fa-thumbs-up'></i>&nbsp;&nbsp;&nbsp;"+allVideoJson[a].countVoteMinus+"       <i class='fa fa-thumbs-down'></i>  &nbsp;&nbsp;&nbsp;"+allVideoJson[a].viewCounts+"       <i class='fa fa-eye'></i>      &nbsp;&nbsp;&nbsp;       </li>"
						   +"     </ul>"
						   +"   </div>"
						   +" </div>"
						   +"</div>" 
					}
				 	 }
					return str;
				} 
		  		
				
		  		
		  		listVideo.getPlaylist=function(){			  			
		  			$.ajax({
					url : "${pageContext.request.contextPath}/rest/elearning/getplaylist/"+playlistId,
					method: "GET",
					success: function(data){			console.log("llll " + playlistId);																		
						$("#thumbnailurlinfo").attr("src","https://i.ytimg.com/vi/"+data.USERPLAYLIST.thumbnailUrl+"/mqdefault.jpg"); 
						$("#playlistnameinfo").text(data.USERPLAYLIST.playlistName);
						$("#usernameinfo").text("by" + data.USERPLAYLIST.username +" | " );
						$("#totalvideo").text(data.USERPLAYLIST.countVideos +"Videos")
						$("#descriptioninfo").text(data.USERPLAYLIST.description);						 					
	        			listVideo.listVideoInPlaylist(playlistId,page);

					}
				});	
		  		};
		  		
		  		listVideo.getPlaylist();
		  		
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
    				    success: function(data) { 
    				    $("#loading").hide();
    				       	console.log(data+ "hello");	
    				       	if(data.RES_DATA != null){
	    						if(data.RES_DATA.length>0){
	    							$("#jlistVideoInplaylist").tmpl(data.RES_DATA).appendTo("#listVideoinPlaylist");    							    							
	    						}
	    				       	
	    						if(page >= data.PAGINATION.totalPages){ 
	    							$("#btLoadMore").hide();
	    						}else{
	    							$("#btLoadMore").show();
	    						}
    				   	 }
    				       	else{
    				   			 $("#listVideoinPlaylist").html(empty_video_inplaylist);
    				       	}
    				    },
    				    error:function(data,status,er) { 
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    				
    				
    			};
    			    			    		    		

    			
    	
    			
    			listVideo.loadData=function(){  
    				var playlistId ="${playlistid}";    				
    				$.get("${pageContext.request.contextPath}/rest/elearning/getplaylist/"+playlistId,function(data){
    					url : "${pageContext.request.contextPath}/rest/elearning/getplaylist/"+playlistId,    					
    							console.log("test " + playlistId);																		    						    						
    						$("#totalvideo").text(data.USERPLAYLIST.countVideos +"Videos")
    					
    				});	
    			};
    			
    			listVideo.loadPagination_All_Video= function(){
    				
    				/* var total=$("#getTotalVideoSearch").text(); */
    				 $.get("${pageContext.request.contextPath}/rest/elearning/listallvideo?page=1&item=4",
	    					function(data){   				
    				$('.pagin_all_video').bootpag({
    			        total: data.PAGINATION.totalPages,    			        
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
    			    	
    			    	listVideo.Listall(num);
    			    }); 
    				 }); 
    				};
    				
    				listVideo.loadPagination_User_Video= function(){
        				num=1;
        				/* var userid="MQ=="; */
        				var total=$("#getTotalVideoSearch").text();
        				$.get("${pageContext.request.contextPath}/rest/elearning/listvideouser/"+userid+"?page=1&item=4",        						
    	    					function(data){
        				
        				$('.pagin_video_user').bootpag({
        			        total: data.PAGINATION.totalPages,    			        
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
        			    	listVideo.listUserVideo(userid,num);
        			    }); 
        				});
        				};

    			$("#btLoadMore").click(function(){  
    				page++;    				
    				empty = false;
    				$("#loading").show();								
    					listVideo.listVideoInPlaylist(playlistId,page);    				
    			});
				
    			    			
    			$("#btn-popup-add").click(function(){  
    				/* listVideo.listAllVideo(1); */
    				listVideo.Listall(1);
    				listVideo.listUserVideo(userid,1);      
    				listVideo.loadPagination_All_Video();
    				listVideo.loadPagination_User_Video();
    				
    			});
    			   
    			
    			$(document).on('click', ".btnadd", function() {
    			    var vid = $(this).attr("vid");    			        			    
    			    var change =$(this);
    			    var playlistId="${playlistid}"; 
    				$.ajax({
    					url : "${pageContext.request.contextPath}/rest/elearning/videotoplaylist/"+playlistId+"/"+vid,
    					method: "POST",
    					success: function(data){
    						 listVideo.listVideoInPlaylist(playlistId,1);
    						 change.val("Remove");
    						 change.attr("class","btn btn-danger btnremove");    						 
    						 listVideo.loadData();
    						 console.log(data + "hlll");    						 
    					}
    				});	     			       			    
    			    
    			});

    			
    			$(document).on('click', ".btnremovevideofromplaylist", function() {
    			    var vid = $(this).attr("vid");    			        			    
    			    var change =$(this);
    			    var playlistId="${playlistid}"; 
    				$.ajax({
    					url : "${pageContext.request.contextPath}/rest/elearning/deletevideofromplaylistdetail/"+playlistId+"/"+vid,
    					method: "DELETE",
    					success: function(data){    						
    					change.closest('.mix').remove();    					
    					listVideo.loadData();
    					console.log(data);    					
    					if( $("#listVideoinPlaylist").is(':empty') ){
    						$("#listVideoinPlaylist").html(empty_video_inplaylist);
    					}

    					}
    				});	 
    			});
    			$(document).on('click', ".btnremove", function() {
    			    var vid = $(this).attr("vid");    			        			    
    			    var change =$(this);
    			    var playlistId="${playlistid}"; 
    				$.ajax({
    					url : "${pageContext.request.contextPath}/rest/elearning/deletevideofromplaylistdetail/"+playlistId+"/"+vid,
    					method: "DELETE",
    					success: function(data){
    						 listVideo.listVideoInPlaylist(playlistId,1);
    						 change.val("Add");
    						 change.attr("class","btn btn-info btnadd");    						 
    						 listVideo.loadData();
    						 console.log(data);
    					}
    				});	 
    			});
    			
    			$(document).on('click', "#close_modal_addvideo", function() {
    				 page = 1;		  		
    		  		 pageVideoUser=1;	
    			});    			    			    			
    			$(document).on('click', "#btndeleteplaylist", function() {    				
    			    
    			    var playlistId="${playlistid}";     			    
    			    if (!confirm("Do you want to delete this playlist?")){
    			        return false;
    			      }
    			    else{
    				$.ajax({
    					url : "${pageContext.request.contextPath}/rest/elearning/deleteplaylistdetail/"+playlistId,
    					method: "DELETE",
    					success: function(data){  
    						alert("Your playlist has beed deleted");
    						window.location = '${pageContext.request.contextPath}/user/profile';
    						 console.log(data);
    					}
    				});	 
    			    }
    			});
    			
				$(document).on('keyup', "#searchVideos", function() {    				
    			    
					$("#test").text($(this).val());
					var name =$(this).val();
					if($(this).val()== ""){listVideo.Listall(1); }
					$.ajax({ 
		  				url : "${pageContext.request.contextPath}/rest/elearning/search_allvideo/"+name+"?page=1&item=30",
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) {     				    	
    				    	allVideoJson = data.RES_DATA;
    				    	$.get("${pageContext.request.contextPath}/rest/elearning/playlistdetail/"+playlistId+"?page=1&item=1000",function(data){
    				    		//alert(data + " hello " +allVideoJson );
    				    		//createVideoContent(allVideoJson,data.RES_DATA);
    				    		$("#getVideoSearch").html(listVideo.createVideoContent(allVideoJson,data.RES_DATA)); 	
    				    	});
    				    	
    				   	 }
		  				}); 
										
    			});
				
			$(document).on('keyup', "#searchYourVideo", function() {    				
    			    					
					var name =$(this).val();	
					var URL="";
					
					if($(this).val() == ""){
						URL : "${pageContext.request.contextPath}/rest/elearning/listvideouser/"+userid+"?page=1&item=4";
						}
					else{
						URL="${pageContext.request.contextPath}/rest/elearning/search_uservideo/"+userid+"/"+ name +"?page=1&item=30";
					}
					$.ajax({ 
		  				url : URL,
    				    type: 'GET',
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) {     				    	
    				    	allVideoJson = data.RES_DATA;
    				    	$.get("${pageContext.request.contextPath}/rest/elearning/playlistdetail/"+playlistId+"?page=1&item=1000",function(data){
    				    		//alert(data + " hello " +allVideoJson );
    				    		//createVideoContent(allVideoJson,data.RES_DATA);
    				    		$("#getYourVideo").html(listVideo.createVideoContent(allVideoJson,data.RES_DATA)); 	
    				    	});
    				    	
    				   	 }
		  				}); 
										
    			});
    			
	
		});
		
		
		 
		
		
		
		 

	</script>
	<!-- <script src="http://192.168.178.186:8080/HRD_MEMO/resources/admin/js/memo.min.js"></script> -->
	
</body>
