/**
 * Author Chheang Vuthea
 * 11 / May / 2015
 */

function getTutorialDetail(data){
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