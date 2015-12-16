$(document).ready(function(){
				 
				$.post("playlist.act",{
					tfsearch : ""
					},function(data){
						$("#getPlayList").html(getListPlaylist(data));
				});
				
				$("#searchPlaylist").keyup(function(){
					$.post("playlist.act" , 
					{ 
						tfsearch : $("#searchPlaylist").val(),
						setNumrow : $("#setNumrowPlaylist").val()
					}, 
						function(data){
						$("#getPlayList").html(getListPlaylist(data));
					});
				});
				
				
				
				$("#frmSetRowPlaylist").change(function(){
					$.post("playlist.act" , 
							{ 
								setNumrow : $("#setNumrowPlaylist").val(),
								tfsearch : $("#searchPlaylist").val()
								
							}, 
								function(data){
								$("#getPlayList").html(getListPlaylist(data));
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
									$("#getPlayList").html(getListPlaylist(data));
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
							publicview : $("#updatepublicview").val(),
							thumbnail : $("#thumbnail").val()
						},function(data){
							$.post("playlist.act",{
								search : ""
								},function(data){
									$("#getPlayList").html(getListPlaylist(data));
							});
							 $.magnificPopup.close();
						});
					}
					
				});
				
				
				
				$('#deleteall').on("click", function(event){
					var tb = $(this).attr('title');
					var sel = false;	
					var ch = $('#'+tb).find('.checkchb  input[type=checkbox]');	
					var c = confirm('Continue delete?');
					if(c) {
					  ch.each(function(){
						 var $this = $(this);
							if($this.is(':checked')) {
								sel = true;
								$.get("deleteplaylist.act?playlistid="+$(this).val()+"&tfsearch="+$("#searchPlaylist").val()+"&setNumrow="+$("#setNumrowPlaylist").val());
							}
					  });
					 
								
					  if(!sel) alert('No playlist selected')
					  else{
//						  $.post("playlist.act" , 
//									{ 
//										tfsearch : $("#searchPlaylist").val(),
//										setNumrow : $("#setNumrowPlaylist").val()
//									}, 
//										function(data){
//										$("#getPlayList").html(getListPlaylist(data));
//									});	
						  location.reload();
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



function getListPlaylist(data){
		var json = data.playlist;
		var pagin = data.pagination; 
		var result = "";
		var playlist = "<div class='row'>"; 
		var pagination = "<div class='row'><div class='col-sm-6'><div class='dataTables_info' id='datatable-example_info'>Page "+ pagin.currentPage +" of "+ data.totalpages +" entries</div></div><div class='col-sm-6'><div class='dataTables_paginate paging_bootstrap'>";
		pagination += "<ul class='pagination separated'>";
		
//		var path = window.location.pathname;
//		var page = path.split("/").pop();
//		var imgdefault = "assets/img/no-video.jpg";
//		var gotodetail = "playlistdetail";
		
		if(json.length != 0){
			
			for(var i=0;i<json.length;i++){    
				var img = "assets/img/"+json[i].thumbnailurl+"";
				if(json[i].countvideos > 0){
					img = "https://i.ytimg.com/vi/"+json[i].thumbnailurl+"/mqdefault.jpg";
				}
				
				var  playlistname =json[i].playlistname;
				if( json[i].playlistname.length >30) playlistname = json[i].playlistname.substring(0, 30) +"..." ;
				
				playlist +=	"<div class='col-xs-12 col-sm-5 col-md-4 col-lg-3' "+i+"' onmouseover=showMyDiv("+i+") onmouseout=hideMyDiv("+i+")>"+
							"<!-- BEGIN ITEM STORE -->" +
							"<div class='the-box full store-item text-center checkchb'>" +
							"<div  class='setting-list all  mydiv"+i+"' style='display:none;position: absolute;width:100%;padding-left: 3px;z-index: 9999;'>"+
							  "<input type='checkbox' value='"+json[i].playlistid +"' class='mycheck' id='chBox"+i+"' style='margin-right: 170px;'>"+
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
							
							"<div class='new-playlist'>" +
							"<ul>" +
							"<li>"+json[i].countvideos+"</li>" +
							"<li>Videos</li>" +
							"<li><i class='fa fa-bars'></i></li>" +
							"</ul>" +
							"</div>" +
							
							"</a>"+ 
							"<img src='"+img+"' class='item-image' alt='Image'>" +
							"<div class='the-box no-margin no-border item-des'>" +
							"<div class='row'>" +
							"<div class='col-xs-12'>" +
							"<p class='text-danger'><strong class='text-black'>"+ playlistname +"</strong></p>" +
							"</div><!-- /.col-xs-7 -->" +
							"</div><!-- /.row -->" +
							"</div>" +
							"</div><!-- /.the-box .no-border .full .store-item -->" +
							"<!-- END ITEM STORE -->" +
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
	$.get(url+"&tfsearch="+$("#searchPlaylist").val()+"&setNumrow="+$("#setNumrowPlaylist").val()
		,function(data){
		$("#getPlayList").html(getListPlaylist(data));					
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
				$.get(url+"&tfsearch="+$("#searchPlaylist").val()+"&setNumrow="+$("#setNumrowPlaylist").val()
				,function(data){
						$("#getPlayList").html(getListPlaylist(data));
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
				$("#thumbnail").val(data.thumbnailurl);
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

