function getJsonListVideosInCategory(data){
	
	
	var videos = data.listVideosInCategory;
	var total_videos = data.total_videos;
	var page = data.page;
	var maxview = data.maxview;
	var category = data.category;
	
	if(videos.length != 0){
	var videosdata = '<div class="view-category text-muted small">'+
						'<span>Category : '+videos[0].categorynames+'</span><span class="pull-right">About '+total_videos+' results</span>'+
							'</div>';
		
		
		for(var i=0;i<videos.length;i++){
			
			var click = "window.location.href='play.act?v="+videos[i].videoid+"'";
			if(data.isLogin == false &&  videos[i].publicview == false ){
				click = "isNotLogin()";
			}	
			
			console.log(videos[i].publicview);
			
		videosdata += '<div class="the-box no-border store-list view-category" >'+
						'<div class="media" style="cursor: context-menu;">'+
							'<a class="pull-left" href="#" onclick="'+ click +'"> ' +
								'<img alt="image" class="store-image" src="https://i.ytimg.com/vi/'+videos[i].youtubeurl+'/mqdefault.jpg" style="width:196px;height:110px"></a>'+
								'<div class="clearfix visible-xs"></div>'+
									'<div class="media-body">'+
											'<h4 class="media-heading" style="padding:0px;margin:0px">'+
												'<a  href="#" onclick="'+ click +'"><strong class="text-black">'+videos[i].videoname+'</strong></a></h4>'+
											'<ul style="list-style:none;padding:0px;margin:0px;">'+
												'<li><a class="text-muted small">by '+videos[i].username+'</a></li>'+
												'<li class="text-muted small">'+videos[i].postdate+' - '+videos[i].viewcounts+' views</li>'+
												'<li class="text-muted small">'+videos[i].description+'</li>'+
											'</ul>'+
									'</div><!-- /.media-body -->'+
						'</div><!-- /.media -->'+
					'</div>';
		
		}
	}
	if(total_videos > maxview){
	videosdata += '<div class="view-category">'+
					'<ul class="pagination separated pull-right">';
	if(page > 1){
		videosdata += '<li><a href="?category='+category+'&page='+(page-1)+'">Previous</a></li>';
	}
						var pagination = Math.ceil(total_videos/maxview);
						var start = 1;
						var stop = pagination+1;
						if(pagination > 5){
							var start = page-2;
							var stop = page+3;
							if(page < 3){
								start = 1;
								stop = 6;
							}else if(page > (pagination-3)){
								start = pagination-4;
								stop = pagination+1;
							}
						}
						for(var j=start; j < stop; j++){
							if(page == j){
								videosdata += '<li class="active"><a href="?category='+category+'&page='+j+'">'+j+'</a></li>';
							}else{
								videosdata += '<li><a href="?category='+category+'&page='+j+'">'+j+'</a></li>';
							}
						}
	if(page < pagination){
		videosdata += '<li><a href="?category='+category+'&page='+(page+1)+'">Next</a></li>';
	}
				videosdata +='</ul>'+
						'</div>';
	}
	return videosdata;
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
}
