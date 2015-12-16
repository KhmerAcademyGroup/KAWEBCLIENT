function getJsonFooter(data){
	var tag = data.tag;
	var countQuestion = data.countQuestion;
	var countComment = data.countComment;
	table = "";
	
	table += 
			"	<div class='col-sm-4'>" +
			"		<h4 class='small-title'>Forum Statistics</h4>" +
			"		<ul class='list-group'>" +
			"			<li class='list-group-item'>Total Question <span class='badge badge-danger'>"+countQuestion+"</span></li>" +
			"			<li class='list-group-item'>Total Reply <span class='badge badge-info'>"+countComment+"</span></li>" +
			"		</ul>" +
			"	</div><!-- /.col-sm-4 -->" +
			"	<div class='col-sm-4'>" +
			"		<h4 class='small-title'>Forum Hashtags</h4>";

for(var i=0; i<tag.length; i++){
	table += "		<a href='list.act?tag="+tag[i]+"'><span class='label label-info span-sidebar'>"+tag[i]+"</span></a>";
}
	
	table += "	</div><!-- /.col-sm-4 -->" ;
			
	
	return table;
	
}