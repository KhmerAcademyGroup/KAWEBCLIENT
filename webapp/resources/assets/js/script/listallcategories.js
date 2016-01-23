function getJsonAllCategories(data){
	var maincategories = data.maincategories;
	var subcategories = data.subcategories;
	var playlistshow = data.playlist;
	
	var categories = "";
	if(maincategories.length != 0){
		categories += '<div id="accordion-1" class="panel-group">';
		
		
		
		
		for(var i=0;i<maincategories.length;i++){
		categories += '<div class="panel panel-default">'+
		  					'<div class="panel-heading">'+
		  						'<h3 class="panel-title">'+
		  							'<a href="#accordion-1-child-'+(i+1)+'" data-toggle="collapse" data-parent="#accordion-1" class="block-collapse collapsed">'+
		  								maincategories[i].maincategoryname+
		  								
		  							
		  							'</a>'+
		  						'</h3>'+
		  					'</div>';
		  				
		  				
										
												categories+='<div class="collapse" id="accordion-1-child-'+(i+1)+'" >'+
						  						'<div class="panel-body">';
											for(var j=0;j<subcategories.length;j++){
												if(maincategories[i].maincategoryid == subcategories[j].maincategoryid){
														
												categories += '<i ></i>&nbsp;<a href="view_category.act?category='+subcategories[j].categoryid+'&page=1">'+subcategories[j].categoryname+'</a><br><br>';
												}
											}
												categories += '</div><!-- /.panel-body -->'+
							  					'</div><!-- /.collapse in -->';
											
		  			  
		  					
		  					
		  			 categories+= '</div><!-- /.panel panel-default -->';
		}	
	}
	categories += '<div class="panel panel-default">'+
		'<div class="panel-heading">'+
			'<h3 class="panel-title">'+
				'<a href="#accordion-1-child-playid" data-toggle="collapse" data-parent="#accordion-1" class="block-collapse collapsed">Playlist'+
					
				'</a>'+
			'</h3>'+
		'</div>';
	
			categories+='<div class="collapse in" id="accordion-1-child-playid" >'+
				'<div class="panel-body">';
				for(var j=0;j<playlistshow.length;j++){
					if(playlistshow[j].playlistid == playlistshow[j].playlistid){
						
						
						
						categories += '<i ></i>&nbsp;<a href="playlistdetail.act?playlistid='+playlistshow[j].playlistid+'">'+playlistshow[j].playlistname+'</a><br><br>';
					}
				}
						categories += '</div><!-- /.panel-body -->'+
	  					'</div><!-- /.collapse in -->';
					

		
		
categories+= '</div><!-- /.panel panel-default -->';
	
	
	categories += '</div><!-- /.panel-group -->';
	return categories;
}

