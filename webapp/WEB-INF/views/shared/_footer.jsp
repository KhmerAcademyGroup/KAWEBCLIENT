<!-- BEGIN FOOTER -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-4">
				<h4>ABOUT SENTIR AGENCY</h4>
				<p>
				Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed 
				diam nonummy nibh euismod tincidunt ut laoreet dolore 
				magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
				quis nostrud exerci tation ullamcorper suscipit lobortis 
				</p>
				<p>
					<a href="#fakelink"><i data-toggle="tooltip" title="Facebook" class="fa fa-facebook icon-sm icon-rounded icon-social-footer icon-facebook"></i></a>
					<a href="#fakelink"><i data-toggle="tooltip" title="Twitter" class="fa fa-twitter icon-sm icon-rounded icon-social-footer icon-twitter"></i></a>
					<a href="#fakelink"><i data-toggle="tooltip" title="Google plus" class="fa fa-google-plus icon-sm icon-rounded icon-social-footer icon-google-plus"></i></a>
					<a href="#fakelink"><i data-toggle="tooltip" title="Dribbble" class="fa fa-dribbble icon-sm icon-rounded icon-social-footer icon-dribbble"></i></a>
					<a href="#fakelink"><i data-toggle="tooltip" title="Pinterest" class="fa fa-pinterest icon-sm icon-rounded icon-social-footer icon-pinterest"></i></a>
					<a href="#fakelink"><i data-toggle="tooltip" title="Github" class="fa fa-github icon-sm icon-rounded icon-social-footer icon-github"></i></a>
				</p>
			</div><!-- /.col-sm-4 -->
			<div class="col-sm-6 col-md-3">
				<h4>CONTACT</h4>
				<div class="media media-contact">
				  <span class="pull-left">
					<i class="fa fa-map-marker media-object"></i>
				  </span>
				  <div class="media-body">
					<address>
					  Twitter, Inc.<br>
					  795 Folsom Ave, Suite 600<br>
					  San Francisco, CA 94107<br>
					  <abbr title="Phone">P:</abbr> (123) 456-7890
					</address>
				  </div><!-- /.media-body -->
				</div><!-- /.media -->
				<div class="media media-contact">
				  <span class="pull-left">
					<i class="fa fa-envelope media-object"></i>
				  </span>
				  <div class="media-body">
					<address>
					  Full Name<br>
					  <a href="mailto:#">first.last@example.com</a>
					</address>
				  </div><!-- /.media-body -->
				</div><!-- /.media -->
			</div><!-- /.col-sm-3 -->
			<div class="clearfix visible-sm"></div>
			<div class="col-sm-6 col-md-2">
				<h4>NAVIGATION</h4>
				<ul class="list">
					<li><a href="index.html">Home</a></li>
					<li><a href="index.html">About us</a></li>
					<li><a href="index.html">Our services</a></li>
					<li><a href="index.html">Portfolio</a></li>
					<li><a href="index.html">Pricing</a></li>
					<li><a href="index.html">Blog</a></li>
				</ul>
			</div><!-- /.col-sm-2 -->
			<div class="col-sm-6 col-md-3">
				<h4>SIGN UP NEWSLETTER</h4>
				<p>
				Laritas est etiam processus dynamicus, qui
				sequitur mutationem consuetudium
				lectorum. Mirum est notare quam littera.
				</p>
				<form role="form">
					<div class="input-group subscribe">
					  <input type="text" class="form-control" placeholder="Enter email address">
					  <span class="input-group-btn">
						<button class="btn btn-info" type="button"><i class="fa fa-chevron-right"></i></button>
					  </span>
					</div><!-- /input-group -->
				</form>
			</div><!-- /.col-sm-3 -->
		</div><!-- /.row -->
	</div><!-- /.container -->
</footer><!-- /.section -->

<div class="footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				Copyright &copy; 2014 <a href="#fakelink">Your company</a>
			</div><!-- /.col-sm-5 -->
			<div class="col-sm-7 text-right">
				<ul class="list-inline">
				  <li><a href="#fakelink">Terms and condition</a></li>
				  <li><a href="#fakelink">Privacy policy</a></li>
				  <li><a href="#fakelink">FAQ</a></li>
				</ul>
			</div><!-- /.col-sm-7 -->
		</div><!-- /.row -->
	</div><!-- /.container -->
</div><!-- /.footer -->
<!-- END FOOTER -->



<!-- BEGIN BACK TO TOP BUTTON -->
<div id="back-top">
	<i class="fa fa-chevron-up"></i>
</div>
<!-- END BACK TO TOP -->

<!--
===========================================================
END PAGE
===========================================================
-->



<!--
===========================================================
Placed at the end of the document so the pages load faster
===========================================================
-->
<!-- MAIN JAVASRCIPT (REQUIRED ALL PAGE)-->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/retina/retina.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/plugins/mixitup/jquery.mixitup.js"></script>
<script>
	$(document).ready(function(){
		$(function(){
		 var shrinkHeader = 250;
		  $(window).scroll(function() {
			var scroll = getCurrentScroll();
			  if ( scroll >= shrinkHeader ) {
				   $('.top-navbar').addClass('shrink-nav');
				   $('.top-navbar').addClass('dark-color');
				}
				else {
				   $('.top-navbar').removeClass('shrink-nav');
				   $('.top-navbar').removeClass('dark-color');
				}
		  });
			function getCurrentScroll() {
				return window.pageYOffset || document.documentElement.scrollTop;
			}
		});
	})
</script>
<script src="${pageContext.request.contextPath}/resources/assets/js/apps.js"></script>

<!-- BPOP UP -->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bpopup.min.js"></script>

<script type="text/javascript">
            /* ==============================================
            Counter Up
            =============================================== */
            $(document).ready(function(){
               
                $("#login").click(function(){
                
                	
                	alert(11);
                	
                	$("#frmLogin").bPopup(/* {modalClose: false} */);
                	/* 
                	$.ajax({ 
       				    url: "${pageContext.request.contextPath}/admin/sell/"+id, 
       				    type: 'POST', 
       				    dataType: 'JSON', 
       					
       				    //data: JSON.stringify(json), 
       				    beforeSend: function(xhr) {
       	                    xhr.setRequestHeader("Accept", "application/json");
       	                    xhr.setRequestHeader("Content-Type", "application/json");
       	                },
       	                
       				    success: function(data) { 
       				        console.log(data.length);
       				        var str = "";
       				        for(i = 0; i < data.length; i++){
       				        	str += "<tr>"
								str += "<td>" + data[i].productName + "</td>"
								str += "<td>" + data[i].SalePrice + "</td>"
								str += "<td>" + data[i].ProQty + "</td>"
								str += "<td>" + data[i].ProUnitPrrice + "</td>"	
								str += "<td>" + data[i].orderDate + "</td>"	
								str += "<td>" + data[i].ProComment + "</td>"	
								str += "</tr>"
								$("#orderProdetail").html(str);
       				        }
       				    },
       				    error:function(data,status,er) { 
       				        console.log("error: "+data+" status: "+status+" er:"+er);
       				    }
       				}); */
                	
                })
                
            });
            
            
        </script>