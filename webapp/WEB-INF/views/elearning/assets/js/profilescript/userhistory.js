$(document).ready(
			function() {
				$.post("historylist.act", {

				}, function(data) { 
					$("#getHistory").html(getJsonHistory(data));
				});

				$("#frmSetNumrowHistory").change(function(){
					$.post("historylist.act" , 
							{ 
								setNumrow : $("#setNumrowHistory").val(),
								
							}, 
								function(data){
								$("#getHistory").html(getJsonHistory(data));
					});
				});
				
				$("#tfsearchHistory").keyup(function(){
					$.post("historylist.act" , 
							{ 
								setNumrow : $("#setNumrowHistory").val(),
								tfsearch : $("#tfsearchHistory").val()
								
							}, 
								function(data){
								$("#getHistory").html(getJsonHistory(data));
					});
				});
			});


var currentpage = "";

function gotohistorypage(url){
	$.get(url+"&setNumrow="+$("#setNumrowHistory").val()
		,function(data){
		$("#getHistory").html(getJsonHistory(data));					
	});
}

function getJsonHistory(data) {
	var json = data.history;
	var pagin = data.pagination; 
	var result = "";
	var history = "<div>"; 
	var pagination = "<div class='row'><div class='col-sm-6'><div class='dataTables_info' id='datatable-example_info'>Page "+ pagin.currentPage +" of "+ data.totalpages +" entries</div></div><div class='col-sm-6'><div class='dataTables_paginate paging_bootstrap'>";
	pagination += "<ul class='pagination separated'>";
	
	currentpage = pagin.currentPage;
	
	if (json.length != 0) {
		for (var i = 0; i < json.length; i++) {

			var  videoname =json[i].videoname;
			if( json[i].videoname.length >80) videoname = json[i].videoname.substring(0, 80) +"..." ;
			
			history += "<div class='the-box no-border store-list'>"
					+ "<div class='media'>"
					+ "<a class='pull-left' href='../elearning/play.act?v="+json[i].videoid+"'>"
					+ "<img alt='image' class='store-image img-responsive' src='https://i.ytimg.com/vi/"+json[i].videourl+"/mqdefault.jpg'></a>"
					+ "<div class='clearfix visible-xs'></div>"
					+ "   <div class='media-body' style='overflow:visible'>"
					+ "       <a href='#fakelink'></a>"

					+ "  <div class='btn-group pull-right'>"
					+ " 	  <button type='button' class='btn btn-default btn-sm dropdown-toggle' data-toggle='dropdown'>"
					+ " <i class='fa fa-cog'></i></span>"
					+ " </button>"
					+ " <ul class='dropdown-menu' role='menu'>"
					+ " <li><a href='../elearning/play.act?v="+json[i].videoid+"'>Play</a></li>"
					+ " <li><a href='#' onclick=deletehistory('deletehistory.act?historyid="+ json[i].historyid +"&page="+ pagin.currentPage +"')>Remove from History</a></li>"
					+ " </ul>"
					+ " </div>"
					+ " <ul class='list-inline'>"
					+ " <li><a href='../elearning/play.act?v="+json[i].videoid+"'><strong class='text-black'>"+videoname+"</strong></a></li>"
							+"</br>"
					+ " <li><a ><span class='small text-muted' style='color:#AAB2BD'> by "+json[i].username+"</span></a></li>"
					+ "</ul>"
					+ "<p class='hidden-xs'> "+json[i].videodescription+"</p>"
					+"<span class='small text-muted' style='color:#AAB2BD'><i class='fa fa-eye'>&nbsp;&nbsp;"+json[i].videoviewcount+"</i>      &nbsp;&nbsp;&nbsp; </span>"
					+ "</div>"
					+ "</div>"
					+ "</div>";
		}

		 history += "</div>";
		 
		 if(data.hasPrevious == true)
				pagination += "<li><a href='#pre="+data.previouspage +"' onclick=gotohistorypage('historylist.act?page="+data.previouspage +"') >Previous</a></li>";
			if(pagin.currentPage != 1)
				pagination += "<li><a href='#page=1' onclick=gotohistorypage('historylist.act?page="+1 +"')>1</a></li>";   
			var pagenum =  0;
			for(var i=pagin.currentPage; i<=data.totalpages; i++){
				if(i==pagin.currentPage){
					pagination += "<li class='active'><a href='#page="+i+"'  onclick=gotohistorypage('historylist.act?page="+i +"')>"+i+"</a></li>";
				}else{
					pagination += "<li><a href='#page="+i+"' onclick=gotohistorypage('historylist.act?page="+ i +"')>"+i+"</a></li>";
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
				pagination += "<li><a href='#next' onclick=gotohistorypage('historylist.act?page="+data.nextpage +"')>Next</a></li>";
			if(data.totalpages!=pagin.currentPage){
				pagination += "<li><a href='#page="+data.totalpages+"' onclick=gotohistorypage('historylist.act?page="+data.totalpages +"')>Last</a></li>";
			}		
					
			pagination += "</div></div></div>";
		
			result = history += pagination;
			
			
			
		}else{
			result = "<div class='alert alert-success fade in alert-dismissable'>"+
				 			"<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button>"+
				 			"<strong>No </strong> historical video "+ 
				 	  "</div>";
			
		}	
		return 	 result;
}

function deletehistory(url){
//	if (confirm("Are you sure you want to remove this video from History?") == true) {
				$.get(url+"&setNumrow="+$("#setNumrowHistory").val()
				,function(data){
					$.post("historylist.act" , 
					{ 
						setNumrow : $("#setNumrowHistory").val(),
						page : currentpage
					}, 
						function(data){
						$("#getHistory").html(getJsonHistory(data));
					});	
			});
//	}
	
}
function deleteallhistory(url){
//	if (confirm("Are you sure you want to remove all historical videos  ?") == true) {
				$.get(url
				,function(data){
					$.post("historylist.act" , 
					{ 
						setNumrow : $("#setNumrowHistory").val()
					}, 
						function(data){
						$("#getHistory").html(getJsonHistory(data));
					});	
			});
//	}
	
}