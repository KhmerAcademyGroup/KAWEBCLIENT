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
							<button type="button" class="btn btn-success" id="form-create-playlist" >
								<i class="fa fa-plus-square"></i> Add new
							</button>
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
						<div class="btn-group pull-right">
							<form role="form">
								<input type="text" onkeyup="mySearchPlaylist()" id="search" class="form-control"
									placeholder="Search University">
							</form>

						</div>
						<!-- /.btn-group .pull-right -->
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>									
									<th>No</th>
									<th>Playlist Name</th>
									<th>Playlist Description</th>	
									<th>Video Count</th>
									<th>Status</th>													
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
			///alert(limit);
			 $.ajax({   
		            url: url+'/rest/user/profile/listallplaylist?page='+offset+'&item='+limit,
		            type: 'get',
		            contentType: 'application/json;charset=utf-8',
		            success: function(data){
		            	
// 		            	console.log(data);
		            	
		            	if(data.STATUS == false){
		            		$("table").after('<div class="alert alert-success alert-bold-border square fade in alert-dismissable">'+
									  '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
									  '<strong>You do not create course yet!</strong>'+
								  '</div>');
							return;
						}
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
	    		url: url+'/rest/user/profile/listallplaylist?page='+offset+'&item='+limit,
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
					
					if(data.RES_DATA[i].status == true){
						status ="<i  onclick=togglePlayList('"+data.RES_DATA[i].playlistId+"') class='fa fa-check icon-circle icon-xs icon-success statusConfirm'></i>";
					}else{
						status ="<i  onclick=togglePlayList('"+data.RES_DATA[i].playlistId+"') class='fa fa-remove icon-circle icon-xs icon-danger statusConfirm' ></i>";
					}
					
					
					str +="<tr>"
							+"<td>"+i+"</td>"
							+"<td>"+data.RES_DATA[i].playlistName+"</td>"
							+"<td>"+data.RES_DATA[i].description+"</td>"
							+"<td>"+data.RES_DATA[i].countVideos+"</td>"
							+"<td>"+status+"</td>"
							+"<td>"
								+"<a title='add video' href='"+url+"/admin/elearning/playlistdetail/"+data.RES_DATA[i].playlistId+"'><i  class='fa fa-bars icon-circle icon-xs icon-primary btnUpdate'></i></a> &nbsp;"
								+"<a title='edit playlist' onclick=viewPlayList('"+data.RES_DATA[i].playlistId+"') id='showFrmUpdatePlaylist' ><i  class='fa fa-pencil icon-circle icon-xs icon-info btnUpdate'></i></a> &nbsp;"              
								+"<a title='delete playlist' onclick=deletePlayList('"+data.RES_DATA[i].playlistId+"') ><i class='fa fa-trash-o icon-circle icon-xs icon-danger deleteConfirm'></i></a> &nbsp;"    
							+"<td>"
						+"</tr>" ;
				}
					
				return str;
		}
			
		function mySearchPlaylist(){
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
// 				                console.log("Success..." + data);
				       }  ,  
				   		error: function(data){
// 				   		alert("Unsuccess" + data +"OR Empty");
// 				   		console.log("ERROR..." + data);
				   	}
				   }); 
			}else{
				$("#search").css("border", "solid 1px red");
			}
			

		}
		
		
		
		
