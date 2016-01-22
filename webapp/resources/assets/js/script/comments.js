
function getComments(data){
	var comment = "";
	for(var i=0; i<data.length; i++){
		if(data[i].replyId == "MA=="){
	
		comment +=  '<hr class="hr-style-one">' +
		  			'<li class="media">' + 
		  				'<a class="pull-left"><img class="media-object img-circle" src="'+ URL + "/" + data[i].userImageUrl +'" alt="Avatar"></a>' +
		  					'<div class="media-body">' +
		  						'<h4 class="media-heading">' + data[i].username + '</h4>' +
		  						'<p class="date"><small>' + data[i].commentDate + '</small></p>' +
		  						'<p>' + data[i].commentText + '</p>' +
		  					
		  						'<p class="comment-action">'+
		  					
		  						'<a  class="btn btn-xs btn-default btn-square" data-original-title="Reply comment" data-toggle="collapse" href="#collapseExample'+ i +'" aria-expanded="false" aria-controls="collapseExample">'+
		  							'<i class="fa fa-reply"></i>Reply'+
		  						'</a> '+ 
		  						
		  						'<div class="collapse" id="collapseExample'+ i +'">'+
		  						
		  								'<div style="padding-top:10px">'+		  									
		  									'<textarea class="form-control" style="height: 50px;" placeholder="Your comments here" id="replycommenttext'+i+'" name="replycommenttext"></textarea><p id="replyerror"></p>' + 
		  										
											
														'<button type="button" class="btn btn-primary btn-sm" onclick="replycomment('+data[i].commentId+','+i+','+data[i].videoId+')" >Reply</button>' +
											
		
		  								'</div>'+
		  						
		  						'</div>'+		  						

							'</p>';
		  						
		  						
		  						
		  										for(var j=0; j<data.length; j++){
		  											if(data[i].commentId ==data[j].replyId ){
		  												
		  												comment+= '<ul class="media-list">'+
		  												  '<li class="media">'+
		  													'<a href="#fakelink" class="pull-left">'+
		  													  '<img alt="Avatar" src="../uploads/'+data[j].userImageUrl+'" class="media-object img-circle">'+
		  													'</a>'+
		  													'<div class="media-body">'+
		  													  '<h4 class="media-heading">'+
		  													  	data[j].username+
		  														  	 '<span class="pull-right">'+
		  															  '</span>'+
		  													  '</h4>'+
		  													  '<p class="date"><small>'+data[j].commentDate+'</small></p>'+
		  													  '<p>'+data[j].commentText+'</p'+
		  													 ' <p class="comment-action">'+
		  														' </p>'+				
		  													 ' <p></p>'+
		  													'</div>'+
		  												  '</li>'+								  
		  												'</ul>';
		  											}
		  										}
		  						
		  						
		  						
		  			comment+='</div>' +
		  			'</li>';
		}
	}
	return comment;
}

function replycomment(comid, txtid, vid){
	
	if($("#replycommenttext"+txtid+"").val().trim()!=""&&$("#replycommenttext"+txtid+"").val().trim()!=null&&$("#replycommenttext"+txtid+"").val().trim()!="<br/>"){
		
		$.post("add_replycomment.act" , 
				{
					'commenttext'  : $("#replycommenttext"+txtid+"").val(),
					'v'	:	vid,
					'comid' : comid
				},function(data){ 
					
					$("#comments").html(getComments(data));	
					$("#replycommenttext"+txtid+"").val(null);
				
		});
		
	}else{
		
		$("#replyerror").text("Comment cannot empty!")
						.css("color","red");
	}
	
	
	
}
