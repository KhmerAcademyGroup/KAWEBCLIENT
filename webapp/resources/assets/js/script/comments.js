

function getCommentHTML(data, datareply, page){
	//alert(page);
	var comment = "";
	for(var i=0; i<data.length; i++){
		//if(data[i].replyId == "MA=="){
	
		comment +=  '<hr class="hr-style-one">' +
		  			'<li class="media">' + 
		  				'<a class="pull-left"><img class="media-object img-responsive img-circle" src="'+ URL + "/" + data[i].userImageUrl +'" alt="Avatar" style="width:60px;height:60px;" /></a>' +
		  					'<div class="media-body">' +
		  						'<h4 class="media-heading">' + data[i].username + '</h4>' +
		  						'<p class="date"><small>' + data[i].commentDate + '</small></p>' +
		  						'<p>' + data[i].commentText + '</p>' +
		  					
		  						'<p class="comment-action">'+
		  					
		  						'<a  class="btn btn-xs btn-default btn-square" data-original-title="Reply comment" data-toggle="collapse" href="#collapseExample'+ data[i].commentId + "Page" + page +'" aria-expanded="false" aria-controls="collapseExample">'+
		  							'<i class="fa fa-reply"></i>Reply'+
		  						'</a> '+ 
		  						
		  						'<div class="collapse" id="collapseExample'+ data[i].commentId + "Page" + page + '">'+
		  						
		  								'<div style="padding-top:10px">'+		  									
		  									'<textarea class="form-control" style="height: 50px;" placeholder="Your comments here" id="replycommenttext'+data[i].commentId + "Page" + page+ '" name="replycommenttext"></textarea><p id="replyerror"></p>' + 
		  										
											
														'<button type="button" class="btn btn-primary btn-sm"' + "onclick=replycomment('" + data[i].commentId + "','" + page + "','" + data[i].videoId + "') >Reply</button>" +
											
		
		  								'</div>'+
		  						
		  						'</div>'+		  						

							'</p>';
		  						
		  						
		  										if(datareply!=null && datareply != ""){
		  											for(var j=0; j<datareply.length; j++){
			  											if(data[i].commentId == datareply[j].replyId ){
			  												
			  												comment+= '<ul class="media-list">'+
			  												  '<li class="media">'+
			  													'<a href="#fakelink" class="pull-left">'+
			  													  '<img alt="Avatar" src="'+URL+"/"+datareply[j].userImageUrl+'" class="media-object img-responsive img-circle" style="width:60px;height:60px;" />'+
			  													'</a>'+
			  													'<div class="media-body">'+
			  													  '<h4 class="media-heading">'+
			  													        datareply[j].username+
			  														  	 '<span class="pull-right">'+
			  															  '</span>'+
			  													  '</h4>'+
			  													  '<p class="date"><small>'+datareply[j].commentDate+'</small></p>'+
			  													  '<p>'+datareply[j].commentText+'</p'+
			  													 ' <p class="comment-action">'+
			  														' </p>'+				
			  													 ' <p></p>'+
			  													'</div>'+
			  												  '</li>'+								  
			  												'</ul>';
			  											}
			  										}
		  										}
		  										
		  						
		  						
		  						
		  			comment+='</div>' +
		  			'</li>';
		//}
	}
	return comment;
}

function replycomment(comid, page, vid){
	
	if($("#replycommenttext"+ comid + "Page" + page+"").val().trim()!=""&&$("#replycommenttext"+ comid + "Page" + page+"").val().trim()!=null&&$("#replycommenttext"+ comid + "Page" + page+"").val().trim()!="<br/>"){
		
		$.post(URL + "/rest/elearning/video/replycomment" , 
				{
					'commenttext'  : $("#replycommenttext"+ comid + "Page" + page+"").val(),
					'v'	:	vid,
					'rid' : comid
				},function(data){ 
					$("#comments").html(getCommentVideo(vid));
					$("#replycommenttext"+ comid + "Page" + page+"").val(null);
				
		});
		
	}else{
		
		$("#replyerror").text("Comment cannot empty!")
						.css("color","red");
	}
	
	
	
}
