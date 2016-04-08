<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	<link href="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
	<!-- sweet alert -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/sweetalert2.css">
</head>

<body class="tooltips">



	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">
	
			<!-- BEGIN TOP NAV -->
			<jsp:include page="shared/_topnav.jsp" />
			<!-- END TOP NAV -->
			
			
			
			<!-- BEGIN SIDEBAR LEFT -->
			<jsp:include page="shared/_leftsidebar.jsp" />
			<!-- END SIDEBAR LEFT -->
			
			
			
			
			
			
			<!-- BEGIN SIDEBAR RIGHT -->
			<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
			<!-- END SIDEBAR RIGHT -->
			







		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

			   <h1 class="page-heading">PlayList</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							
							<a  href='#frmadd' class="btn btn-success" data-toggle='modal'>Add Video</a> 
						</div>
						<div class="btn-group" >
							<form role="form">
								<select id="limitplaylist" onclick="choosePlaylist();" class="form-control">
									<option value="10">10</option>
									<option value="20" selected="selected">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
									<option value="100">100</option>
								</select>
							</form>
						</div>
						<!-- <div class="btn-group pull-right">
							<form role="form">
								<input type="text" onkeyup="mySearchPlaylist()" id="search" class="form-control"
									placeholder="Search University">
							</form>

						</div> -->
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No1</th>
									<th>Playlist Name</th>
									<th>Playlist Description</th>	
									<th>View Count</th>												
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="content">
								
							</tbody>
						</table>
						<br />
						
						<p id="totalrecord" style="color:blue;"></p>
						<div id="pagination" class="pull-right"></div>
					</div>
					<!-- /.table-responsive -->
				</div>



			</div>
			<!-- /.container-fluid -->


			<!-- Modal -->
			<div id="form-create-playlist1" class="ka-popup col-xs-12" style="display: none; width: 40%;  z-index: 100;">
					<div id="form-create-playlist" class="white-popup mfp-with-anim" style="border-radius:5px">
				  <form action="" id="formcreateplaylist" enctype="multipart/form-data"  method="post">
				  
				  <div class="form-group">
					<label for="exampleInputEmail1"><h3>Playlist Form</h3></label>
				  </div>
				
				
				  <div class="form-group">
					<label for="exampleInputEmail1">Playlist name</label>
						<input type="hidden" class="form-control" id="oimg"   name="oimg"  ></span>
						<input type="hidden" class="form-control" name="listid" id="listid" placeholder="">
						<input type="text" class="form-control" onkeyup="validatPlaylistname()" name="listname" id="listname" placeholder="">
						<small id="checklistname" class="msg" style="color:red"></small>
				  </div>
				  <div class="form-group">
						<label for="exampleInputEmail1">Description</label>
						<textarea class="form-control" onkeyup="validatPlaylistnameDes()" name="playlistdescription" id="playlistdescription" data-bv-field="description"></textarea>
						<small id="checkplaylistdescription" class="msg" style="color:red"></small>
				 </div>
				  <div class="form-group">
						<label for="exampleInputEmail1">Category</label>
						<select class="form-control"  id="playlistcategory">
						</select>
						
						<small class="msg" style="color:red;display:none">The category  is required and can't be empty</small>
				 </div>
				 <div class="form-group">
					<label for="exampleInputEmail1">Status</label>
					<div class="radio">
						<label> <input type="radio" name="publicview" checked="checked" id="public1" value="true" required="" > True
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" name="publicview" id="private" value="false" data-bv-field="publicview"> False
						</label>
					</div>
				</div>
				  
				  <c:if test="${usertype == 'Admin' }">
				  <div class="form-group">
						<label for="exampleInputEmail1">Color</label>
						<input type="text" class="form-control jscolor" name="color" id="color" placeholder="choose color">
						<small class="msg" style="color:red;display:none">The playlist nam is required and can't be empty</small>
					</div>
				  	<div class="form-group" >
						<label for="exampleInputEmail1">Image</label>
						<div class="col-sm-12">
						
							<div class="fileinput fileinput-new" data-provides="fileinput">
							  <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
							  <div>
								<span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="file" id="file"></span>
								<a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
							  </div>
							</div>
							
							
						</div>
					</div>
					
					
				  </c:if>
						 
						
						 	<input type="submit" id="btncreate"  value="Save" class="btn btn-primary">
							<input type="button"  value="Close" class="btn btn-success b-close">	
							</form>
						</div>
				</div>
			<!-- /#DefaultModal -->




				<!-- BEGIN FOOTER -->
				<jsp:include page="shared/_adminfooter.jsp" />
				<!-- END FOOTER -->
				


		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->

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




	<!--
		===========================================================
		END PAGE
		===========================================================
		-->

	<!--
		===========================================================
		Placed at the end of the document so the pages load faster
		===========================================================
		-->
	<!-- Footer Script -->
		<jsp:include page="shared/_scriptfooter.jsp"/>
		<!-- ./Footer Script -->

	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.tmpl.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootpag.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>

	  <script src="${pageContext.request.contextPath}/resources/assets/js/jscolor.js"></script>
	   <script src="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
	

   
		<script type="text/javascript">	
		var pid = "<%= request.getAttribute("pid") %>";
		var limit=0;
		var offset=1;
		var totalofrecord =0;
		var numofpage=1;
		var url="${pageContext.request.contextPath}";
		
		//my choice what list or search
		 function choosePlaylist(){
			var key =$("#search").val();
			//alert(key);
			if(key.length == 0){
				mystart();
			}else{
				mySearchPlaylist();
			}
		} 
		
		mystart();
		function mystart(){
			//get limit from selec
			limit=$("#limitplaylist").val();
			//alert(pid);
			 $.ajax({   
		            url: url+'/rest/user/profile/listvideoinplaylist/'+pid+'?page='+offset+'&item='+limit,
		            type: 'get',
		            contentType: 'application/json;charset=utf-8',
		            success: function(data){
		            	//alert(data.PAGINATION.totalCount);
		            	totalofrecord=data.PAGINATION.totalCount;
		            	numofpage=data.PAGINATION.totalPages;
		            	listAllPlaylist(1);
		            	loadPaginationPlaylist();
		            	
		            },
		            error: function(data){
		            	alert("1start () unsuccess data");
		            }
		        });	  
	    	 
		}
		function loadPaginationPlaylist(){
			//alert(numofpage);
			$('#pagination').bootpag({
		        total: numofpage,
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
		    	listAllPlaylist(num);
		    	//alert("pagination ="+num);
		    }); 
		}
		
		function listAllPlaylist(offset){
	    	$.ajax({
	    		url: url+'/rest/user/profile/listvideoinplaylist/'+pid+'?page='+offset+'&item='+limit,
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            //data: JSON.stringify(JSONObject),
	            success: function(data){
	            	//alert(data.RES_DATA.length);
	            	if(data.STATUS == true){
	            		$("#content").html(listPlaylistDetail(data));
	            		//alert(data.RES_DATA[1].bgImage);
	            	}
	            },
	            error: function(data){
	            	//alert("listAll() unseccess data");
	            }
	        });	    	
			   
		}
		
		function listPlaylistDetail(data){
			var str="";
			var status="";
				for(var i=0; i<data.RES_DATA.length ; i++){
					
				
					
					
					str +="<tr>"
							+"<td>"+i+"</td>"
							+"<td>"+data.RES_DATA[i].videoName+"</td>"
							+"<td>"+data.RES_DATA[i].description+"</td>"
							+"<td>"+data.RES_DATA[i].viewCounts+"</td>"
							+"<td>"
								//+"<a><i  class='icon-circle icon-xs glyphicon glyphicon-th-large btnUpdate'></i></a>"
								//+"<a  onclick=viewPlayList('"+data.RES_DATA[i].playlistId+"') id='showFrmUpdatePlaylist' ><i  class='fa fa-pencil icon-circle icon-xs icon-info btnUpdate'></i></a>"              
								+"<a  onclick=deletePlayList('"+pid+"','"+data.RES_DATA[i].videoId+"') ><i class='fa fa-trash-o icon-circle icon-xs icon-danger deleteConfirm'></i></a>"    
							+"<td>"
						+"</tr>" ;
				}
					
				return str;
		}
		
		function deletePlayList(pid,vid){
			//alert(pid);
			swal({   
				title: "Are you sure?",   
				text: "You will not be able to recover this imaginary file!",   
				type: "warning",   
				showCancelButton: true,   
				confirmButtonColor: "#DD6B55",   
				confirmButtonText: "Yes, delete it!",   
				closeOnConfirm: false }, function(){   
					
					 $.ajax({  
						 	url: url+'/rest/user/profile/deletevideofromplaylist/'+pid+'/'+vid,
					       type:'delete',
					       contentType: 'application/json;charset=utf-8', // type of data
					       success: function(data) { 
					    	   	if(data.STATUS == true){
					    	   		mystart();
									swal("Deleted!", "Your imaginary file has been deleted.", "success"); 
					    	   	}
					    	   		//$("#showresult").html(listarticles(data));
// 					                console.log("Success..." + data);
					       }  ,  
					   		error: function(data){
					   		alert("Unsuccess" + data +"OR Empty");
					   		console.log("ERROR..." + data);
					   	}
					   });
					
					
					
					
				});
		}
			
		/* function mySearchPlaylist(){
			var key =$("#search").val();
			var characterReg = /^[\ba-zA-Z0-9-_.]+$/;
			//alert(key);
			if(key.length > 2 && characterReg.test(key)){
				$("#search").css("border", "solid 1px green");
				 $.ajax({  
					 	url: url+'/rest/user/profile/searchPlaylist/'+key+'?page='+offset+'&item='+limit, 
				       type:'get',
				       contentType: 'application/json;charset=utf-8', // type of data
				       success: function(data) { 
				    	   	if(data.STATUS == true){
				    	   		//alert(data);
				    	   		totalofrecord=data.PAGINATION.totalCount;
				    	   		numofpage=data.PAGINATION.totalPages;
				    	   		loadPaginationPlaylist();
					    	   	$("#content").html(listPlaylistDetail(data));
					    	   	
				    	   		//alert(data.PAGINATION.totalCount);
				    	   	}else{
				    	   		swal("Search Not Found");
				    	   		mystart();
				    	   	}
				    	   		//$("#showresult").html(listarticles(data));
				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
				   		alert("Unsuccess" + data +"OR Empty");
				   		console.log("ERROR..." + data);
				   	}
				   }); 
			}else{
				$("#search").css("border", "solid 1px red");
			}
			

		} */
		var playlistId="<%= request.getAttribute("pid") %>"; 
		var page = 1;		 		
  		var pageVideoUser=1;	
  		var listVideo = {};
		
		$(document).ready(function(){
			
			listVideo.Listall = function(page){
	  			
// 	  			console.log("llllllllllllll");
	  			
	  			 $.ajax({ 
	  				url : "${pageContext.request.contextPath}/rest/elearning/listallvideo?page="+page+"&item=4",
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) {     				    	
				    	allVideoJson = data.RES_DATA;
				    	//url+'/rest/user/profile/listvideoinplaylist/'+pid+'?page='+offset+'&item='+limit
				    	$.get("${pageContext.request.contextPath}/rest/user/profile/listvideoinplaylist/"+playlistId+"?page=1&item=1000",function(data){
				    		
				    		$("#getVideoSearch").html(listVideo.createVideoContent(allVideoJson,data.RES_DATA)); 	
				    	});
				    	
				    },
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
// 				 				 console.log(allVideoJson[a].videoId + " = "+ videoPlaylistJson[j].videoId);
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
					   +"         <li><a href='/KAWEBCLIENT/elearning/playvideo?v="+allVideoJson[a].videoId+"' title='"+allVideoJson[a].videoName+"'><span class='videoname'>"+allVideoJson[a].videoName+"</span></a></li>"
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
				
				
				$(document).on('click', ".btnadd", function() {
    			    var vid = $(this).attr("vid");    			        			    
    			    var change =$(this);
    			    //alert('111');
    			    //var playlistId="${playlistid}"; 
    				$.ajax({
    					url : "${pageContext.request.contextPath}/rest/elearning/videotoplaylist/"+playlistId+"/"+vid,
    					method: "POST",
    					success: function(data){
    						
    						 //listVideo.listVideoInPlaylist(playlistId,1);
    						 change.val("Remove");
    						 change.attr("class","btn btn-danger btnremove");  
    						 //alert("was add");
    						// listVideo.loadData();
    						 
    						 mystart();
    						 //alert("was add");
//     						 console.log(data + "hlll");    						 
    					}
    				});	     			       			    
    			    
    			});
				
				listVideo.Listall(1);
				listVideo.loadPagination_All_Video();
				
				$(document).on('click', ".btnremove", function() {
    			    var vid = $(this).attr("vid");    			        			    
    			    var change =$(this);
    			    //var playlistId="${playlistid}"; 
    				$.ajax({
    					url : "${pageContext.request.contextPath}/rest/elearning/deletevideofromplaylistdetail/"+playlistId+"/"+vid,
    					method: "DELETE",
    					success: function(data){
    						 //listVideo.listVideoInPlaylist(playlistId,1);
    						 change.val("Add");
    						 change.attr("class","btn btn-info btnadd");    						 
    						 //listVideo.loadData();
    						 mystart();
//     						 console.log(data);
    					}
    				});	 
    			});
				
				
				$(document).on('keyup', "#searchVideos", function() {    				
					
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
			
			
		});
		
		
		</script>

</body>
</html>
