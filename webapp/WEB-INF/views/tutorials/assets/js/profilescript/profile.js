$(document).ready(function(){
				 
				$.post("playlist.act",{
					search : ""
					},function(data){
						$("#getPlayList").html(getJsonData(data));
				});
				
				$("#search").keyup(function(){
					$.post("playlist.act" , 
					{ 
						tfsearch : $("#search").val(),
						setNumrow : $("#setNumrowPlaylist").val()
					}, 
						function(data){
						$("#getPlayList").html(getJsonData(data));
					});
				});
				
				
				
				
				$("#searchVideo").keyup(function(){
					$.post("listuservideos.act",
					{ 
						tfsearch : $("#searchVideo").val()
					}, 
						function(data){
						$("#getUserVideos").html(getListUserVideos(data));	
					});
				});
				
				
				$("#frmSetRowPlaylist").change(function(){
					$.post("playlist.act" , 
							{ 
								setNumrow : $("#setNumrowPlaylist").val(),
								tfsearch : $("#search").val()
								
							}, 
								function(data){
								$("#getPlayList").html(getJsonData(data));
					});
				});
				
				$("#playlistname").keyup(function(){
					if($("#playlistname").val().trim() == ""){
						$(".msg").css("display","block");
					}else{
						$(".msg").css("display","none");
					}
				});
		
				$("#btncreate").click(function(){
					if($("#playlistname").val().trim() == ""){
						$(".msg").css("display","block");
					}else{
						$.post('createplaylist.act',{
							playlistname : $("#playlistname").val() ,
							description : $("#description").val() ,
							publicview : $("#publicview").val()
						},function(data){
							$.post("playlist.act",{
								search : ""
								},function(data){
									$("#getPlayList").html(getJsonData(data));
							});
							 $.magnificPopup.close();
						});
					}
					
					
				});
				
				$("#btnupdateplaylist").click(function(){
					if($("#updatename").val().trim() == ""){
						$(".msg").css("display","block");
					}else{
						$.post('updateplaylist.act',{
							playlistid : $("#updateid").val(),
							playlistname : $("#updatename").val() ,
							description : $("#updatedescription").val() ,
							publicview : $("#updatepublicview").val()
						},function(data){
							$.post("playlist.act",{
								search : ""
								},function(data){
									$("#getPlayList").html(getJsonData(data));
							});
							 $.magnificPopup.close();
						});
					}
					
				});
				
				
				
				$('#deleteall').on("click", function(event){
					var tb = $(this).attr('title');
					var sel = false;	
					var ch = $('#'+tb).find('.thumbnail  input[type=checkbox]');	
					var c = confirm('Continue delete?');
					if(c) {
					  ch.each(function(){
						 var $this = $(this);
							if($this.is(':checked')) {
								sel = true;
								$.get("deleteplaylist.act?playlistid="+$(this).val()+"&tfsearch="+$("#search").val()+"&setNumrow="+$("#setNumrowPlaylist").val());
							}
					  });
					 
								
					  if(!sel) alert('No playlist selected')
					  else{
						  $.post("playlist.act" , 
									{ 
										tfsearch : $("#search").val(),
										setNumrow : $("#setNumrowPlaylist").val()
									}, 
										function(data){
										$("#getPlayList").html(getJsonData(data));
									});	
//						  location.reload();
					  }	
					}
					return false;
				});
				
			

				// Inline popups
				$('#btclosefrmupdate').click(function(){
					 $.magnificPopup.close();
				});
				$('#btclosefrmaddvideo').click(function(){
					 $.magnificPopup.close();
				});
			    
				$("#select-all").on("click", function() {
					  var all = $(this);
					  $('input:checkbox').each(function() {
					       $(this).prop("checked", all.prop("checked"));
					       $(".all").css("display","block");
					  });
					});
				
});



