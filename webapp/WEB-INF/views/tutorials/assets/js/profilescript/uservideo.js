$(document).ready(function(){
				
				$.post("listuservideos.act",{
					search : ""
					},function(data){
						$("#getUserVideos").html(listUserVideo(data));
				});
	
				$("#searchVideo").keyup(function(){
					$.post("listuservideos.act",
					{ 
						tfsearch : $("#searchVideo").val()
					}, 
						function(data){
						$("#getUserVideos").html(listUserVideo(data));	
					});
				});
				
				
				
});



function listUserVideo(data){
	
	var json = data.listuservideos;
	var pagin = data.paginationvideos; 
	var result = "";
	
	var videos = "<div class='row'>"; 
	var pagination = "<div class='row'><div class='col-sm-6'><div class='dataTables_info' id='datatable-example_info'>Page "+ pagin.currentPage +" of "+ data.totalpages +" entries</div></div><div class='col-sm-6'><div class='dataTables_paginate paging_bootstrap'>";
	pagination += "<ul class='pagination separated'>";
	
	if(json.length != 0){
		for(var i=0;i<json.length;i++){   
			var  view = "<span class='label label-danger'><i class='fa fa-lock'></i> Private</span>";
			if(json[i].publicview == true ){
				view = "<span class='label label-success'><i class='fa fa-globe'></i> Public</span>";
			}
			
			var  videoname =json[i].videoname;
			if( json[i].videoname.length >80) videoname = json[i].videoname.substring(0, 80) +"..." ;
			
			
			videos += "<div class='the-box no-border store-list'>" +
					"<div class='media'>" +
					"<a class='pull-left' href='../elearning/play.act?v="+json[i].videoid+"'>" +
					"<img alt='image' class='store-image img-responsive' src='https://i.ytimg.com/vi/"+json[i].youtubeurl+"/mqdefault.jpg'>" +
					"</a>" +
					"<div class='clearfix visible-xs'></div>" +
					"<div class='media-body' style='overflow:visible'>" +
					"<a href='#fakelink'></a>" +
					"<div class='btn-group pull-right'>" +
					"<button type='button' class='btn btn-default btn-sm dropdown-toggle' data-toggle='dropdown'>" +
					"<i class='fa fa-cog'></i>" +
					"</button>" +
					"<ul class='dropdown-menu' role='menu'>" +
					"<li><a href='video.act?v="+json[i].videoid+"'>Edit</a></li>" +
					"<li><a  href='#delete' onclick=deleteuservideo('deleteuservideofront.act?v="+json[i].videoid+"')>Delete</a></li>" +
					"</ul>" +
					"</div>" +
					"<ul class='list-inline'>" +
					"<li><a href='../elearning/play.act?v="+json[i].videoid+"'><strong class='text-black'>"+ videoname + "</strong></a>  "+view+" </li><br>" +
					"<!-- <li><a href='../admin/user.jsp?v="+json[i].userid+"'> by tola</a></li> -->" +
					"</ul>" +
					"<p class='hidden-xs'>"+json[i].description+"</p>" +
					"<span class='small text-muted' style='color:#AAB2BD'>" +
					json[i].countvoteplus +" <i class='fa fa-thumbs-up'></i>     &nbsp;&nbsp;&nbsp;" +
					json[i].countvoteminus+" <i class='fa fa-thumbs-down'></i>  &nbsp;&nbsp;&nbsp;" +
					json[i].viewcounts + " <i class='fa fa-eye'></i>      &nbsp;&nbsp;&nbsp;" +
					"</span>" +
					"</div>" +
					"</div>" +
					"</div>";
		}
		
		videos += "</div>";
		
		
		if(data.hasPrevious == true)
			pagination += "<li><a href='#v="+data.previouspage +"' onclick=gotopageListVideos('listuservideos.act?page="+data.previouspage +"') >Previous</a></li>";
		if(pagin.currentPage != 1)
			pagination += "<li><a href='#v' onclick=gotopageListVideos('listuservideos.act?page="+1 +"')>1</a></li>";   
		var pagenum =  0;
		for(var i=pagin.currentPage; i<=data.totalpages; i++){
			if(i==pagin.currentPage){
				pagination += "<li class='active'><a href='#v'  onclick=gotopageListVideos('listuservideos.act?page="+i +"')>"+i+"</a></li>";
			}else{
				pagination += "<li><a href='#v' onclick=gotopageListVideos('listuservideos.act?page="+ i +"')>"+i+"</a></li>";
			}
			if(pagin.currentPage==1){
				if(i>=pagin.currentPage+4 ){
					break;
				}
			}else{
				if(i>=pagin.currentPage+4 ){
					break;
				}	
			}
		}
		if(data.hasNext == true)
			pagination += "<li><a href='#v' onclick=gotopageListVideos('listuservideos.act?page="+data.nextpage +"')>Next</a></li>";
		if(data.totalpages!=pagin.currentPage){
			pagination += "<li><a href='#v' onclick=gotopageListVideos('listuservideos.act?page="+data.totalpages +"')>Last</a></li>";
		}		
				
		pagination += "</div></div></div>";
	
		result = videos += pagination;
		
	}else{
		result = "<div class='alert alert-success fade in alert-dismissable'>"+
			 			"<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button>"+
			 			"<strong>No</strong> videos!"+ 
			 	  "</div>";
	}
	
	
	return 	 result;

}


function gotopageListVideos(url){
	$.get(url+"&tfsearch="+$("#searchVideo").val()
		,function(data){
		$("#getUserVideos").html(listUserVideo(data));			
	});
}


function deleteuservideo(url){
	if (confirm("Are you sure you want to delete this video?") == true) {
				$.get(url+"&tfsearch="+$("#searchVideo").val()
				,function(data){
					$("#getUserVideos").html(listUserVideo(data));		
				});
	}
	
}



