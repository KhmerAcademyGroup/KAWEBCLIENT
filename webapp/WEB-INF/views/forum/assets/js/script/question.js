// Question
var parentid=0;
var catid=0;var taganswer="";
function getQuestion(data){
	
	var question = data.question;
	
	var table ="";
	parentid= question.commentid;
	catid= question.categoryid;
	taganswer = question.tag.split(", ");
	
	table += "<div class='col-sm-12 '  >" +
	"	<div class='col-sm-12'>" +
	"		<h3 id='txttitle'>"+question.title+"</h3>" +
	"		<hr class='hr-style-one'/>" +
	
	"	</div>" +
	"</div>";

	table += 
		
		"	<div class='col-sm-1'>" +
		"		<img src='../uploads/"+question.userimageurl+"' class='avatar img-circle img-responsive center' alt='Avatar'>" +
		/*"		<ol class='align-center' style='list-style:none;padding-left:0px;'>" +
		"			<li>"+question.username+"</li>" +
		"		</ol>" +*/
		
		"	</div>" +
		"<div class='col-sm-10'>"+
		"<div class='col-sm-3'>"+
		"		<span class='small'>By "+question.username+"</span><br/>" +
		"		<span class='small text-muted'>"+question.postdate+"</span>" +
		"</div>"+
		"</div>"+
		"<div class='col-sm-12' style='margin:20px 0px'>" +
	/*"	<div class='col-sm-2'>" +
	"		<img src='../uploads/"+question.userimageurl+"' class='avatar img-circle img-responsive center' alt='Avatar'>" +
	"		<ol class='align-center' style='list-style:none;padding-left:0px;'>" +
	"			<li>"+question.username+"</li>" +
	"		</ol>" +
	"	</div>" +*/
		"<div class='col-sm-1 vote-comment'>"+
		"		<ol class='align-center' style='list-style:none;padding-left:0px;'>" +
		"			<li><a href='#' onclick='forumvotequestion()'><i style='padding:0px 10px;  color: #3BAFDA;' class='fa fa-thumbs-up fa-2x'></i></a></li>" +
		"			<li><h4>"+ question.vote+"</small></h4>" +
		"			<li><a href='#' onclick='forumunvotequestion()'><i style='padding:0px 10px;  color: #3BAFDA;' class='fa fa-thumbs-down fa-2x'></i></a></li>" +
		"		</ol>" +
		"</div>"+
	"	<div class='col-sm-11'>" +
	/*"		<img src='assets/img/topic_arrow.png' class='topic-arrow'>" +*/
	"		<div class='topic-box box-shadow' style='margin-bottom:10px'>" +
				question.detail +
	"		</div>" ;
	for(var v=0; v<taganswer.length; v++){
		table+= "<a href='list.act?tag="+taganswer[v]+"' style='padding-right: 2px;'><span class='label label-info span-sidebar' >"+taganswer[v] +" </span></a>";
	}
	
	table+= "	</div>" +
	"</div>";
	
	
	return table;
}