function getJsonData(data){
		var json = data.playlist;
		var pagin = data.pagination; 
		var result = "";
		var playlist = "<div class='row'>"; 
		var pagination = "<div class='row'><div class='col-sm-6'><div class='dataTables_info' id='datatable-example_info'>Page "+ pagin.currentPage +" of "+ data.totalpages +" entries</div></div><div class='col-sm-6'><div class='dataTables_paginate paging_bootstrap'>";
		pagination += "<ul class='pagination separated'>";
		
		var path = window.location.pathname;
		var page = path.split("/").pop();
		var imgdefault = "";
		var gotodetail = "";
		if(page == "mypublicprofile.act"){
			imgdefault = "../admin/assets/img/no-video.jpg";
			gotodetail = "../admin/playlistdetail";
		}
		else{
			imgdefault = "assets/img/no-video.jpg";
			gotodetail = "playlistdetail";
		}
		console.log( page + " | "+ imgdefault );
	
		if(json.length != 0){
			
			for(var i=0;i<json.length;i++){    
				var img = "assets/img/"+json[i].thumbnailurl+"";
				if(json[i].countvideos > 0){
					img = "https://i.ytimg.com/vi/"+json[i].thumbnailurl+"/mqdefault.jpg";
				}
				
				playlist += "<div class='col-xs-12 col-sm-5 col-md-4 col-lg-3 "+i+"' onmouseover=showMyDiv("+i+") onmouseout=hideMyDiv("+i+")>"+
						  "<!-- Begin assets item -->" +
						  "<div class='thumbnail media-lib-item'>" +
						  "<div  class='setting-list all  mydiv"+i+"' style='display:none;position: absolute;width:83%;padding-left: 3px;z-index: 9999;'>"+
						  "<input type='checkbox' value='"+json[i].playlistid +"' class='mycheck' id='chBox"+i+"'>"+
						 
						  "<a  href='#delete' onclick=deletePlayList('deleteplaylist.act?playlistid="+json[i].playlistid +"&page="+pagin.currentPage  +"') class='btn btn-default btn-xs'style='float: right;margin-right: 0px;margin-top: -2px;'>"+
						  "		<i class='fa fa-trash-o'></i>"+
						  "</a>"+
						  "<span class='inline-popups'>" +
						  		"<a  id='test' onclick=popuptmupdate("+json[i].playlistid +") class='btn btn-default btn-xs dropdown-toggle' data-effect='mfp-zoom-in' style='float: right;margin-right: 0px;margin-top: -2px;'>"+
						  			"<i class='fa fa-edit'></i>"+
						  		"</a>" +
						  "</span>"+
							"</div>"+

							"<a href='playlistdetail.act?playlistid="+json[i].playlistid +"'>"+
							"<img src='"+img+"' alt='...'>"+
							"</a>"+
							"<div class='caption text-center'>"+
							"	<p class='small title'><a href='playlistdetail.act?playlistid="+json[i].playlistid +"' style='font-size:16px;font-weight:bold'>"+ json[i].playlistname +"</a><br>"+
							"		<a href='playlistdetail.act?playlistid="+json[i].playlistid +"'><span class='small text-muted'>"+json[i].countvideos+" Videos</span></a>" +
							"	</p>"+
							"<div class='playall' >50 Videos</div>"+
							"</div><!-- /.caption text-center -->"+
							
							"</div><!-- /.thumbnail media-lib-item -->"+
							"<!-- End assets item -->"+
							"</div>";
			}
			
			playlist += "</div>";
			

			
			if(data.hasPrevious == true)
				pagination += "<li><a href='#pre="+data.previouspage +"' onclick=gotopage('playlist.act?page="+data.previouspage +"') >Previous</a></li>";
			if(pagin.currentPage != 1)
				pagination += "<li><a href='#page=1' onclick=gotopage('playlist.act?page="+1 +"')>1</a></li>";   
			var pagenum =  0;
			for(var i=pagin.currentPage; i<=data.totalpages; i++){
				if(i==pagin.currentPage){
					pagination += "<li class='active'><a href='#page="+i+"'  onclick=gotopage('playlist.act?page="+i +"')>"+i+"</a></li>";
				}else{
					pagination += "<li><a href='#page="+i+"' onclick=gotopage('playlist.act?page="+ i +"')>"+i+"</a></li>";
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
				pagination += "<li><a href='#next' onclick=gotopage('playlist.act?page="+data.nextpage +"')>Next</a></li>";
			if(data.totalpages!=pagin.currentPage){
				pagination += "<li><a href='#page="+data.totalpages+"' onclick=gotopage('playlist.act?page="+data.totalpages +"')>Last</a></li>";
			}		
					
			pagination += "</div></div></div>";
		
			result = playlist += pagination;
			
			
			var divNext_Previous = "<div class='btn-group' id='nextprevious'>";
			var btNext = "";
			var btPrevoiue = "";
			if(data.hasPrevious == true)
				btPrevoiue = "<a href='#next' onclick=gotopage('playlist.act?page="+data.previouspage +"') class='btn btn-default'><i class='fa fa-chevron-left'></i></a>";
			else				   		
				btPrevoiue = "<button type='button' disabled   class='btn btn-default'><i class='fa fa-chevron-left'></i></button>";
			
			if(data.hasNext == true)
				btNext = "<a href='#previous' onclick=gotopage('playlist.act?page="+data.nextpage +"') class='btn btn-default'><i class='fa fa-chevron-right'></i></a>";
			else
				btNext = "<button type='button' disabled class='btn btn-default'><i class='fa fa-chevron-right'></i></button>";
			
			divNext_Previous+= btPrevoiue;
			divNext_Previous+= btNext;
			divNext_Previous+="</div>";
				
			$("#nextprevious").replaceWith(divNext_Previous);
			
		}else{
			result = "<div class='alert alert-success fade in alert-dismissable'>"+
				 			"<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button>"+
				 			"<strong>No</strong> playlist!"+ 
				 	  "</div>";
		}
		
		
		return 	 result;
		
	
	
}
function gotopage(url){
	$.get(url+"&tfsearch="+$("#search").val()+"&setNumrow="+$("#setNumrowPlaylist").val()
		,function(data){
		$("#getPlayList").html(getJsonData(data));					
	});
}

function showMyDiv($i){
    $(".mydiv"+$i).css("display","block");
}
function hideMyDiv($i){
		  $(".mydiv"+$i).css("display","none");
		  isChecked($i);
}
function isChecked($i){
	if($("#chBox"+$i).prop('checked')){
		 $(".mydiv"+$i).css("display","block");
	}
}

function deletePlayList(url){
	if (confirm("Are you sure you want to delete this playlist?") == true) {
				$.get(url+"&tfsearch="+$("#search").val()+"&setNumrow="+$("#setNumrowPlaylist").val()
				,function(data){
						$("#getPlayList").html(getJsonData(data));
				});
	}
	
}



function popuptmupdate(id){
		$.post("getplaylistforupdate.act" , 
			{ 
				playlistid : id
			}, 
				function(data){
				$("#updatename").val(data.playlistname);
				$("#updatedescription").val(data.description);
				$("#updateid").val(data.playlistid);
				if(data.publicview) $('select[name="updatepublicview"]').find('option[value="true"]').attr("selected",true);
				else $('select[name="updatepublicview"]').find('option[value="false"]').attr("selected",true);
			});	
	
		$.magnificPopup.open({
	        type: 'inline',
	        items: {src: '#form-update-playlist'},
	        preloader: false,
	        modal: true,
	        delegate: 'a',
			  removalDelay: 500, //delay removal by X to allow out-animation
			  midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
			});
	}

var playlistid = getUrlVars()["playlistid"];
function getFirstVideo(data){
	var getplaylist = data.getplaylist;
	var divfirstvideo = "";
	if(getplaylist.length != 0){
		divfirstvideo = "<div class='the-box no-border store-list'>" +
						"<div class='media'>" +  
						"<a class='pull-left' href='../elearning/play.act?v="+ getplaylist[0].videoid  +"&p="+playlistid+"'>" +
						"<img alt='image' class='store-image img-responsive' src='https://i.ytimg.com/vi/"+ getplaylist[0].youtubeurl  +"/mqdefault.jpg'></a>" +
						" <div class='clearfix visible-xs'></div>" +
						"<div class='media-body' style='overflow:visible'>" +
						"<a href='#fakelink'></a>" +
						"<div class='btn-group pull-right'>" +
						"<button type='button' class='btn btn-default btn-sm dropdown-toggle' data-toggle='dropdown'>" +
						"<i class='fa fa-cog'></i> Action <span class='caret'></span>" +
						"</button>" +
						"<ul class='dropdown-menu' role='menu'>" +
						"<li><a href='../elearning/play.act?v=2'>Play</a></li>" +
						"<li><a href='../admin/video.act?v=2'>Edit</a></li>" +
						"<li><a href='../admin/deletevideo.act?v=2'>Delete</a></li>" +
						"</ul>" +
						"</div>" +
						"<ul class='list-inline'>" +
						"<li><a href='../elearning/play.act?v="+ getplaylist[0].videoid  +"&p=119'>"+getplaylist[0].videoname+" </a></li>" +
						"</ul>" +
						"<p class='hidden-xs'><a href='../elearning/play.act?v="+ getplaylist[0].videoid  +"&p=119'>By "+ getplaylist[0].username +"</a></p>"+
						"<p class='hidden-xs'>"+ getplaylist[0].postdate +"</p>"+
						"<span class='small text-muted' style='color:#37BC9B'>" +
						 getplaylist[0].countvoteplus +" <i class='fa fa-thumbs-up'></i>     &nbsp;&nbsp;&nbsp;" +
						 getplaylist[0].countvoteminus +" <i class='fa fa-thumbs-down'></i>  &nbsp;&nbsp;&nbsp;" +
						 getplaylist[0].viewcounts+" <i class='fa fa-eye'></i>      &nbsp;&nbsp;&nbsp; " +
						"</span>" +
						"</div><!-- /.media-body -->" +
						"</div><!-- /.media -->" +
						"</div>";
		
		
	
	
	
	}else{
		
		divfirstvideo += "<div class='alert alert-success fade in alert-dismissable'>"+
			 			"<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button>"+
			 			"<strong>No</strong> video !"+ 
			 	  "</div>";
	}
	
	return divfirstvideo;
	
}


function listvideofromplaylist(data){
	
	var getplaylist = data.getplaylist;
	var divlistvideo = "";
	if(getplaylist.length != 0){
		for(var i=1;i<getplaylist.length ;i++){
			divlistvideo = "<div class='the-box no-border'>" +
					"<div class='media user-card-sm'>" +
					"<a class='pull-left' href='../elearning/play.act?v="+ getplaylist[i].videoid  +"&p="+playlistid+"'>" +
					"<img class='media-object img-rounded' src='https://i.ytimg.com/vi/"+ getplaylist[i].youtubeurl  +"/mqdefault.jpg' alt='Avatar'>" +
					"</a>" +
					"<div class='media-body'>" +
					"<h4 class='media-heading'><a href='../elearning/play.act?v="+ getplaylist[i].videoid  +"&p=119'>"+getplaylist[i].videoname+"</a></h4>" +
					"<p class='text-info'><a href='../elearning/play.act?v="+ getplaylist[i].videoid  +"&p=119'>by "+ getplaylist[i].username+"</a> | "+ getplaylist[i].postdate +"</p>" +
					"</div>" +
					"<div class='right-button'>" +
					"<button data-toggle='tooltip' title='Accept' class='btn btn-info'><i class='fa fa-check'></i></button>" +
					" </div><!-- /.right-button -->" +
					"</div>" +
					"</div>";
		}
		
		return divlistvideo;
	
	}
	
	

}


//Read a page's GET URL variables and return them as an associative array.
function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}





function getListUserVideos(data){
	
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
					"<li><a href='../elearning/play.act?v="+json[i].videoid+"'>"+ json[i].videoname + "</a>  "+view+" </li><br>" +
					"<!-- <li><a href='../admin/user.jsp?v="+json[i].userid+"'> by tola</a></li> -->" +
					"</ul>" +
					"<p class='hidden-xs'>"+json[i].description+"</p>" +
					"<span class='small text-muted' style='color:#37BC9B'>" +
					"0 <i class='fa fa-thumbs-up'></i>     &nbsp;&nbsp;&nbsp;" +
					json[i].countvoteminus+" <i class='fa fa-thumbs-down'></i>  &nbsp;&nbsp;&nbsp;" +
					json[i].countvoteplus +" 55 <i class='fa fa-eye'></i>      &nbsp;&nbsp;&nbsp;" +
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
		$("#getUserVideos").html(getListUserVideos(data));			
	});
}


function deleteuservideo(url){
	if (confirm("Are you sure you want to delete this video?") == true) {
				$.get(url+"&tfsearch="+$("#searchVideo").val()
				,function(data){
					alert(data);
					$("#getUserVideos").html(getListUserVideos(data));		
				});
	}
	
}



