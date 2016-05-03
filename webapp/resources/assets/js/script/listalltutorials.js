/**
 * Author chheang vuthea
 * 11 /05/2015
 */

function getTutorialLists(data){ 
	var data = data.RES_DATA;
	$("title").text(data[0].categoryName + " | Tutorials");
	var txt="";
	
		txt+= '<div class="panel panel-primary panel-block-color">'+
						 ' <div class="panel-heading"> '+
							'<h3 class="panel-title">'+
							 data[0].categoryName	+
							'</h3>'+
						  '</div>'+
						 '<div class="panel-body">'+
						  	'<div class="list-group success square no-side-border">';
						  		for(var i=0; i<data.length; i++){
						  				txt+= '<a onclick="linktocontent(\''+ data[i].tutorialId +'\')" href="#" class="list-group-item tutorial-list">	<span>'+ i +'. </span><span>'+ data[i].title +'</span>	</a>';
								}
						  	txt+= '</div>	'+						
						  '</div>'+
						
				'</div>';
	
	return txt;
}

function linktocontent(id){
	var dis ="";
	dis += '<center><div>'+
								'<img class="img-responsive" src="'+ pageContext +'/resources/uploads/thumnail/loading2.gif"/>'+
			'</div></center>';
	$("#tutorialdetail").html(dis);
	
	$.get(pageContext+ "/tutorial/rest/getdetail/"+ id , 
			function(data){		
				$("#tutorialdetail").html(getTutorialDetail(data));
				$("#tutorialdetail img").addClass("img-responsive");
				
	});
}