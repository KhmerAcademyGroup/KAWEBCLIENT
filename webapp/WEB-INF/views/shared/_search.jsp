<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div id="p-Search" class="ka-popup" style="display: none;width: 97%;">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>x</span></span>
					</button>
					
					<h4 class="bolded">Khmer Academy</h4>

				</div>
				<div class="modal-body" >
					
					
					<div class="property-search-wrap" id="property-search-wrap" style="position: relative; z-index: 0; background: none;">
								<form role="form" class="text-left" style="    margin: 0 auto;width: 60%;">
									<div class="row">
										
										<div class="col-lg-3">
											<div class="form-group">
												<select  id="searchType"  class="form-control">
													<option value="1">E-Learning</option>
													<option value="2">Tutorials</option>
													<option value="3">Forum</option>
												</select>
											</div>
										</div>
										
										<div class="col-lg-6">
											<div class="form-group">
											<input type="text" class="form-control" placeholder="Enter keyword...">
											</div>
										</div>
										
										<div class="col-lg-3" id="typeElearing">
											<div class="form-group">
												<select name="elearning-Category" id="elearning-Category"  class="form-control" data-placeholder="Enter keyword...">
													<option value="Empty">&nbsp;</option>
													<option value="">E-Learning</option>
													<option value="">E-Learning</option>
												</select>
											</div>
										</div>
										
										<div class="col-lg-3" style="display:none" id="typeTutorials">
											<div class="form-group">
												<select name="tutorials-Category" id="tutorials-Category"  class="form-control" data-placeholder="Enter keyword...">
													<option value="Empty">&nbsp;</option>
													<option value="">Tutorials</option>
													<option value="">Tutorials</option>
												</select>
											</div>
										</div>
										
										<div class="col-lg-3" style="display:none" id="typeForum">
											<div class="form-group">
												<select name="forum-Category" id="forum-Category" class="form-control" data-placeholder="Enter keyword...">
													<option value="Empty">&nbsp;</option>
													<option value="">Forum</option>
													<option value="">Forum</option>
												</select>
											</div>
										</div>
										
									</div><!-- /.row -->
									
									<div class="form-group text-center">
										<button type="button" id="btFind" class="btn btn-success btn-lg">Search</button>
									</div>
								</form>
								
								<div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 386px; width:100%; z-index: -999998; position: absolute;">
									<img src="${pageContext.request.contextPath}/resources/assets/img/discussion.jpg" style="position: absolute; margin: 0px; padding: 0px; border: none; width: 100%; height: 400px; max-height: none; max-width: none; z-index: -999999; left: 0px; ">
								</div>
					</div>
					
					
					
					
					<div class="row" id="forumResult" style="display:none">
					<div class="col-sm-6 col-md-7">
						
						<div class="section">
								
								<table class="table">
																
																					<tbody id="getQuestion"><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjI3" class="ka-question">Test Test Test Test Test</a> <p></p><p> TestTestTestTestTestTestTestTestTestTestTest</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="other" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">          other </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>0 Votes</small></div><div style="width: 70px;"><small>3 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">tola</a></div><div style="width: 65px;"><small>2016-02-05</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/avatar.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjIz" class="ka-question">string</a> <p></p><p> string</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="string" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">string </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>1 Votes</small></div><div style="width: 70px;"><small>1 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">panha</a></div><div style="width: 65px;"><small>2016-01-12</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/avatar.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjIx" class="ka-question">Java progreming </a> <p></p><p> តើបងមានសៀវភៅជាភាសាខ្មែររបស់ java ដែលអត់សូមបងៗជួយផ្តល់នូវមេរៀនឲ្យខ្ញុំផង។</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="other" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">        other </span></a><a id="listQuestionByTag" data-tag="java" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">       java </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>-1 Votes</small></div><div style="width: 70px;"><small>1 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">panha</a></div><div style="width: 65px;"><small>2015-10-30</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/avatar.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjIw" class="ka-question">Computing </a> <p></p><p> ចំពោះកម្មវិធី HTML នឹង VB តើមាននៅលើMac OS អត់</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="other" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">     other </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>0 Votes</small></div><div style="width: 70px;"><small>0 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">Brathou ...</a></div><div style="width: 65px;"><small>2015-10-23</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/5188.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjE5" class="ka-question">Network</a> <p></p><p> what is IP? &nbsp;and what is Ping&nbsp;</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="other" href="javascript:" style="padding-right: 2px;"><span class="label label-primary"> other </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>0 Votes</small></div><div style="width: 70px;"><small>0 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">Brathou ...</a></div><div style="width: 65px;"><small>2015-10-23</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/5188.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjE2" class="ka-question">Pagination  use on angular</a> <p></p><p> I want to create my table to show 5 list per page on pagination how to do it</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="web" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">        web </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>1 Votes</small></div><div style="width: 70px;"><small>1 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">Rany</a></div><div style="width: 65px;"><small>2015-10-21</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/avatar.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjE0" class="ka-question">Add to cart using session with PHP and Mysqli </a> <p></p><p> Dear Admin,</p><div><br></div><div>I found your website by chance on the internet. right now, I have problem with code add to cart in php and mysqli function.</div><div><br></div><div>//----------------Here is my code ------------- ...<p></p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="web" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">         web </span></a></div></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>0 Votes</small></div><div style="width: 70px;"><small>0 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">chhitse ...</a></div><div style="width: 65px;"><small>2015-09-25</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/avatar.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjEy" class="ka-question">File Upload Servlet with Ajax</a> <p></p><p> </p><p>Upload File by Servlet&nbsp; <a href="http://www.javacodegeeks.com/2013/08/file-upload-example-in-servlet-and-jsp.html"> ចុចទីនេះ</a>
										<br><br>File Upload by Ajax</p>
										<code>
										 var data1="";<br>
										 data1=new FormData();<br>
										 data ...<p></p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="web" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">         web </span></a><a id="listQuestionByTag" data-tag="java" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">      java </span></a><a id="listQuestionByTag" data-tag="jsp" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">  jsp </span></a><a id="listQuestionByTag" data-tag="server" href="javascript:" style="padding-right: 2px;"><span class="label label-primary"> server </span></a></div></code></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>1 Votes</small></div><div style="width: 70px;"><small>0 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">Heng</a></div><div style="width: 65px;"><small>2015-09-20</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/1502.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjEx" class="ka-question">JavaScript/Jquery import</a> <p></p><p> ខ្ញុំមាន​ FileExternal.js របស់ javascript / jquery ហើយ​ ក៏បាន​ import មកប្រើក្នុង file.jsp។ ហើយក្នុង​ file.jsp &nbsp;ក៏មាន function ជារបស់JS/JQ ដែរ។ សំនួរ ៖ តើខ្ញុំមានវិធីណា អាចធ្វើការ ហៅ function ក្នុង file.jsp(Internal) មកប្រ ...</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="other" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">        other </span></a><a id="listQuestionByTag" data-tag="web" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">  web </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>0 Votes</small></div><div style="width: 70px;"><small>2 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">Heng</a></div><div style="width: 65px;"><small>2015-09-20</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/1502.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr><tr><td class="expand footable-first-column"><span class="desc-wrapper"> <a href="/KAWEBCLIENT/forum/question/MjEw" class="ka-question">I want to be good at network </a> <p></p><p> How do you do brother ? I am so happy when i have meet your website this is the first web i met that teach about ICT in khmer . i saw your logo on my all school's PC set as background wallpaper and now i am studying about IT an ...</p><p></p><div class="text-left" id="getTage"><a id="listQuestionByTag" data-tag="other" href="javascript:" style="padding-right: 2px;"><span class="label label-primary">        other </span></a></div></span></td><td class="vu-table-td footable-last-column"><div style="width: 70px;"><small>0 Votes</small></div><div style="width: 70px;"><small>0 Answers</small></div></td><td class="vu-table-td footable-last-column"><div style="width: 65px;"><a class="ka-username" style="color:#37BC9B;" href="javascript:">áá·á ...</a></div><div style="width: 65px;"><small>2015-09-15</small></div><div><img style="width: 40px;" src="http://localhost:8080/KAAPI/resources/upload/user/avatar.jpg" class="avatar img-circle" alt="Avatar"></div></td></tr></tbody>
																					<tfoot>
																						
																					</tfoot>
																				</table>
																			
																			
																		<div id="loading" class="text-center" style="display: none;"><img src="/KAWEBCLIENT/resources/assets/img/loading.gif"></div>
																				
																		 <div class="text-center">
																			<button class="btn btn-primary" id="btLoadMore" style=""> Load more</button>
																		</div>
						
								</div>
					</div><!-- /.col-sm-8 col-md-9 -->
					
					
					
				</div>
					
					
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
			 $(document).ready(function(){
				 
				 	searchType = "1";
				 	$(".chosen-select").chosen();
					$("#btSearch").click(function(){
    					$("#p-Search").bPopup();
    				});
					$("#searchType").change(function(){
						searchType = $("#searchType").val();
						
						if(searchType == "1"){
							$("#typeElearing").show();
							$("#typeTutorials").hide();
							$("#typeForum").hide();
						}else if(searchType == "2"){
							$("#typeElearing").hide();
							$("#typeTutorials").show();
							$("#typeForum").hide();
						}else if(searchType == "3"){
							$("#typeElearing").hide();
							$("#typeTutorials").hide();
							$("#typeForum").show();
						}
					});
					
					$("#btFind").click(function(){
						
						
						if(searchType == "1"){
							alert("typeElearing");
						}else if(searchType == "2"){
							$("#forumResult").show();
							alert("typeTutorials");
						}else if(searchType == "3"){
							alert("typeForum");
						}
						
						
						
						
					});
					
    	     });
    	</script>
    	
    	
