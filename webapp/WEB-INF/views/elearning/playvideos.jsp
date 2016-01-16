<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
  		<link href="${pageContext.request.contextPath}/resources/assets/css/simple-sidebar.css" rel="stylesheet" />
	</head>
	<body>
	
		<jsp:include page="../shared/_menu.jsp" />
		
		<button class="btn btn-default" id="menu-toggle"><i class="fa fa-cog fa-spin"></i></button>
		
		<div id="wrapper">

	        <!-- Sidebar -->
	        <div id="sidebar-wrapper">
	            
	            <div class="panel-group" id="accordion-2" style="padding:5px 5px;">
	            
					<div class="panel panel-primary">
					  <div class="panel-heading" style="background:#fff;">
						<h3 class="panel-title">
							<a class="block-collapse collapsed" style="color:#007500;" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-1" aria-expanded="false">
							<b>Collapse group item 1</b>
							<span class="right-content">
								<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
							</span>
							</a>
						</h3>
					  </div>
						<div id="accordion-2-child-1" class="collapse" aria-expanded="false" style="height: 0px;">
						  <div class="panel-body" style="background:#cccccc;">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
					</div><!-- /.panel panel-primary -->
					
					<div class="panel panel-primary">
					  <div class="panel-heading" style="background:#fff;">
						<h3 class="panel-title">
							<a class="block-collapse collapsed" style="color:#007500;" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-2" aria-expanded="false">
							<b>Collapse group item 1</b>
							<span class="right-content">
								<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
							</span>
							</a>
						</h3>
					  </div>
						<div id="accordion-2-child-2" class="collapse" aria-expanded="false" style="height: 0px;">
						  <div class="panel-body">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
					</div><!-- /.panel panel-primary -->
					
					<div class="panel panel-primary">
					  <div class="panel-heading" style="background:#fff;">
						<h3 class="panel-title">
							<a class="block-collapse collapsed" style="color:#007500;" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-3" aria-expanded="false">
							<b>Collapse group item 1</b>
							<span class="right-content">
								<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
							</span>
							</a>
						</h3>
					  </div>
						<div id="accordion-2-child-3" class="collapse" aria-expanded="false" style="height: 0px;">
						  <div class="panel-body" style="background:#cccccc;">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
					</div><!-- /.panel panel-primary -->
					
					<div class="panel panel-primary">
					  <div class="panel-heading" style="background:#fff;">
						<h3 class="panel-title">
							<a class="block-collapse collapsed" style="color:#007500;" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-4" aria-expanded="false">
							<b>Collapse group item 1</b>
							<span class="right-content">
								<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
							</span>
							</a>
						</h3>
					  </div>
						<div id="accordion-2-child-4" class="collapse" aria-expanded="false" style="height: 0px;">
						  <div class="panel-body" style="background:#cccccc;">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
					</div><!-- /.panel panel-primary -->
					
					<div class="panel panel-primary">
					  <div class="panel-heading" style="background:#fff;">
						<h3 class="panel-title">
							<a class="block-collapse collapsed" style="color:#007500;" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-5" aria-expanded="false">
							<b>Collapse group item 1</b>
							<span class="right-content">
								<span class="right-icon"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
							</span>
							</a>
						</h3>
					  </div>
						<div id="accordion-2-child-5" class="collapse" aria-expanded="false" style="height: 0px;">
						  <div class="panel-body" style="background:#cccccc;">
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
						  </div><!-- /.panel-body -->
						</div><!-- /.collapse in -->
					</div><!-- /.panel panel-primary -->
					
				</div>
	            
	            
	            
	            
	            
	            
	            <!-- <div class="list-group square">
	            
					<div class="btn-group" style="width:100%;">
						  <a href="#fakelink" class="list-group-item dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						  	Dapuranmu kui <span class="badge badge-primary"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
						  </a>
						  <ul class="dropdown-menu" role="menu" style="width:100%;">
							<li><a href="#fakelink">Action</a></li>
							<li><a href="#fakelink">Another action</a></li>
							<li><a href="#fakelink">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#fakelink">Separated link</a></li>
						  </ul>
					  </div>
					  <div class="btn-group" style="width:100%;">
						  <a href="#fakelink" class="list-group-item dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						  	Dapuranmu kui <span class="badge badge-primary"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
						  </a>
						  <ul class="dropdown-menu" role="menu" style="width:100%;">
							<li><a href="#fakelink">Action</a></li>
							<li><a href="#fakelink">Another action</a></li>
							<li><a href="#fakelink">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#fakelink">Separated link</a></li>
						  </ul>
					  </div>
					  <div class="btn-group" style="width:100%;">
						  <a href="#fakelink" class="list-group-item dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						  	Dapuranmu kui <span class="badge badge-primary"><i class="glyphicon glyphicon-chevron-down icon-collapse"></i></span>
						  </a>
						  <ul class="dropdown-menu" role="menu" style="width:100%;">
							<li><a href="#fakelink">Action</a></li>
							<li><a href="#fakelink">Another action</a></li>
							<li><a href="#fakelink">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#fakelink">Separated link</a></li>
						  </ul>
					  </div>
					  
				</div> -->
				
				
	        </div>
	        <!-- /#sidebar-wrapper -->
	
	        <!-- Page Content -->
	        <div id="page-content-wrapper" style="background:#fff;">
	            <div class="container-fluid">
	            	<div class="row">
	                    <div class="col-lg-12">
	                    
	                        <h1>Simple Sidebar</h1>
	                        <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
	                        <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
	                        
	                        <h1>Simple Sidebar</h1>
	                        <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
	                        <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
	                        
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    </div>
	    <!-- /#wrapper -->
		
	
		<jsp:include page="../shared/_footer.jsp" />
		
		<script>
		$(document).ready(function() {
			$("#sidebar-wrapper").height($("#page-content-wrapper").outerHeight());
		    $("#menu-toggle").click(function(e) {
		        $("#wrapper").toggleClass("toggled");
		    });
		});
	    </script>
	</body>
</html>	