//////////////////////////chhoin
		
	
			
		 $("#form-create-playlist").click(function(){ 
			 //alert();
            $("#form-create-playlist1").bPopup({modalClose: false});
				
           });
		// Show Form Update Category Popup
		$(document).on('click',"#showFrmUpdatePlaylist", function(){
			//alert($(this).data("pid"));
			//viewPlayList("pid");
			$("#form-create-playlist1").bPopup({modalClose: false});
			
		});
		var url="${pageContext.request.contextPath}";
		var userid="MQ==";
		var usertype="Admin";
		var key ="<%= request.getAttribute("key") %>";
		//api for image
		var api = "<%= request.getAttribute("api") %>";
		//api_url for web serive
		var api_url = "<%= request.getAttribute("api_url") %>";
		
		//whend click submit to create new playlist
		$('#formcreateplaylist').submit(function(e){
			e.preventDefault();
		
		
		var publicview =true;
		var playname=$("#listname").val();
		var playdescription=$("#playlistdescription").val();
		var category=$("#playlistcategory").val();
		var color=$("#color").val();
		var img=$("#file").val();
		var oimg=$("#oimg").val();
		var thumnial="mcgBfVSTKqo"; 
		var status=$('input[name=publicview]:checked', '#formcreateplaylist').val();
		//alert(status);
		var playid = $("#listid").val();
		//alert('action');
		
		//alert("user0");
			
		//alert(publicview);
		
		 //create playlist no image ->well
		 if(img =="" && oimg ==""){
			//alert("insert no image");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
				
			var img="/resources/upload/file/playlist/ee40b289-cb7f-4e90-ab0d-fad28b18a794.jpg";
			createPlayList(playname,playdescription,userid,thumnial,publicview,category,img,color, status);
			}
		}  
		
		//idrect update
		else if(img =="" && oimg.length !== 0 ){
			//alert("direct update");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
			updateProcess(playname,playdescription,userid,thumnial,publicview,category,oimg,color,status);
			//updateProcess(n,d,u,th,p,m,bg,c,s);
			}
		}
		//insert image and update
		else if(img.length !== 0 && oimg.length !== 0 ){
			//alert("update with new image");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
			$.ajax({
				type : "POST",
				url : api_url+'/uploadfile/upload?url=playlist',
				enctype : 'multipart/form-data',
				data : new FormData(document.getElementById("formcreateplaylist")),
				processData : false, // tell jQuery not to process the data
				contentType : false, // tell jQuery not to set contentType
				 headers : {
						"Authorization" : "Basic "+key
					},
				success : function(data) {
					if(data.STATUS == true){
						//alert("image was upload");
						//alert(data.IMG);
						updateProcess(playname,playdescription,userid,thumnial,publicview,category,data.IMG,color,status);
					}
			
				},
				error : function(data) {
					alert("1upload unsuccess data");
				}
			});
			}
		} 
		//insert with image
		 else {
			//alert("insert with image");
			if(validatPlaylistname() && validatPlaylistnameDes() ){
			$.ajax({
				type : "POST",
				url : api_url+'/uploadfile/upload?url=playlist',
				enctype : 'multipart/form-data',
				data : new FormData(document.getElementById("formcreateplaylist")),
				processData : false, // tell jQuery not to process the data
				contentType : false, // tell jQuery not to set contentType
				 headers : {
						"Authorization" : "Basic "+key
					},
				success : function(data) {
					if(data.STATUS == true){
						//alert("image was upload");
						//alert(data.IMG);
						createPlayList(playname,playdescription,userid,thumnial,publicview,category,data.IMG,color,status);
					}
			
				},
				error : function(data) {
					alert("1upload unsuccess data");
				}
			});
			}
		} 

		
		});
		
		
		
		
		//create playlist
			function createPlayList(n,d,u,th,p,m,bg,c,s){
				//alert(n +"  "+ d+"  "+u+"  "+th+"  "+p+"  "+m+"  "+bg+"  "+c+"  "+s);
				var JSONObject = $.parseJSON('{"playlistName":"'+n+'","description":"'+d+'", "userId":"'+u+'" , "thumbnailUrl":"'+th+'","publicView":"'+p+'" ,"maincategory":"'+m+'" ,"bgImage":"'+bg+'" ,"color":"'+c+'" ,"status":"'+s+'"}');
			   	//alert("creat playlist");
					$.ajax({
			           url: url+'/rest/user/profile/createplaylist',
			           type: 'post',
			          //contentType:false,
			           contentType: 'application/json;charset=utf-8',
			           data: JSON.stringify(JSONObject),
			           success: function(data){
			           	if(data.STATUS == true){
			           		//alert("created");
			           		mystart();
			           		swal("Playlist Was created", "You clicked the button!", "success");
				            myClear();
				            $("#form-create-playlist1").bPopup().close();
				            	
							}
			           
			           },
			           error: function(data){
			           	alert("creation unsuccess data");
			           }
			       });	    	
				}
		
		
		
		function viewPlayList(pid){
			//alert("view playlist");
			$.ajax({
				url: url+'/rest/user/profile/viewplaylist/'+pid,
		        type: 'get',
		        contentType: 'application/json;charset=utf-8',
		        //data: JSON.stringify(JSONObject),
		        success: function(data){
		        	//alert(data.RES_DATA.length);
		        	if(data.STATUS == true){
		        		listCategoryUpdate(data.USERPLAYLIST.maincategory)
		        		//alert(data.USERPLAYLIST.playlistName);
		        		$("#listid").val(data.USERPLAYLIST.playlistId);
		        		$("#listname").val(data.USERPLAYLIST.playlistName);
		        		$("#playlistdescription").val(data.USERPLAYLIST.description);
		        		$("#color").val(data.USERPLAYLIST.color);
		        		$("#oimg").val(data.USERPLAYLIST.bgImage);
		        		//alert(data.USERPLAYLIST.status);
		        		if(data.USERPLAYLIST.status == '0'){
		        			 $("#private").prop( "checked", true );	            			
		        			 
	            		}else{
	            			//alert(data.USERPLAYLIST.status);
	            			$("#public1").prop( "checked", true );

	            			
	            		}
		        		
		        	}
		        	
		        },
		        error: function(data){
		        	alert("view playlist unseccess data");
		        }
		    });	
		}
		
