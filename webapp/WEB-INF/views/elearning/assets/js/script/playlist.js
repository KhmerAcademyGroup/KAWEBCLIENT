$(document).ready(function(){
	$.post("playlistname.act" ,{ }, function(data){
		 $("#getmoreli").replaceWith(getPlaylistname(data));
		 checkifexist(data);
	});
	$('#btclosefrmupdate').click(function(){
		 $.magnificPopup.close();
	});
	$("#frmcreateplaylist").submit(function(){
		event.preventDefault();
		if($("#playlistname").val().trim() == ""){
			$(".msg").css("display","block");
		}else{
			$.post('createplaylist.act',{
				playlistname : $("#playlistname").val() ,
				description : $("#description").val() ,
				publicview : $("#publicview").val()
			},function(data){
				 location.reload();
//				$.post("playlistname.act" ,{ }, function(data){
//					 $("#getmoreli").replaceWith(getPlaylistname(data));
//				});
				 $.magnificPopup.close();
			});
		}
		
	});
});

function checkifexist(data){
 	var vid = getUrlVars()["v"];
 	var listname = data.playlistname;
	var detail = data.listdetail; 
	if(listname.length != 0){
		for(var i=0;i<listname.length;i++){ 
			if(detail.length != 0){
				for(j=0;j<detail.length;j++){
					if(vid == detail[j].videoid && listname[i].playlistid == detail[j].playlistid){
						$("#chk"+i).prop("checked",true);
					}
				}
			}
					   
			
		}
	}
}


function getPlaylistname(data){
	var vid = getUrlVars()["v"];
	var 
	li = "";
	var listname = data.playlistname;
	var detail = data.listdetail; 
	if(listname.length != 0){
		for(var i=0;i<listname.length;i++){ 
			var icon = "fa fa-globe";
			if(listname[i].publicview == false) icon = "fa fa-lock";
			
			var playlistname =   listname[i].playlistname;
			if(playlistname.length > 12) playlistname = playlistname.substring(0, 12) +"..." ;
			else playlistname = playlistname.substring(0, 12) ;
		
			li += "<div class='checkbox'>" +
				  "		<input id='chk"+i+"' type='checkbox' onclick=addToPlst('chk"+i+"',"+listname[i].playlistid +","+vid+") name='acceptTerms' data-bv-field='acceptTerms'><i class='form-control-feedback' data-bv-field='acceptTerms' style='display: none; top: 0px;'></i>  "+ playlistname +" <i class='"+icon+"' style='float:right'></i>"+
				  "</div>";
			
//			if(detail.length != 0){
//				for(j=0;j<detail.length;j++){
//					if(vid == detail[j].videoid && listname[i].playlistid == detail[j].playlistid){
//						alert(listname[i].playlistid  + "Has" + detail[j].videoid);
//						li += "<div class='checkbox'>" +
//						  "		<input id='chk"+i+"' type='checkbox' checked onclick=addToPlst('chk"+i+"',"+listname[i].playlistid +","+vid+") name='acceptTerms' data-bv-field='acceptTerms'><i class='form-control-feedback' data-bv-field='acceptTerms' style='display: none; top: 0px;'></i>  "+ playlistname +" <i class='"+icon+"' style='float:right'></i>"+
//						  "</div>";
//					}else{
//						alert("No");
//						li += "<div class='checkbox'>" +
//						  "		<input id='chk"+i+"' type='checkbox' onclick=addToPlst('chk"+i+"',"+listname[i].playlistid +","+vid+") name='acceptTerms' data-bv-field='acceptTerms'><i class='form-control-feedback' data-bv-field='acceptTerms' style='display: none; top: 0px;'></i>  "+ playlistname +" <i class='"+icon+"' style='float:right'></i>"+
//						  "</div>";
//					}
//				}
//			}
			
			
//			if(vid == detail[i].videoid){
//				for(j=0;j<detail.length;j++){
//					if( listname[i].playlistid == detail[j].playlistid){
//						alert( vid +" & "+detail[j].videoid  +" | "+ listname[i].playlistid +" & "+ detail[j].playlistid   );
//					}
//				}
//			}
			
//			if(vid == detail[i].videoid && listname[i].playlistid == detail.playlistid ){
//				li += "<div class='checkbox'>" +
//				  "		<input id='chk"+i+"' type='checkbox' checked onclick=addToPlst('chk"+i+"',"+listname[i].playlistid +","+vid+") name='acceptTerms' data-bv-field='acceptTerms'><i class='form-control-feedback' data-bv-field='acceptTerms' style='display: none; top: 0px;'></i>  "+ playlistname +" <i class='"+icon+"' style='float:right'></i>"+
//				  "</div>";
//				alert(vid + " & "  + detail[i].videoid  +" | "+ listname[i].playlistid +" & "+ detail[i].playlistid  );
//			}else{
//				li += "<div class='checkbox'>" +
//				  "		<input id='chk"+i+"' type='checkbox' onclick=addToPlst('chk"+i+"',"+listname[i].playlistid +","+vid+") name='acceptTerms' data-bv-field='acceptTerms'><i class='form-control-feedback' data-bv-field='acceptTerms' style='display: none; top: 0px;'></i>  "+ playlistname +" <i class='"+icon+"' style='float:right'></i>"+
//				  "</div>";
//				alert(vid + " & "  + detail[i].videoid  +" | "+ listname[i].playlistid +" & "+ detail[i].playlistid  );
//			}
			
		//	li += "<li><input type='checkbox'><a href='#' onclick=addToPlst('addvideotoplaylist.act?pid="+data[i].playlistid+"')>"+ playlistname +"<i class='"+icon+"' style='float:right'></i></a></li>";
		}
	}
	
	
	
//	if(detail.length != 0){
//		for(var i=0;i<detail.length;i++){
//			if(detail[i].videoid = vid){
//				$("#chk"+i).attr('checked', 'checked');
//			}
//		}
//	}
	
	li+= "<li class='divider'></li>";
	li += "<li><a href='#'  onclick=popupfrmadd()>Create new playlist</a></li>";
	return li;
}


function addToPlst($id,$playlistid,$vid){
//	alert($id + " & " + $playlistid + " & " + $vid);
	if ($("#"+$id).is(":checked")){
		$.post("addvideotoplaylist.act?pid="+$playlistid+"&vid="+$vid);
	}
	else{
		$.post("deletevideofromplaylist.act?playlistid="+$playlistid+"&vid="+$vid);
	}
	
	
}

function popupfrmadd(){
	$.magnificPopup.open({
        type: 'inline',
        items: {src: '#form-add-playlist'},
        preloader: false,
        modal: true,
        delegate: 'a',
		  removalDelay: 500, //delay removal by X to allow out-animation
		  midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
		});
}


//Read a page's GET URL variables and return them as an associative array.
function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}