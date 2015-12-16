<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- <div class="sidebar-left sidebar-nicescroller light-color">
				
				<ul class="sidebar-menu">
					
					<li class="static"><h4 class="small-title">Categories</h4></li>
					
					<li>
						<a href="#fakelink">
							
							<i class="fa fa-angle-right chevron-icon-sidebar"></i>
							Web Developement
							<span class="badge badge-warning span-sidebar">3</span>
							</a>
						<ul class="submenu">
							<li><a href="#fakelink">JSP<span class="label label-success span-sidebar">CURRENT</span></a></li>
							<li><a href="#">HTML</a></li>
							<li><a href="#">CSS</a></li>
						</ul>
					</li>
					
					
					
					
					
				</ul>
			</div> --> <!-- /.sidebar-left -->
<script src="assets/js/script/listallcategories.js"></script>
<script>
		$(document).ready(function() {
			$.post("list_all_categories.act", {
			}, function(data) {
				$("#allcategories").html(getJsonAllCategories(data));
			});
			
			
		});
</script>			
<div class="sidebar-left sidebar-nicescroller light-color" style="padding-top: 10px;">
	<div class="col-sm-12">
		<div id="allcategories">
		</div>
	</div>
</div>