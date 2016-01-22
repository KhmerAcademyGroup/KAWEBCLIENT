var playlistid = 0;
var userid = 0;
var visiterid = 0;
function getPlaylist(data , uservisitid) {
			var playlist = data.playlistdto;
			var divplaylist = "";

			if (playlist.length != 0) {
				
				userid = playlist.userid;
				
				playlistid = playlist.playlistid;
				
				visiterid = uservisitid;
				
				//alert("owner " + userid + "visiter "+ uservisitid);
				
				var  view = "<span class='label label-danger' style='font-size: 10px;'><i class='fa fa-lock'></i> Private</span>";
				if(playlist.publicview == true ){
					view = "<span class='label label-success' style='font-size: 10px;'><i class='fa fa-globe'></i> Public</span>";
				}
				var img = "assets/img/"+playlist.thumbnailurl+"";
				if(playlist.countvideos > 0){
					img = "https://i.ytimg.com/vi/"+playlist.thumbnailurl+"/mqdefault.jpg";
				}
				
				var buttonforowner = "";
				if(userid == uservisitid){
					buttonforowner = "<span class='small text-muted' style='color: #37BC9B'>" +
										"<a href='#frmadd' data-backdrop='static' class='btn btn-default btn-perspective' data-toggle='modal' onclick='clkickBtAdd()'><i class='fa fa-plus-square-o'></i> Add video </a>&nbsp; &nbsp;"+
										"<a href='#frmup_date_playlist' class='btn btn-default btn-perspective' onclick='getPlaylistForUpdate("+playlistid+")'  data-toggle='modal' class='btn btn-default btn-perspective'><i class='fa fa-cog'></i> Update </a> &nbsp; &nbsp;" +
										"<a href='#' onclick=deletePlayList('deleteplaylist.act?playlistid="+playlistid +"') class='btn btn-default btn-perspective'><i class='fa fa-trash-o'></i> Delete </a>" +
									"</span>" ;
				}
				
				divplaylist = "<div class='media'>" +
									"<a class='pull-left' > " +
									"<img alt='image' class='store-image' src='"+img+"' style='height: 130px'>" +
								"</a>" +
								"<div class='clearfix visible-xs'></div>" +
								"<div class='media-body'>" +
									"<a ></a>" +
									"<h4 class='media-heading' style='padding: 0px; margin: 0px'>" +
										"<a >" +
											"<strong class='text-black'>"+ playlist.playlistname +" </strong> &nbsp; " +  
										"</a>" + view +
									"</h4>" + 
								"<ul style='list-style: none; padding: 0px; margin: 0px;'>" +
									"<li><a  class='text-muted small'>by "+ playlist.username +"</a></li>" +
									"<li><span class='text-muted small'>"+ playlist.countvideos +" Videos</span></li>" +		
									"<li><span class='text-muted small'>"+ playlist.description +" </span></li>" +		
								"</ul>" +
								
								"</div>" +
								"<!-- /.media-body -->" +
								
								buttonforowner+
								
								"</div>";
									

			} else {
				divplaylist = "<div class='alert alert-success fade in alert-dismissable'>"
						+ "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button>"
						+ "<strong>No</strong> video in playlist!" + "</div>";

			}

			return divplaylist;

		}


		function getPlaylistForUpdate(id){
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
		}
		
		function deletePlayList(url){
			if (confirm("Are you sure you want to delete this playlist?") == true) {
						$.post(url
						,function(data){
								window.location.href = "mypublicprofile.act";
						});
			}
			
		}
		

		function listvideofromplaylist(data) {
			
			var pagin = data.pagination; 
			var pagination = "<div class='row'><div class='col-sm-2'><div class='dataTables_info' id='datatable-example_info'> "+ pagin.currentPage +" of "+ data.totalpages +" Pages</div></div><div class='col-sm-10'><div class='dataTables_paginate paging_bootstrap'><ul class='pagination separated'>";
			
			var getplaylist = data.getplaylist;
			var divlistvideo = "";
			if (getplaylist.length != 0) {
				
			
				
				//alert("owner " + userid + "visiter "+ visiterid);
				
				
				
				for (var i = 0; i < getplaylist.length; i++) {
					
					var click = "href='../elearning/play.act?v="+ getplaylist[i].videoid+ "&p="+ playlistid+"'";
					if(visiterid == 0 && getplaylist[i].publicview == false ){
						click = "href='#' onclick=isNotLogin()";
					}
					
					console.log(visiterid +" " + getplaylist[i].publicview);
					
					var buttondelete = "";
					if(userid == visiterid ){
						buttondelete =  "<div class='right-button'>"
												+ "<img src='assets/img/loading.gif' class='loading"+i+"' style='display:none'> <button  class='btn btn-danger btd"+i+"'  onclick='deleteV("+ playlistid +" ,"+getplaylist[i].videoid+" , "+ data.currentpage +" , "+ i +")'><i class='fa fa-trash-o'></i></button>"
										+ " </div><!-- /.right-button -->"
					}
					
					
					var  videoname =getplaylist[i].videoname;
					if( getplaylist[i].videoname.length >80) videoname = getplaylist[i].videoname.substring(0, 80) +"..." ;
					
					divlistvideo 	+= "<div class='the-box no-border'>"
										+ "<div class='media user-card-sm'>"
											+ "<a class='pull-left' "+ click +" >"
													+ "<img class='media-object img-rounded' src='https://i.ytimg.com/vi/"+ getplaylist[i].youtubeurl  +"/mqdefault.jpg' alt='Avatar'>"
											+ "</a>"
											+ "<div class='media-body'>"
											+ "<a "+ click +"><strong class='text-black' style='color:black'>"+videoname+ "</strong></a>"
											+	"<ul style='list-style: none; padding: 0px; margin: 0px;' class='text-muted small'>" +
													"<li><a  class='text-muted small'>by "+ getplaylist[i].username +"</a> | <span>"+getplaylist[i].postdate+"</span></li>" +
														
												 "</ul>" +
													
													"<span class='small text-muted' style='color:#AAB2BD'>" +
													getplaylist[i].countvoteplus +" <i class='fa fa-thumbs-up'></i>     &nbsp;&nbsp;&nbsp;" +
													getplaylist[i].countvoteminus+" <i class='fa fa-thumbs-down'></i>  &nbsp;&nbsp;&nbsp;" +
													getplaylist[i].viewcounts + " <i class='fa fa-eye'></i>      &nbsp;&nbsp;&nbsp;" +
													"</span>" 
											
									+ "</div>"
									+  buttondelete 
									+ "</div>"
									+ "</div>";
				}

				
//				if(data.hasNext == true){
//					pagination += "<a  onclick=gotopageListVideos('listvideoinplaylist.act?page="+data.nextpage +"&playlistid="+playlistid+"')>Next</a>";
//				}	
//					
				if(data.hasPrevious == true)
					pagination += "<li><a href='#pre="+data.previouspage +"' onclick=gotopageListVideos('listvideoinplaylist.act?page="+data.previouspage +"') >Previous</a></li>";
				if(pagin.currentPage != 1)
					pagination += "<li><a href='#page=1' onclick=gotopageListVideos('listvideoinplaylist.act?page="+1 +"')>1</a></li>";   
				var pagenum =  0;
				for(var i=pagin.currentPage; i<=data.totalpages; i++){
					if(i==pagin.currentPage){
						pagination += "<li class='active'><a href='#page="+i+"'  onclick=gotopageListVideos('listvideoinplaylist.act?page="+i +"')>"+i+"</a></li>";
					}else{
						pagination += "<li><a href='#page="+i+"' onclick=gotopageListVideos('listvideoinplaylist.act?page="+ i +"')>"+i+"</a></li>";
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
					pagination += "<li><a href='#next' onclick=gotopageListVideos('listvideoinplaylist.act?page="+data.nextpage +"')>Next</a></li>";
				if(data.totalpages!=pagin.currentPage){
					pagination += "<li><a href='#page="+data.totalpages+"' onclick=gotopageListVideos('listvideoinplaylist.act?page="+data.totalpages +"')>Last</a></li>";
				}		
						
				pagination += "</div></div></div>";
				

			}else{
					divlistvideo = "<div class='alert alert-success fade in alert-dismissable'>"
					+ "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button>"
					+ "<strong>No</strong> video in playlist!" + "</div>";
			}

			return divlistvideo + pagination ;
		}

		function gotopageListVideos(url){
			$.get(url , { playlistid : playlistid  }
				,function(data){
				$("#getList").html(listvideofromplaylist(data));	
			});
		}
		
		function deleteV($pid, $vid , $currentpage,$i){
			$(".loading"+$i+"").css("display","inline");
			$(".btd"+$i+"").attr('disabled','disabled');
			$.post("deletevideofromplaylist.act?playlistid="+$pid+"&vid="+$vid
			   , function(data) {
				$.post("listvideoinplaylist.act", {
					playlistid : playlistid
				}, function(data) {
					if(data.getplaylist == 0){
						$("#firtvideo").html(getPlaylist(data , uservisitid));
						$("#getList").html("<div class='alert alert-success fade in alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button><strong>No</strong> video in playlist!</div>");
					}else{
						$("#getList").html(listvideofromplaylist(data));
					}
				});
			});

		}
		
		
		function popupfrmadd(){
			$.magnificPopup.open({
		        type: 'inline',
		        items: {src: '#frmadd'},
		        preloader: false,
		        modal: true,
		        delegate: 'a',
				  removalDelay: 500, //delay removal by X to allow out-animation
				  midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
				});
		}
		
		
		
		
		function videoSearch(data) {
			
			var pagin = data.PAGINATION; 
			
			/*alert(pagin.page);*/
			var pagination = "<div class='row'><div class='col-sm-2'><div class='dataTables_info' id='datatable-example_info'> "+ pagin.page +" of "+ pagin.totalPages +" Pages</div></div><div class='col-sm-10'><div class='dataTables_paginate paging_bootstrap'><ul class='pagination separated'>";
			/*	var videosearch = data.videosearch;
			var PlaylistDetail = data.PlaylistDetail;
			
			var divVideosearch = "";
			if (videosearch.length != 0) {
				
				for (var i = 0; i < videosearch.length; i++) {
					
					var button ="<img src='assets/img/loading.gif' class='addloading1"+i+"' style='display:none'> <button  class='btn btn-info btadd1"+i+"' onclick='addVideoToPlaylist("+ playlistid +" ,"+videosearch[i].videoid+" , "+ data.currentpage +" , "+ i +")'>Add</button>";
					
					if(PlaylistDetail.length != 0){
						//playlistid":4,"videoid 
						for (var j = 0; j < PlaylistDetail.length; j++) {
							if(PlaylistDetail[j].playlistid == playlistid  && PlaylistDetail[j].videoid == videosearch[i].videoid){
								button = "<img src='assets/img/loading.gif' class='deleteloading1"+i+"' style='display:none'> <button  class='btn btn-danger btdelete1"+i+"' disable onclick='deleteVideoFromPlaylist("+ playlistid +" ,"+videosearch[i].videoid+" , "+ data.currentpage +" , "+ i +")'>Remove</button>";
							
							}
						}
					}
					
					var  videoname =videosearch[i].videoname;
					if( videosearch[i].videoname.length >70) videoname = videosearch[i].videoname.substring(0, 70) +"..." ;
					
					divVideosearch 	+= "<div class='the-box no-border'>"
										+ "<div class='media user-card-sm'>"
											+ "<a class='pull-left' href='../elearning/play.act?v="+ videosearch[i].videoid+"'  target='_blank'>"
													+ "<img class='media-object img-rounded' src='https://i.ytimg.com/vi/"+ videosearch[i].youtubeurl  +"/mqdefault.jpg' alt='Avatar'>"
											+ "</a>"
											+ "<div class='media-body'>"
											+ "<a href='play.act?v="+ videosearch[i].videoid+"'  target='_blank'><strong class='text-black' style='color:black'>"+ videoname+ "</strong></a>"
											+	"<ul style='list-style: none; padding: 0px; margin: 0px;' class='text-muted small'>" +
													"<li><a href='#fakelink' class='text-muted small'>by "+ videosearch[i].username +"</a> | <span>"+videosearch[i].postdate+"</span></li>" +
														
												 "</ul>" +
													
													"<span class='small text-muted' style='color:#AAB2BD'>" +
													videosearch[i].countvoteplus +" <i class='fa fa-thumbs-up'></i>     &nbsp;&nbsp;&nbsp;" +
													videosearch[i].countvoteminus+" <i class='fa fa-thumbs-down'></i>  &nbsp;&nbsp;&nbsp;" +
													videosearch[i].viewcounts + " <i class='fa fa-eye'></i>      &nbsp;&nbsp;&nbsp;" +
													"</span>" 
											
									+ "</div>"
									
									+ "<div class='right-button'>"
									+ button
									+ " </div><!-- /.right-button -->"
									
									+ "</div>"
									+ "</div>";
				}

//				if(data.hasNext == true){
//					pagination += "<a  onclick=getoPageVideoSearch('listvideotoaddtoplaylist.act?page="+data.nextpage+"')>Next</a>";
//				}
				
				if(data.hasPrevious == true)
					pagination += "<li><a href='#pre="+data.previouspage +"' onclick=getoPageVideoSearch('listvideotoaddtoplaylist.act?page="+data.previouspage +"') >Previous</a></li>";
				if(pagin.currentPage != 1)
					pagination += "<li><a href='#page=1' onclick=getoPageVideoSearch('listvideotoaddtoplaylist.act?page="+1 +"')>1</a></li>";   
				var pagenum =  0;
				for(var i=pagin.currentPage; i<=data.totalpages; i++){
					if(i==pagin.currentPage){
						pagination += "<li class='active'><a href='#page="+i+"'  onclick=getoPageVideoSearch('listvideotoaddtoplaylist.act?page="+i +"')>"+i+"</a></li>";
					}else{
						pagination += "<li><a href='#page="+i+"' onclick=getoPageVideoSearch('listvideotoaddtoplaylist.act?page="+ i +"')>"+i+"</a></li>";
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
					pagination += "<li><a href='#next' onclick=getoPageVideoSearch('listvideotoaddtoplaylist.act?page="+data.nextpage +"')>Next</a></li>";
				if(data.totalpages!=pagin.currentPage){
					pagination += "<li><a href='#page="+data.totalpages+"' onclick=getoPageVideoSearch('listvideotoaddtoplaylist.act?page="+data.totalpages +"')>Last</a></li>";
				}		
						
				pagination += "</div></div></div>";
				
				

			}else{
				divVideosearch = "<div class='alert alert-success fade in alert-dismissable'>" +
									"<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button><strong>No</strong> videos!" +
								"</div>";
			}
			
			return divVideosearch + pagination;*/
			return pagination;

		}
		
		// Video Search ( go to other page  )
		function getoPageVideoSearch(url){
			$.get(url+"&playlistid="+playlistid+"&tfsearch="+ $("#searchVideos").val()
				,function(data){
				$("#getVideoSearch").html(videoSearch(data));	
			});
		}
		
		
		function yourVideo(data) {
			var pagin = data.paginationvideos; 
			var pagination = "<div class='row'><div class='col-sm-2'><div class='dataTables_info' id='datatable-example_info'> "+ pagin.currentPage +" of "+ data.totalpages +" Pages</div></div><div class='col-sm-10'><div class='dataTables_paginate paging_bootstrap'><ul class='pagination separated'>";
		    var PlaylistDetail = data.PlaylistDetail;
			var yourVideo = data.listuservideos;
			var divYourVideo = "";
			if (yourVideo.length != 0) {
				for (var i = 0; i < yourVideo.length; i++) {
					
					var button ="<img src='assets/img/loading.gif' class='addloading2"+i+"' style='display:none'> <button  class='btn btn-info btadd2"+i+"' onclick='addYourVideoToPlst("+ playlistid +" ,"+yourVideo[i].videoid+" , "+ data.currentpage +" , "+ i +")'>Add</button>";
					
					if(PlaylistDetail.length != 0){
						//playlistid":4,"videoid 
						for (var j = 0; j < PlaylistDetail.length; j++) {
							if(PlaylistDetail[j].playlistid == playlistid  && PlaylistDetail[j].videoid == yourVideo[i].videoid){
								button = "<img src='assets/img/loading.gif' class='deleteloading2"+i+"' style='display:none'> <button  class='btn btn-danger btdelete2"+i+"' onclick='deleteYourVideoFromPlst("+ playlistid +" ,"+yourVideo[i].videoid+" , "+ data.currentpage +" , "+ i +")'>Remove</button>";
							}
						}
					}
					
					var  videoname =yourVideo[i].videoname;
					if( yourVideo[i].videoname.length >70) videoname = yourVideo[i].videoname.substring(0, 70) +"..." ;
					
					divYourVideo 	+= "<div class='the-box no-border'>"
										+ "<div class='media user-card-sm'>"
											+ "<a class='pull-left' href='../elearning/play.act?v="+ yourVideo[i].videoid+ "'  target='_blank'>"
													+ "<img class='media-object img-rounded' src='https://i.ytimg.com/vi/"+ yourVideo[i].youtubeurl  +"/mqdefault.jpg' alt='Avatar'>"
											+ "</a>"
											+ "<div class='media-body'>"
											+ "<a href='play.act?v="+ yourVideo[i].videoid+ "' target='_blank'><strong class='text-black' style='color:black'>"+ videoname+ "</strong></a>"
											+	"<ul style='list-style: none; padding: 0px; margin: 0px;' class='text-muted small'>" +
													"<li><span class='text-muted small'>by "+ yourVideo[i].username +"</span> | <span>"+yourVideo[i].postdate+"</span></li>" +
														
												 "</ul>" +
													
													"<span class='small text-muted' style='color:#AAB2BD'>" +
													yourVideo[i].countvoteplus +" <i class='fa fa-thumbs-up'></i>     &nbsp;&nbsp;&nbsp;" +
													yourVideo[i].countvoteminus+" <i class='fa fa-thumbs-down'></i>  &nbsp;&nbsp;&nbsp;" +
													yourVideo[i].viewcounts + " <i class='fa fa-eye'></i>      &nbsp;&nbsp;&nbsp;" +
													"</span>" 
											
											+ "</div>"
											+ "<div class='right-button'>"
											+ button
											+ " </div><!-- /.right-button -->"
											+ "</div>"
											+ "</div>";
				}

//				if(data.hasNext == true){
//					pagination += "<a  onclick=getoPageSearchUserVideo('listuservideos.act?page="+data.nextpage+"')>Next</a>";
//				}
				
				if(data.hasPrevious == true)
					pagination += "<li><a href='#pre="+data.previouspage +"' onclick=getoPageSearchUserVideo('listuservideos.act?page="+data.previouspage +"') >Previous</a></li>";
				if(pagin.currentPage != 1)
					pagination += "<li><a href='#page=1' onclick=getoPageSearchUserVideo('listuservideos.act?page="+1 +"')>1</a></li>";   
				var pagenum =  0;
				for(var i=pagin.currentPage; i<=data.totalpages; i++){
					if(i==pagin.currentPage){
						pagination += "<li class='active'><a href='#page="+i+"'  onclick=getoPageSearchUserVideo('listuservideos.act?page="+i +"')>"+i+"</a></li>";
					}else{
						pagination += "<li><a href='#page="+i+"' onclick=getoPageSearchUserVideo('listuservideos.act?page="+ i +"')>"+i+"</a></li>";
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
					pagination += "<li><a href='#next' onclick=getoPageSearchUserVideo('listuservideos.act?page="+data.nextpage +"')>Next</a></li>";
				if(data.totalpages!=pagin.currentPage){
					pagination += "<li><a href='#page="+data.totalpages+"' onclick=getoPageSearchUserVideo('listuservideos.act?page="+data.totalpages +"')>Last</a></li>";
				}		
						
				pagination += "</div></div></div>";

				
				
			}else{
				divYourVideo = "<div class='alert alert-success fade in alert-dismissable'>" +
									"<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button><strong>No</strong> videos!" +
								"</div>";
			}

			return divYourVideo + pagination;
			
		}
		
		// Search user's Video ( go to other page  )
		function getoPageSearchUserVideo(url){
			$.get(url+"&playlistid="+playlistid+"&tfsearch="+ $("#searchVideos").val()
				,function(data){
				$("#getYourVideo").html(yourVideo(data));	
			});
		}
		
		
		function clkickBtAdd(){
			$.post("listvideotoaddtoplaylist.act",{ playlistid:playlistid } , function(data) {
				$("#getVideoSearch").html(videoSearch(data));
			});
			
			$.post("listuservideos.act", { playlistid:playlistid } ,function(data) {
				$("#getYourVideo").html(yourVideo(data));
			});
		}
		
		
		
		
		function addVideoToPlaylist($pid, $vid , $currentpage , $i){
			
			$(".addloading1"+$i+"").css("display","inline");
			$(".btadd1"+$i+"").attr('disabled','disabled');
			
			$.post("addvideotoplaylist.act?pid="+$pid+"&vid="+$vid)
			
			$.post("listvideotoaddtoplaylist.act" ,{ page : $currentpage , playlistid:playlistid } , function(data) {
				$("#getVideoSearch").html(videoSearch(data));
			});
				
		}
		
		function deleteVideoFromPlaylist($pid, $vid , $currentpage , $i){
			
			$(".deleteloading1"+$i+"").css("display","inline");
			$(".btdelete1"+$i+"").attr('disabled','disabled');
			
			$.post("deletevideofromplaylist.act?playlistid="+$pid+"&vid="+$vid);
			
			$.post("listvideotoaddtoplaylist.act" ,{ page : $currentpage , playlistid:playlistid } , function(data) {
				$("#getVideoSearch").html(videoSearch(data));
			});
		}
		
		
		
		function addYourVideoToPlst($pid, $vid , $currentpage, $i){
			
			$(".addloading2"+$i+"").css("display","inline");
			$(".btadd2"+$i+"").attr('disabled','disabled');
			
			$.post("addvideotoplaylist.act?pid="+$pid+"&vid="+$vid)
			
			$.post("listuservideos.act",{ page : $currentpage , playlistid:playlistid },   function(data) {
				$("#getYourVideo").html(yourVideo(data));
			});
		}
		
		function deleteYourVideoFromPlst($pid, $vid , $currentpage, $i){
			
			$(".deleteloading2"+$i+"").css("display","inline");
			$(".btdelete2"+$i+"").attr('disabled','disabled');
			
			$.post("deletevideofromplaylist.act?playlistid="+$pid+"&vid="+$vid);
			
			$.post("listuservideos.act",{ page : $currentpage , playlistid:playlistid },   function(data) {
				$("#getYourVideo").html(yourVideo(data));
			});
		}
		
		function isNotLogin(){
	    	$.magnificPopup.open({
	            type: 'inline',
	            items: {src: '#form-login'},
	            preloader: false,
	            modal: true,
	            delegate: 'a',
	    		removalDelay: 500, //delay removal by X to allow out-animation
	    		midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
	    	});
	    	$("#vu-myclose").css("display", "inline");
	    }
		
		function checkifexist(){
			
		 	
		}
	