function listCategoryUpdate(cid){
		//alert("list category update");	
	    	 $.ajax({
	    		url: url+'/rest/user/profile/listcategory',
	            type: 'get',
	            contentType: 'application/json;charset=utf-8',
	            //data: JSON.stringify(JSONObject),
	            success: function(data){
	            	//alert(data.RES_DATA.length);
	            	if(data.STATUS == true){
	            		var str="";
	            		for(var i=0; i<data.RES_DATA.length ; i++){
	            			
							 if( data.RES_DATA[i].mainCategoryId == cid  & cid !=null){
								str += " <option value='"+data.RES_DATA[i].mainCategoryId+"' selected>"+data.RES_DATA[i].mainCategoryName+"</option>";
	            			} 
							 str += " <option value='"+data.RES_DATA[i].mainCategoryId+"' >"+data.RES_DATA[i].mainCategoryName+"</option>";
	    				
	            		}
	            		
	            		$("#playlistcategory").html(str);
	            		
	            	}
	            	
	            },
	            error: function(data){
	            	//alert("listAll() unseccess data");
	            }
	        });     	
	     
		}
//update process
function updateProcess(n,d,u,th,p,m,bg,c,s){
	//alert("upadte process");
	 var pid = $("#listid").val();
	 var JSONObject = $.parseJSON('{"playlistId":"'+pid+'","playlistName":"'+n+'","description":"'+d+'", "userId":"'+u+'" , "thumbnailUrl":"'+th+'","publicView":"'+p+'" ,"maincategory":"'+m+'" ,"bgImage":"'+bg+'" ,"color":"'+c+'" ,"status":"'+s+'"}');
   	
		$.ajax({
           url: url+"/rest/user/profile/updateplaylist",
           type: 'put',
           contentType: 'application/json;charset=utf-8',
           data: JSON.stringify(JSONObject),
           success: function(data){
        	   if(data.STATUS == true){
        		   mystart();
        		   swal("Playlist Was Changed", "You clicked the button!", "success");
        		   myClear();
        		   $("#form-create-playlist1").bPopup().close();
        		 
        	   }
           	
           },
           error: function(data){
           	alert("update unsuccess data");
           }
       });	     	
	} 
