$(document).ready(function(){
				var screenwidth = window.innerWidth;
				if(screenwidth >= 992){
					$(".top-navbar").addClass("toggle");
					$(".sidebar-left").addClass("toggle");
					$(".page-content").addClass("toggle");
				}else{
					$(".top-navbar").removeClass("toggle");
					$(".sidebar-left").removeClass("toggle");
					$(".page-content").removeClass("toggle");
				}
			});