/**
 * Author Chheang Vuthea
 * 11 / May / 2015
 */

function getTutorialDetail(data){ 
	if(data.STATUS == false){
		$("#loading").html("<h1>Data not found!</h1>");
		console.log("Data not found");
		return;
	}
	var data= data.RES_DATA;
	var txt="";
	
			
			
			txt+='<div>'
				+ '<h3 class="text-center" style="color: #c32222;">'+ data.title +'</h3>'+
					'<div>'+
						'<hr/> '+							
						
					'</div>'+
					'</div>'+
					'<div> '+ data.description +' </div>';
	
	
	return txt;
}