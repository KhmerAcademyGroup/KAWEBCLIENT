function getJsonDashboard(data){
	var category = data.category;
	var question = data.question;
	
	
	var table = "<div class='row'>" +
				"	<div>" +
				"		<div class='panel panel-forum panel-primary'>" +
				"			<div class='panel-heading info'>" +
				"				<i class='fa fa-group'></i> Categories" +
				"			</div>" +
				"			<div class='panel-body'>" +
				"				<div class='row'>";
for(var i=0; i<category.length; i++){
	table += "						<div class=' col-sm-3'>" +
			"							<a class='list-group-item' href='list.act?cateid="+category[i].category_id+"'>"+category[i].category_name+"  <span class='badge badge-danger'>"+category[i].comment_count+"</span></a>" +
			"						</div>";
}
		
	table += "					</div>" +
			"				</div><!-- /.panel-body -->" +
			"			</div><!-- /.panel panel-default panel-block-color -->" +
			"		</div><!-- /.col-sm-4 -->" +
			"	</div>" +
			
			"	<!-- start content -->" +
			"	<div class='row'>" +
			"		<div id='content-forum'>" +
			"			<div id='page-body'>" +
			"				<main role='main'>" +
			"					<div class='panel panel-forum panel-info'>" +
			"						<div class='panel-heading success'><i class='fa fa-group'></i> Lastest Topics</div>" +
			"						<div class='panel-inner'>" +
			"							<table class='footable table table-striped table-primary table-hover default footable-loaded'>" +
			"								<tbody>";
	
for(var i=0; i<question.length; i++){
	table += "									<tr>" +
			"										<td class='expand footable-first-column'>" +
			"											<span class='footable-toggle'></span>" +
			"											<span class='pull-left' style='color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;'>" +
			"												<span><strong>"+question[i].vote+"</strong></span> <br/>   <span style='font-size: 12px;'>Votes</span>" +
			"											</span>" +
			"											<i title='No unread posts' class='row-icon-font-mini '></i>" +
			"											<span class='desc-wrapper'>" +
			"												<a style='color: #428bca;' href='question.act?q="+question[i].commentid+"' data-original-title='' title=''> "+question[i].title+"</a>" +
			"												<br>" +
			"												<i data-original-title='Attachment(s)' data-placement='top' rel='tooltip' class='fa fa-paperclip fa-flip-horizontal'></i>";
	var t=question[i].tag.split(", ");
	for(var j=0; j<t.length; j++){
	 table += "												<a href='list.act?tag="+t[j]+"'><span class='label label-info span-sidebar'>"+t[j]+"</span></a>";
	}
	table += "											</span>" +
			"										</td>" +
			"										<td class='vu-table-td '>" +
			"											<span class='stats-wrapper'>" +
			"												"+question[i].commentcount+" Replies" +
			"											</span>" +
			"										</td>" +
			"										<td class='vu-table-td footable-last-column'  >" +
			"											<span class='last-wrapper'> by " +
			"												<a class='username-coloured' style='color: #AA0000;' href='list.act?uid="+question[i].userid+"' data-original-title='' title=''>"+question[i].username+"</a>" +
			"												<br>" +
			"												<small>"+question[i].postdate+"</small>" +
			"											</span>" +
			"										</td>" +
			"									</tr>";
}

	table += "								</tbody>" +
												"<tfoot>	"+											
												"<tr id='divbtload'>"+
													"<td colspan=3>"+
														"<a name='btmore' class='btn btn-primary btn-perspective' href='list.act'> All Questions </a>"+
													"</td>"+
												"</tr>"+
											"</tfoot>"+
	
			"							</table>" +
			"						</div>" +
			"					</div>" +
			"				</main>" +
			"			</div> <!-- page-body id in header -->" +
			"		</div> <!-- content-forum in header -->" +
			"	</div>	" +
			"	<!-- Static footer -->";
	
	return table;
}