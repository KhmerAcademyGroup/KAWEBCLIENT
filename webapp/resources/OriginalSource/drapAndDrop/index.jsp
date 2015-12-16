<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Papermashup.com | JQuery Drag and Drop Demo</title>
<link href="../style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.js"></script>
<style>
ul {
	padding:0px;
	margin: 0px;
}
#response {
	padding:10px;
	background-color:#9F9;
	border:2px solid #396;
	margin-bottom:20px;
}
#list li {
	margin: 0 0 3px;
	padding:8px;
	background-color:#333;
	color:#fff;
	list-style: none;
}
</style>
<script type="text/javascript">
$(document).ready(function(){ 	
	  function slideout(){
  setTimeout(function(){
  $("#response").slideUp("slow", function () {
      });
    
}, 2000);}
	
    $("#response").hide();
	$(function() {
	$("#list ul").sortable({ opacity: 0.8, cursor: 'move', update: function() {
			
			var order = $(this).sortable("serialize") + '&update=update'; 
			$.post("updateList.php", order, function(theResponse){
				$("#response").html(theResponse);
				$("#response").slideDown('slow');
				slideout();
			}); 															 
		}								  
		});
	});

});	
</script>
</head>
<body>
<div id="header"><a href="http://www.papermashup.com/"><img src="../images/logo.png" width="348" height="63" border="0" /></a></div>
<div id="container">
  <div id="list">

    <div id="response" style="display: none;">All saved! refresh the page to see the changes</div>
    <ul class="ui-sortable">
            
            <li id="arrayorder_2" class="" style="opacity: 1; z-index: 0;">2 Take the dog for a walk        <div class="clear"></div>
      </li><li id="arrayorder_1" class="" style="opacity: 1; z-index: 0;">1 Go Shopping        <div class="clear"></div>
      </li>
            
            <li id="arrayorder_4" class="" style="opacity: 1; z-index: 0;">4 Go to the Gym        <div class="clear"></div>
      </li>
            <li id="arrayorder_7" class="" style="opacity: 1; z-index: 0;">7 Take the kids to school        <div class="clear"></div>
      </li><li id="arrayorder_3" class="" style="opacity: 1; z-index: 0;">3 Go swimming        <div class="clear"></div>
      </li><li id="arrayorder_5" class="" style="opacity: 1; z-index: 0;">5 Pick up the wife from work        <div class="clear"></div>
      </li><li id="arrayorder_6" class="" style="opacity: 1; z-index: 0;">6 Wash the car        <div class="clear"></div>
      </li>
            
            
          </ul>
  </div>
</div>
<div id="footer"><a href="http://www.papermashup.com">papermashup.com</a> | <a href="http://papermashup.com/drag-drop-with-php-jquery/">Back to tutorial</a></div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-7025232-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>
