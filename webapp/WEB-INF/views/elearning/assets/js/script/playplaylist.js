function getPlaylist(data){
	var playlist = "";//'<div class="contentHolder bg-gray hidden-xs" style="left:-15px" id="SuppressScrollX_1"><div class="content">';
	var p=data.p;
	var list=data.playlist;
	for(var i=0; i<list.length; i++){
		playlist +=  '<div class="the-box no-border store-list bg-gray" style="margin-bottom:5px;padding-bottom:5px" onclick="window.location=\'?v='+list[i].videoid+'&p='+p+'\';">' +
								'<div class="media">' +
						        	'<a class="pull-left">' +
						            	'<img alt="image" class="store-image img-responsive" src="https://i.ytimg.com/vi/'+list[i].youtubeurl+'/mqdefault.jpg" style="width:100px;height:60px">' +
						            '</a>' +
						            '<div class="clearfix visible-xs"></div>' +
						            '<div class="media-body">' +
						                '<h4 class="media-heading">' +
						                	'<a style="color:white">'+list[i].videoname+'</a>' +
										'</h4>' +
						                '<ul class="list-inline">' +
						                    '<li class="text-muted">by '+list[i].username+'</li>' +
						                '</ul>' +
						            '</div><!-- /.media-body -->' +
						        '</div><!-- /.media -->' +
							'</div>';
	}
	//playlist += '</div><!-- /.content --></div>';
	return playlist;
}

function getPlaylistSidebar(data){
	var side="";
	var p= data.p;
	var l= data.playlist;
	
	
	for(var i=0; i<l.length; i++){
		var j=i+1;
		side += 
						'<a class="list-group-item playlist-list" href="#"  onclick="window.location=\'?v='+l[i].videoid+'&p='+p+'\';" >	'+
							'<span>'+ j +'. </span>'+
							'<span>'+ l[i].videoname +'</span>	'+																		
						'</a>';
		
		
		
		
	}
	return side;
}

