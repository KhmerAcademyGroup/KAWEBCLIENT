function checkifexist(data, vid){
 	var listname = data.USERPLAYLIST;
	var detail = data.PLAYLISTDETAIL; 
	if(listname.length != 0){
		for(var i=0;i<listname.length;i++){ 
			if(detail.length != 0){
				for(j=0;j<detail.length;j++){
					if(vid == detail[j].videoId && listname[i].playlistId == detail[j].playlistId){
						$("#chk"+i).prop("checked",true);
					}
				}
			}
		}
	}
}

function getPlaylistname(data, vid){
	var li = "";
	var listname = data.USERPLAYLIST;
	var detail = data.PLAYLISTDETAIL;
	//alert(listname[0].playlistId);
	if(listname.length != 0){
		for(var i=0;i<listname.length;i++){ 
			var pid = listname[i].playlistId;
			var icon = "fa fa-globe";
			if(listname[i].publicView == false) icon = "fa fa-lock";
			
			var playlistname =   listname[i].playlistName;
			
			if(playlistname.length > 12) playlistname = playlistname.substring(0, 12) +"..." ;
			
			else playlistname = playlistname.substring(0, 12) ;
			
			li += "<div class='checkbox'>" +
				  "		<input id='chk"+i+"' type='checkbox' onclick=addToPlst('chk" + i + "','" + pid+ "','" + vid +"') name='acceptTerms' data-bv-field='acceptTerms'><i class='form-control-feedback' data-bv-field='acceptTerms' style='display: none; top: 0px;'></i>  "+ playlistname +" <i class='"+icon+"' style='float:right'></i>"+
				  "</div>";
			
		}
	}
	
	
//	li+= "<li class='divider'></li>";
//	li += "<li><a href='#' onclick=popupfrmadd()>Create new playlist</a></li>";
	return li;
}


function addToPlst(id,playlistid,vid){
	if ($("#"+id).is(":checked")){
		$.post(URL+"/rest/elearning/playlist/addvideotoplaylistdetail?pid="+playlistid+"&vid="+vid);
	}
	else{
		$.post(URL+"/rest/elearning/playlist/deletevideofromplaylistdetail?pid="+playlistid+"&vid="+vid);
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
