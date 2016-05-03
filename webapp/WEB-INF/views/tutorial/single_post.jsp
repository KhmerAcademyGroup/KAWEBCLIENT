<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
	</head>
 	<style>
 		.tutorial-list{
 			overflow: hidden;
		    position: relative;
		    text-overflow: ellipsis;
		    white-space: nowrap;
 		}
 		#tutorialdetail{
 			font-size: 16px !important;
 			color: #656d78 !important;
 		}
 	</style>
	<body class="tooltips">
		
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
			
			
			
			<!-- BEGIN TOP NAVBAR -->
			<jsp:include page="../shared/_menu.jsp" />
			<!-- END TOP NAVBAR -->
			<!-- BEGIN SIDEBAR LEFT -->
			
				
		
			
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
			
				<div class="container-fluid the-box">
			
					<!-- left side -->
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 the-box no-border clear-padding">
					
					<div class="col-sm-3">
						<jsp:include page="_sidebar.jsp"></jsp:include>
					</div>
					<!-- Video Demo -->
					<div class="col-sm-9">
						<div id="tutorialdetail">
							
						</div>
						<div>
						<hr/>
							<div style="float: left"> 
								<div class="fb-like" data-href="https://www.facebook.com/KhmerAcademy.Org" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
							</div>
							<div style="float: right">
							 <div class="rw-ui-container"></div>
							</div>
							<div style="clear:both;"></div>
						<hr/>
					</div>
					</div>
					<!-- End Video End -->
					
				
					
					
			</div>
			
					
					
				
				</div><!-- /.container-fluid -->
				
				
				
				<!-- BEGIN FOOTER -->
				<jsp:include page="../shared/_footer.jsp" />
				<!-- END FOOTER -->
				
				
			</div><!-- /.page-content -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->
		
		
		
		<!--
		===========================================================
		END PAGE
		===========================================================
		-->
		
		<!-- Go to www.addthis.com/dashboard to customize your tools -->
		<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5291b47f21c49656" async="async"></script>
		<script>
		var pageContext = "${pageContext.request.contextPath}";
			$(document).ready(function(){
				
				
				$.get("${pageContext.request.contextPath}/tutorial/rest/listtitles/${cid}" ,
						function(data){
							
							$("#listalltutorials").html(getTutorialLists(data));
				});
				
				var dis ="";
				dis += '<center><div id="loading">'+
											'<img class="img-responsive" src="${pageContext.request.contextPath}/resources/assets/img/loading.gif">'+
						'</div></center>';
				$("#tutorialdetail").html(dis);
				
				$.get("${pageContext.request.contextPath}/tutorial/rest/getfirstdetail/${cid}" , 
						function(data){		
							$("#tutorialdetail").html(getTutorialDetail(data));
							rating();
							$("#tutorialdetail img").addClass("img-responsive");
							
				});
				
			});
			</script> 
			<script src="${pageContext.request.contextPath}/resources/assets/js/script/tutorialsingle.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/script/listalltutorials.js"></script>
		
		<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=1416160595304905";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<script>

function rating(){
	
	(function(d, t, e, m){
	    
	    // Async Rating-Widget initialization.
	    window.RW_Async_Init = function(){
	                
	        RW.init({
	            huid: "221456",
	            uid: "0c7735d3de292b0250869c1816826be2",
	            source: "website",
	            options: {
	                "size": "medium",
	                "style": "oxygen"
	            } 
	        });
	        RW.render();
	    };
	        // Append Rating-Widget JavaScript library.
	    var rw, s = d.getElementsByTagName(e)[0], id = "rw-js",
	        l = d.location, ck = "Y" + t.getFullYear() + 
	        "M" + t.getMonth() + "D" + t.getDate(), p = l.protocol,
	        f = ((l.search.indexOf("DBG=") > -1) ? "" : ".min"),
	        a = ("https:" == p ? "secure." + m + "js/" : "js." + m);
	    if (d.getElementById(id)) return;              
	    rw = d.createElement(e);
	    rw.id = id; rw.async = true; rw.type = "text/javascript";
	    rw.src = p + "//" + a + "external" + f + ".js?ck=" + ck;
	    s.parentNode.insertBefore(rw, s);
	    }(document, new Date(), "script", "rating-widget.com/"));
}


</script>
		
		
		
		
		
		
		
		
	</body>
</html>