// Answer
function getAnswer(data , usrid){
	
	
	
	var question = data.question;
	var comments = data.comment;
	var pagin = data.pagination;
	var pagination = "<div class='row'><div class='col-sm-6'></div><div class='col-sm-6'><div class='dataTables_paginate paging_bootstrap'>";
	pagination += "<ul class='pagination separated'>";
	
	var table = "";
	
	// alert(question.userid +"  "+usrid);
	 
	 
	table += "<div class='col-sm-12 topic' style='margin-bottom:20px' id='me'>" ;
	
	table+= "	<div class='col-sm-12'>" +

	"		<h3>Answer</h3>" +
	"		<hr class='hr-style-one'/>" +
	"	</div>" ;
	
	
	table+= "</div>";
for(var i=0; i<comments.length; i++){
	
	var tick = "";
	if(question.userid == usrid){
		tick = "<i style='color: #E0E0E0;cursor:pointer ' id='hover"+i+"' title='Do you want to select this answer?' onclick=selectAnswer('selectanswer.act?cid="+comments[i].commentid+"&pid="+parentid+"') onmouseout=outTick('hover"+i+"')  onmouseover=hoverTick('hover"+i+"')  class='fa fa-check fa-2x'></i>";
	}
	if(comments[i].selected == true){
		tick = "<i title='Selected Answer'  style='color: #50a253;' class='fa fa-check fa-2x'></i>";
	}
	
	table += "<div class='col-sm-12' style='margin-bottom:30px'>" +
			"<div class='col-sm-1 vote-comment'>"+
			"		<ol class='align-center' style='list-style:none;padding-left:0px;'>" +
			"			<li><a href='#' onclick='forumvoteanswer("+comments[i].commentid +")'><i style='padding:0px 10px;  color: #3BAFDA;' class='fa fa-thumbs-up fa-2x'></i></a></li>" +
			"			<li><h4>"+comments[i].vote+"</small></h4>" +
			"			<li><a href='#' onclick='forumunvoteanswer("+comments[i].commentid +")'><i style='padding:0px 10px;  color: #3BAFDA;' class='fa fa-thumbs-down fa-2x'></i></a></li>"+
			tick+
	        "		</ol>" +
			"</div>"+
			"	<div class='col-sm-1'>" +
			"		<img src='../uploads/"+comments[i].userimageurl+"' class='avatar img-circle img-responsive center' alt='Avatar'>" +
			"		<ol class='align-center' style='list-style:none;padding-left:0px;'>" +
			"			<li>"+comments[i].username+"</li>" +
			"			<li><small class='text-muted'>"+comments[i].postdate+"</small></li>" +
			"		</ol>" +
			"	</div>" +
			"	<div class='col-sm-10'>" +
			/*"		<img src='assets/img/topic_arrow.png' class='topic-arrow'>" +*/
			"		<div>" +
						comments[i].detail +
			"		</div>" +
			
			"<hr class='hr-style-one'/>"+
			
			"	</div>" +
			
			"</div>"
			 ;
}			
	

		
		if(data.hasPrevious == true)
			pagination += "<li><a href='#me' onclick=gotopage('getquestion.act?page="+data.previouspage +"&q="+question.commentid+"') >Previous</a></li>";
		if(pagin.currentPage != 1)
			pagination += "<li><a href='#me' onclick=gotopage('getquestion.act?page="+1 +"&q="+question.commentid+"')>1</a></li>";   
		var pagenum =  0;
		for(var i=pagin.currentPage; i<=data.totalpages; i++){
			if(i==pagin.currentPage){
				pagination += "<li class='active'><a href='#me'  onclick=gotopage('getquestion.act?page="+i +"&q="+question.commentid+"')>"+i+"</a></li>";
			}else{
				pagination += "<li><a href='#me' onclick=gotopage('getquestion.act?page="+ i +"&q="+question.commentid+"')>"+i+"</a></li>";
			}
			if(pagin.currentPage==1){
				if(i>=pagin.currentPage+4 ){
					break;
				}
			}else{
				if(i>=pagin.currentPage+4 ){
					break;
				}	
			}
		}
		if(data.hasNext == true)
			pagination += "<li><a href='#me' onclick=gotopage('getquestion.act?page="+data.nextpage +"&q="+question.commentid+"')>Next</a></li>";
		if(data.totalpages!=pagin.currentPage){
			pagination += "<li><a href='#me' onclick=gotopage('getquestion.act?page="+data.totalpages +"&q="+question.commentid+"')>Last</a></li>";
		}		
				
		pagination += "</div></div></div>";
		
		table += pagination;
//	table += "<div class='col-sm-offset-1 col-sm-11'>" +
//			"	<ul class='pagination separated pull-right'>" +
//			"		<li class='disabled'><a href='#fakelink'>�</a></li>" +
//			"		<li class='active'><a href='#fakelink'>1</a></li>" +
//			"		<li><a href='#fakelink'>2</a></li>" +
//			"		<li><a href='#fakelink'>3</a></li>" +
//			"		<li><a href='#fakelink'>...</a></li>" +
//			"		<li><a href='#fakelink'>�</a></li>" +
//			"	</ul>" +
//			"</div>";
	
	return table;
}


function gotopage(url){
	$.get(url
		,function(data){
		$("#getQuestion").html(getQuestion(data));
		$("#getAnswer").html(getAnswer(data,usrid));
	});
}


function forumvotequestion(){
	$.post('votequestion.act', {
		c : parentid, 
		type : 1
	},function(data){
		
		$.post('getquestion.act?q='+ parentid +'', {	
		}, function(data) {
			
			$("#getQuestion").html(getQuestion(data));
			$("#getAnswer").html(getAnswer(data,usrid));
		});
	});
}
function forumunvotequestion(){
	$.post('votequestion.act', {
		c : parentid, 
		type : -1
	},function(data){
		$.post('getquestion.act?q='+ parentid +'', {	
		}, function(data) {			
			$("#getQuestion").html(getQuestion(data));
			$("#getAnswer").html(getAnswer(data));
		});		
	});
}

function forumvoteanswer(answerid){
	$.post('votequestion.act', {
		c : answerid, 
		type : 1
	},function(data){
		
		$.post('getquestion.act?q='+ parentid +'', {	
		}, function(data) {
			
			$("#getQuestion").html(getQuestion(data));
			$("#getAnswer").html(getAnswer(data));
		});
	});
}
function forumunvoteanswer(answerid){
	$.post('votequestion.act', {
		c : answerid, 
		type : -1
	},function(data){
		$.post('getquestion.act?q='+ parentid +'', {	
		}, function(data) {			
			$("#getQuestion").html(getQuestion(data));
			$("#getAnswer").html(getAnswer(data));
		});		
	});
}

function hoverTick($id){
	$("#"+$id).css("color","#50a253");
}

function outTick($id){
	$("#"+$id).css("color","#E0E0E0");
}

function selectAnswer(url){
	//alert(url);
	$.post(url ,function(data){
//		alert(data);
		window.location.reload();
	});
}
