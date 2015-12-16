function getQestion(data){
	var tb = "";
	var q = data.q;
	
	if(q.length != 0){
		for(i=0;i<q.length;i++){
			tb += "<tr>" +
					"<td class='expand footable-first-column'><span class='footable-toggle'></span>" +
					"<span class='pull-left' style='color: #434a54; background-color: #ededed; padding: 1%; margin-right: 1%;'>" +
					"<span><strong>"+q[i].vote+"</strong></span> <br>   <span style='font-size: 12px;'>Votes</span>" +
					"</span>" +
					"<i title='No unread posts' class='row-icon-font-mini '></i>" +
					"<span class='desc-wrapper'>" +
					"<a style='color: #428bca;' href='question.act?q="+q[i].commentid+"' data-original-title='' title=''> "+ q[i].title +" </a>" +
					"<br>" +
					"<i data-original-title='Attachment(s)' data-placement='top' rel='tooltip' class='fa fa-paperclip fa-flip-horizontal'></i>" +
					"<span class='label label-info span-sidebar'>"+ q[i].tag+"</span> " +
					"</span>" +
					"</td>" +
					"<td class='vu-table-td '>" +
					"<span class='stats-wrapper'>" +
					q[i].commentcount+" Replies " +
					" </span>" +
					"</td>" +
					"<td class='vu-table-td footable-last-column'>" +
					"<span class='last-wrapper'>" +
					"by <a class='username-coloured'  style='color: #AA0000;' href='list.act?uid="+ q[i].userid +"' data-original-title='' title=''>"+ q[i].username + "</a>" +
					"<br><small> "+ q[i].postdate +" </small>" +
					"</span>" +
					"</td>" +
					"</tr>";
			
		
		}
	}
	return tb;
}