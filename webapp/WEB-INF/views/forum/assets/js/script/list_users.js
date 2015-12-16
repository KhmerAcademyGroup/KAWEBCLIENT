

function getListUser(data){
	var tb = "";
	var user = data.ListUser;
	
	if(user.length != 0){
		tb += "<div class='row'>";
		for(var i=0;i<user.length;i++){
			tb += "<div class='col-sm-4'>"+
					"<div class='the-box bg-info no-border'>"+
							"<div class='media user-card-sm'>"+
							  "<a href='#' class='pull-left'>"+
								"<img alt='Avatar' src='../uploads/"+user[i].userimageurl+"' class='media-object img-circle'>"+
							  "</a>"+
							  "<div class='media-body'>"+
								"<h4 class='media-heading'>"+ user[i].username +"</h4>"+
								"<p class='text-info'>"+user[i].email +"</p>"+
							  "</div>"+
							  "<div class='right-button'>"+
								"<button class='btn btn-info' title='View' data-toggle='tooltip'><i class='fa fa-eye'></i></button>"+
							  "</div><!-- /.right-button -->"+
							"</div>"+
			"</div>"+
		"</div>";		
	
		}
		tb+="</div>";
	}
	return tb;
}