//list maincategory
listMainCategory();
function listMainCategory(){
$.ajax({
	url: url+'/rest/user/profile/listcategory',
    type: 'get',
    contentType: 'application/json;charset=utf-8',
    //data: JSON.stringify(JSONObject),
    success: function(data){
    	//alert(data.RES_DATA.length);
    	if(data.STATUS == true){
    		//alert(data);
    		$("#playlistcategory").html(listMainCategoryDetail(data));
    		
    	}
    },
    error: function(data){
    	//alert("listAll() unseccess data");
    }
});	    	
   
}

function listMainCategoryDetail(data){
	var str="";
		for(var i=0; i<data.RES_DATA.length ; i++){
			str += " <option value='"+data.RES_DATA[i].mainCategoryId+"'>"+data.RES_DATA[i].mainCategoryName+"</option>";
		}
		//alert(str);
		return str;
}
		function myClear() {
			$("#listid").val("");
			$("#listname").val("");
			$("#playlistdescription").val("");
			$("#playlistcategory").val("");
			$("#color").val("FFFFFF");
			$("#file").click();
			$("#oimg").val("");
		}
		
		///////validation create and update playlist///////////
		function validatPlaylistname(){
			var name= $("#listname").val();
			//var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{3,100}$/;
			    if(name == "" || name.length == 0 || name == null) {
			    	$("#listname").css("border", "solid 1px red");
			    	$("#checklistname").text("Require and at least 3 charactors less than 100 charactors");
			    	   return false;
			    
			    }else{
			    	$("#listname").css("border", "solid 1px green");
			    	$("#checklistname").text("");
			    		return true;
			    }
		}
		
		function validatPlaylistnameDes(){
			var name= $("#playlistdescription").val();
			var characterReg = /^[\sa-zA-Z0-9!@#$%^&*()-_=+\[\]{}|\\:?/.,]{3,100}$/;
			    if(!characterReg.test(name)) {
			    	$("#playlistdescription").css("border", "solid 1px red");
			    	$("#checkplaylistdescription").text("Require and at least 3 charactors less than 100 charactors");
			    	   return false;
			    
			    }else{
			    	$("#playlistdescription").css("border", "solid 1px green");
			    	$("#checkplaylistdescription").text("");
			    		return true;
			    }
		}
		
		function deletePlayList(pid){
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
						 	url: url+'/rest/user/profile/deleteplaylist/'+pid,
					       type:'delete',
					       contentType: 'application/json;charset=utf-8', // type of data
					       success: function(data) { 
					    	   	if(data.STATUS == true){
					    	   		mystart();
									swal("Deleted!", "Your imaginary file has been deleted.", "success"); 
					    	   	}
					    	   		//$("#showresult").html(listarticles(data));
					                console.log("Success..." + data);
					       }  ,  
					   		error: function(data){
					   		alert("Unsuccess" + data +"OR Empty");
					   		console.log("ERROR..." + data);
					   	}
					   });
					
					
					
					
				});
		}
		
		function togglePlayList(pid){
			//alert(pid);
			swal({   
				title: "Are you sure?",   
				text: "You will not be toggle playlist",   
				type: "warning",   
				showCancelButton: true,   
				confirmButtonColor: "#DD6B55",   
				confirmButtonText: "Yes, Toggle it!",   
				closeOnConfirm: false }, function(){   
					
					 $.ajax({  
						 	url: url+'/rest/user/profile/togglePlaylist/'+pid,
					       type:'put',
					       contentType: 'application/json;charset=utf-8', // type of data
					       success: function(data) { 
					    	   	if(data.STATUS == true){
					    	   		mystart();
									swal("Toggle!", "Your have been toggle Profile", "success"); 
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
		</script>

</body>
</html>
