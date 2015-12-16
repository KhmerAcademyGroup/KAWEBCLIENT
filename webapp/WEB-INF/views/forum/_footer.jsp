<script src="assets/js/script/footer.js"></script>
<script>
	$(document).ready(function() {
		$.post("getfooter.act", {
		}, function(data) {
			$("#footer").html(getJsonFooter(data));
		});
	});
</script>
<div class="container">
	<div class="row">
		<div id="footer"></div>	
		
			<div class="col-sm-4">
					<div class='fb-like-box' data-href='https://www.facebook.com/KhmerAcademy.Org' data-width='100%' data-height='100%' data-colorscheme='light' data-show-faces='true' data-header='false' data-stream='false' data-show-border='false'></div>
				</div><!-- /.col-sm-4 -->
			</div>
</div>

	
<footer>
		&copy; 2014 <a href="#fakelink">Khmer Academy</a><br />
		Hosted By <a href="http://www.coreit.co.kr/" target="_blank"><img src="../uploads/logo/coreitlogo.jpg" style="width: 50px;"/></a>
</footer>
<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1416160595304905&version=v2.0";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-58585702-1', 'auto');
ga('send', 'pageview');

</script>