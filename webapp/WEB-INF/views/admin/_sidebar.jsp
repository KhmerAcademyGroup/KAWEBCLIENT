<%-- <%@page import="model.dto.User"%>

 <%
 if(session.getAttribute("ka_user")!=null) { 
 	 User usr = (User) session.getAttribute("ka_user");	 
 
%> --%>
			
			<div class="sidebar-left sidebar-nicescroller light-color" style="padding-top: 10px;">
				<div class="col-sm-12">
				
							<div id="accordion-1" class="panel-group">
								<div class="panel panel-primary">
								  <div class="panel-heading">
									<h3 class="panel-title">
									<i class="fa fa-tachometer"></i>
										<a href="index.act"  >
										Dashboard
										
										</a>
									</h3>
								  </div>
									
								</div><!-- /.panel panel-default -->
								<br/>
								<h4 class="small-title">
									<strong><i class="fa fa-tachometer"></i> E-Learning Section</strong>
								</h4>
							
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-1-child-6" data-toggle="collapse" data-parent="#accordion-1" class="block-collapse">
										Video
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-1-child-6" style="height: 0px;">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="videolist.act">List Video</a><br><br>
										<i ></i>&nbsp;<a href="video.act">Add Video</a><br><br>
										
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-1-child-7" data-toggle="collapse" data-parent="#accordion-2" class="block-collapse collapsed">
										User Management
										<span class="right-content">
											<span class="right-icon">
												<i class="glyphicon glyphicon-plus icon-collapse"></i>
											</span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-1-child-7">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="user.act">List User</a><br><br>
										<i ></i>&nbsp;<a href="adduser.act">Add User</a><br><br>
									
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-1-child-8" data-toggle="collapse" data-parent="#accordion-3" class="block-collapse collapsed">
										Category
										<span class="right-content">
											<span class="right-icon">
												<i class="glyphicon glyphicon-minus icon-collapse"></i>
											</span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-1-child-8">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="category.act">List Category</a><br><br>
										<i ></i>&nbsp;<a href="toaddcategory.act">Add Category</a><br><br>
										<i ></i>&nbsp;<a href="maincategory.act">Main Category</a><br><br>
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
							</div><!-- /.panel-group -->
							
							
							
							<div id="accordion-2" class="panel-group">
								
								<h4 class="small-title">
									<strong><i class="fa fa-tasks"></i> Forum Section</strong>
								</h4>
							
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-2-child-1" data-toggle="collapse" data-parent="#accordion-1" class="block-collapse">
										Category
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-2-child-1" style="height: 0px;">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="${pageContext.request.contextPath}/admin/forumcategory">Forum Category</a><br><br>
										
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								
								
							</div><!-- /.panel-group -->
							
							<div id="accordion-3" class="panel-group">
								
								<h4 class="small-title">
									<strong><i class="fa fa-ticket"></i> Log Section</strong>
								</h4>
							
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-4-child-1" data-toggle="collapse" data-parent="#accordion-4" class="block-collapse">
										University Log
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-4-child-1" style="height: 0px;">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="listdepartment.act">List All Department</a><br><br>
										<i ></i>&nbsp;<a href="adddepartment.act">Add Department</a><br><br>
										<i ></i>&nbsp;<a href="listuniversity.act">List All University</a><br><br>
										<i ></i>&nbsp;<a href="adduniversityaction.act">Add University</a><br><br>
										
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								
								
							</div><!-- /.panel-group -->
							<div id="accordion-5" class="panel-group">
								
								<h4 class="small-title">
									<strong><i class="fa fa-clipboard"></i> Report Section</strong>
								</h4>
							
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-5-child-1" data-toggle="collapse" data-parent="#accordion-5" class="block-collapse">
										Report
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-5-child-1" style="height: 0px;">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="log_listuniversity.act">List University Report</a><br><br>
										<i ></i>&nbsp;<a href="log_listcategory.act">List Category Report</a><br><br>
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								
								
							</div><!-- /.panel-group -->
							<div id="accordion-6" class="panel-group">
								
								<h4 class="small-title">
									<strong><i class="fa fa-comment"></i> Comments Section</strong>
								</h4>
							
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-6-child-1" data-toggle="collapse" data-parent="#accordion-6" class="block-collapse">
										Comments List
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-6-child-1" style="height: 0px;">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="listcomment.act">Comments List</a><br><br>
										
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								
								
							</div><!-- /.panel-group -->
							<div id="accordion-7" class="panel-group">
								
								<h4 class="small-title">
									<strong><i class="fa fa-graduation-cap"></i> Pre-Course Section</strong>
								</h4>
							
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-7-child-1" data-toggle="collapse" data-parent="#accordion-7" class="block-collapse">
										Pre-Course List
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-7-child-1" style="height: 0px;">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="listprecourse.act">Pre-Course Student List</a><br><br>
										
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								
								
							</div><!-- /.panel-group -->
				
				
							<div id="accordion-3" class="panel-group">
								
								<h4 class="small-title">
									<strong><i class="fa fa-book"></i> Tutorials Section</strong>
								</h4>
							
								<div class="panel panel-default">
								  <div class="panel-heading">
									<h3 class="panel-title">
										<a href="#accordion-3-child-1" data-toggle="collapse" data-parent="#accordion-3" class="block-collapse">
										Tutorial Articles
										<span class="right-content">
											<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
										</span>
										</a>
									</h3>
								  </div>
									<div class="collapse" id="accordion-3-child-1" style="height: 0px;">
									  <div class="panel-body">
										<i ></i>&nbsp;<a href="listtutorial.act">List All Articles</a><br><br>
										<i ></i>&nbsp;<a href="addtutorial.act">Add Article</a><br><br>
										
									  </div><!-- /.panel-body -->
									</div><!-- /.collapse in -->
								</div><!-- /.panel panel-default -->
								
								
							</div><!-- /.panel-group -->
				</div>
			</div>
<%-- <%}%> --%>