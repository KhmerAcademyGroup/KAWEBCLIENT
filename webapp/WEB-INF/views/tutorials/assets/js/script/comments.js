
function getComments(data , isLogin){
	var comment = "";
	
	for(var i=0; i<data.length; i++){
		if(data[i].recommid ==0 ){
			
			
			
		comment +=  '<hr class="hr-style-one">' +
		  			'<li class="media">' + 
		  				'<a class="pull-left"><img class="media-object img-circle" src="../uploads/'+data[i].userimageurl+'" alt="Avatar"></a>' +
		  					'<div class="media-body">' +
		  						'<h4 class="media-heading">'+data[i].username 
		  						+ '<span class="pull-right">'
							  	/*+ '<div class="btn-group pull-right" id="deletebtn"> '	 
							  	+'	 <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"> '
							  	+'	 <i class="fa fa-cog"></i> </button> '

							  	+'	 <ul class="dropdown-menu" role="menu">'
							  	+'	 	 <li>'
							  	+'	 	 	<a href="#">Delete</a>'
							  	+'	 	 </li> '							
							  	+'	 </ul> '
							  	+'</div>'*/
							 +' </span>'
		  						
		  						
		  					+	'</h4>' +
		  						'<p class="date"><small>'+data[i].commentdate+'</small></p>'+
		  						'<p>'+data[i].commenttext+'</p>' +
		  					
		  						'<p class="comment-action">'+
		  					
		  						'<a  class="btn btn-xs btn-default btn-square" data-original-title="Reply comment" data-toggle="collapse" href="#collapseExample'+ i +'" aria-expanded="false" aria-controls="collapseExample">'+
		  							'<i class="fa fa-reply"></i>Reply'+
		  						'</a> '+ 
		  						
		  						'<div class="collapse" id="collapseExample'+ i +'">'+
		  						
		  								'<div style="padding-top:10px">'+		  									
		  									'<textarea class="form-control" style="height: 50px;" placeholder="Your comments here" id="replycommenttext'+i+'" name="replycommenttext"></textarea>';
		  										
												var click = "<a href='#' class='btn btn-primary btn-sm' onclick=isNotLogin()>Reply </a>";
												if(isLogin ==true){
																										
													click = '<button type="button" class="btn btn-primary btn-sm" onclick="replycomment('+data[i].commentid+','+i+','+data[i].videoid+')" >Reply</button>';
												}	
		
		  										comment+= click;
		  										
		  										comment+= '</div>'+
		  						
		  						'</div>'+		  						
		  						'</p>';
		  						
		  						
		  						
		  										for(var j=0; j<data.length; j++){
		  											if(data[i].commentid ==data[j].recommid ){
		  												
		  												comment+= '<ul class="media-list">'+
		  												  '<li class="media">'+
		  													'<a href="#fakelink" class="pull-left">'+
		  													  '<img alt="Avatar" src="../uploads/'+data[j].userimageurl+'" class="media-object img-circle">'+
		  													'</a>'+
		  													'<div class="media-body">'+
		  													  '<h4 class="media-heading">'+
		  													  	data[j].username+
		  														  	 '<span class="pull-right">'+
		  															  	/*'<div class="btn-group pull-right"> '+	 
		  															  	'<button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle" type="button"> '+
		  															  	' <i class="fa fa-cog"></i> </button> '+
		  															  		' <ul role="menu" class="dropdown-menu">'+
		  															  		 	' <li>'+
		  															  		 	 	'<a href="#">Delete</a>'+
		  															  		 	' </li> '+				  		 	
		  															  		' </ul> '+
		  															  	'</div>'+*/
		  															  '</span>'+
		  													  '</h4>'+
		  													  '<p class="date"><small>'+data[j].commentdate+'</small></p>'+
		  													  '<p>'+data[j].commenttext+'</p'+
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

function replycomment(comid, txtid, vid){
	$.post("add_replycomment.act" , 
			{
				'commenttext'  : $("#replycommenttext"+txtid+"").val(),
				'v'	:	vid,
				'comid' : comid
			},function(data){ 
				
				$("#comments").html(getComments(data, true));	
				$("#replycommenttext"+txtid+"").val(null);
			
			});
	
	
}
