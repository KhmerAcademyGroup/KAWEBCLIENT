<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="../shared/_header.jsp" />
		<link href="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.css" rel="stylesheet">
	</head>
 
	<body class="tooltips no-padding">
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="../shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		<!-- My Contend -->
		
		<div class="container ka-container" >
		
			
				<ol class="breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/forum">Questions</a></li>
				  <li><a href="#fakelink">Users</a></li>
				  <li><a href="#fakelink">Ask Question</a></li>
				</ol>
				
			<h2 class="page-title">Ask Question </h2>
			
			<div class="border-bottom">
				<div class="container">
					<div class="border-bottom-color bg-info"></div>
				</div><!-- /.container -->
			</div>
	
			<div class="row">
					<div class="col-sm-8 col-md-9" >
						
						<div class="section">
								
								<div class="row">
										<div class="panel panel-forum panel-default">
<!-- 											<div class="panel-heading info"> -->
<!-- 												 Ask Question -->
<!-- 											</div> -->
											<div class="panel-body" style="padding-top: 40px;padding-right: 30px;">
												<div class="row">
													<div class="col-sm-12">
														
														<form class="form-horizontal" id="frmPostQuestion">
					
															<div class="form-group ">
																<label class="col-lg-1 control-label">Title</label>
																<div>
																	<div class="col-lg-11">
																		<input type="text" name="title" id="title" class="form-control"   >
																	</div>
																</div>
															</div>
					
															<div class="form-group">
																<label class="col-lg-1 control-label">Category</label>
																<div class="col-lg-11 ">
																	<select name="category" data-placeholder="Choose a Country..." class="form-control chosen-select" tabindex="2">
																		<option value="Empty">&nbsp;</option>
																		<option value="United States">United States</option>
																		<option value="United Kingdom">United Kingdom</option>
																		<option value="Afghanistan">Afghanistan</option>
																		<option value="Aland Islands">Aland Islands</option>
																		<option value="Albania">Albania</option>
																		<option value="Algeria">Algeria</option>
																		<option value="American Samoa">American Samoa</option>
																		<option value="Andorra">Andorra</option>
																		<option value="Angola">Angola</option>
																		<option value="Anguilla">Anguilla</option>
																		<option value="Antarctica">Antarctica</option>
																	</select>

																</div>
															</div>
															
															<div class="form-group">
																<label class="col-lg-1 control-label">Detail</label>
																<div class="col-lg-11">
																	<textarea class="summernote" name="detail" id="detail" >
																	
																	</textarea>
																</div>
															</div>
															
															
															
															<div class="form-group ">
																<label class="col-lg-1 control-label">Tags</label>
																<div class="col-lg-11">
																	<select id="tag" data-placeholder="Choose a Country..." class="form-control chosen-select" multiple tabindex="4">
																		<option value="Empty">&nbsp;</option>
																		<option value="United States">United States</option>
																		<option value="United Kingdom">United Kingdom</option>
																		<option value="Afghanistan">Afghanistan</option>
																		<option value="Aland Islands">Aland Islands</option>
																		<option value="Albania">Albania</option>
																		<option value="Algeria">Algeria</option>
																		<option value="American Samoa">American Samoa</option>
																		<option value="Andorra">Andorra</option>
																		<option value="Angola">Angola</option>
																		<option value="Anguilla">Anguilla</option>
																	</select>
																</div>
															</div>
					
															<div class="form-group ">
																<div class="col-lg-5 col-lg-offset-1">
																	<div class="checkbox">
																	  <label>
																		<input name="acceptTerms" type="checkbox" value=""> Accept the terms and policies </label>
																	</div>
																</div>
															</div>
					
															<div class="form-group">
																<div class="col-lg-9 col-lg-offset-1">
																	<button class="btn btn-primary" type="submit" id="btnask">Post Question</button>
																</div>
															</div>
														</form>
													</div>
													
												</div>
											</div>
											<!-- /.panel-body -->
					
										</div>
										<!-- /.panel panel-default panel-block-color -->
									<!-- /.col-sm-4 -->
					
								</div>
									
						
						</div>
					</div><!-- /.col-sm-8 col-md-9 -->
					
					<div class="col-sm-4 col-md-3">
						
						<!-- BEGIN SIDEBAR -->
						<div class="section sidebar">
							
							<div class="panel panel-no-border panel-sidebar" style="background: #FFF8DC;padding: 0 15px 15px;">
							  <div class="panel-heading panel-warning">
								<h3 class="panel-title">របៀបសួរ : </h3>
							  </div> 
							   <p>
															<b>យើងលើកទឹកចិត្តក្នុងការស្វែងរក មុន​នឹង​សួរ​សំណួរ</b>
															</p>
															<p>
																ការ​សួរ​ត្រូវវាយចំណងជើង ជ្រើសរើស Category បន្ទាប់​មក​ចុច​វាយអត្ថបទ​សំណួរ ហើយ​ចុង​ក្រោយ ចុចរើស Tag ណា ដែល​គិត​ថា​ពាក់ព័ន្ធ
															</p>
															
															<p>
																ប្រសិន​បើ​មាន​ចម្ងល់​ សូមទាក់ទង​អភិបាល នៃគេហទំព័រ
															</p>
							</div>
					</div>
					
				</div>
			
			
						
		</div>
		
	</div>
		
		
		<!-- End My Contend -->
<!-- 		<a href="list.act?tag=java"> -->
<!-- 																	<span class="label label-primary">java</span> -->
<!-- 																</a> -->
		
		<jsp:include page="../shared/_footer.jsp" />
		
	
	
		
		
		<script src="${pageContext.request.contextPath}/resources/assets/plugins/summernote/summernote.min.js"></script>
		<script type="text/javascript">
		$(function() {
			
			$(".chosen-select").chosen();
			
			$('.summernote').summernote(
					{
						height : 200,
						toolbar : [
								
								[
										'style',
										[ 'bold', 'italic', 'underline',
												'clear' ] ],
								[ 'fontsize', [ 'fontsize' ] ],
								[ 'color', [ 'color' ] ],
								[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
								[ 'height', [ 'height' ] ],
								[ 'codeview', [ 'codeview' ] ],						
						]
					});
			

		});
	</script>
		
		 <script id="related_question_tmpl" type="text/x-jquery-tmpl">
				<li class="media" style="margin: 0px 0;">
									<div class="media-body">
										<p class="text-info">
											<a href="#fakelink" style="color: #3BAFDA;">
											{{= title }}
											</a>
										</p>
										<p class="small">{{= vote }} Votes | Asked June 05, 2014</p>
									</div>
				</li>
		</script>
		 

		<script type="text/javascript">
		
			  var question = "";
			  var answer = "";
			  var selectedAnswer = "";
		
			  var page = 1;
		  	  var totalPage = 0;
		  		
			  $(document).ready(function(){
				
			  });
	    		
			  
			  
			  
			  
			 
			  
			  
			  
			  function shorten(text, maxLength) {
				  var ret = text;
				  if (ret.length > maxLength) {
				  ret = ret.substr(0,maxLength-3) + "...";
				  }
				  return ret;
		 	 }
			  
			  function parseHtmlEnteties(str) {
				    return str.replace(/&#([0-9]{1,3});/gi, function(match, numStr) {
				        var num = parseInt(numStr, 10); // read num as normal number
				        return String.fromCharCode(num);
				    });
				}
		</script>	
    			
    			
	</body>
</html>
							
