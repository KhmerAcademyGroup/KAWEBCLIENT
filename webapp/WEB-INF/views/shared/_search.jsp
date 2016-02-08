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
					
					
					<div class="panel with-nav-tabs">
							  <div class="panel-heading" style="background:#82b541">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#fakelink">E-Learning</a></li>
									<li><a href="#fakelink">Tutorials</a></li>
									<li><a href="#fakelink">Forum</a></li>
								</ul>
							  </div>
							  <div class="panel-body" style="min-height:800px">
								
					
					
								
					<div class="property-search-wrap" id="property-search-wrap" style="position: relative; z-index: 0; background: none;">
								<form role="form" class="text-left" style="    margin: 0 auto;width: 60%;">
									<div class="row">
										<div class="col-sm-8">
											<div class="form-group">
											<input type="text" class="form-control" placeholder="Enter keyword...">
											</div>
										</div><!-- /.col-sm-4 -->
										<div class="col-sm-4">
											<div class="form-group">
												<select data-placeholder="Min price" class="form-control chosen-select" tabindex="-1" style="display: none;">
													<option value="Empty">&nbsp;</option>
													<option value="">$ 50,000</option>
													<option value="">$ 100,000</option>
													<option value="">$ 500,000</option>
													<option value="">$ 1,000,000</option>
													<option value="">$ 2,000,000</option>
												</select><div class="chosen-container chosen-container-single" style="width: 239px;" title=""><a class="chosen-single" tabindex="-1"><span>&nbsp;</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" tabindex="2"></div><ul class="chosen-results"><li class="active-result result-selected" data-option-array-index="0">&nbsp;</li><li class="active-result" data-option-array-index="1">$ 50,000</li><li class="active-result" data-option-array-index="2">$ 100,000</li><li class="active-result" data-option-array-index="3">$ 500,000</li><li class="active-result" data-option-array-index="4">$ 1,000,000</li><li class="active-result" data-option-array-index="5">$ 2,000,000</li></ul></div></div>
											</div>
										</div><!-- /.col-sm-2 -->
									</div><!-- /.row -->
									
									<div class="form-group text-center">
									<button class="btn btn-success btn-lg">Search</button>
									</div>
								</form>
								
								<div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 386px; width:100%; z-index: -999998; position: absolute;">
									<img src="${pageContext.request.contextPath}/resources/assets/img/discussion.jpg" style="position: absolute; margin: 0px; padding: 0px; border: none; width: 100%; height: 400px; max-height: none; max-width: none; z-index: -999999; left: 0px; ">
								</div>
					</div>
								
								
							  </div><!-- /.panel-body -->
					</div>
					
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
			 $(document).ready(function(){
					$("#btSearch").click(function(){
    					$("#p-Search").bPopup();
    				});
    	     });
    	</script>
    	
    	
