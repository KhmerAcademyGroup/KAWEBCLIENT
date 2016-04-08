<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="shared/_adminheader.jsp" />
</head>

<body class="tooltips">

	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">

		<!-- BEGIN TOP NAV -->
		<jsp:include page="shared/_topnav.jsp" />
		<!-- END TOP NAV -->

		<!-- BEGIN SIDEBAR LEFT -->
		<jsp:include page="shared/_leftsidebar.jsp" />
		<!-- END SIDEBAR LEFT -->


		<!-- BEGIN SIDEBAR RIGHT -->
		<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
		<!-- END SIDEBAR RIGHT -->


		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

				<h1 class="page-heading">Video Category</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button id="showFrmAddCategory" type="button"
								class="btn btn-success">
								<i class="fa fa-plus-square"></i> Add new
							</button>
						</div>
					</div>

					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Category name</th>
									<th>MainCategory name</th>
									<th>Action</th>

								</tr>
							</thead>
							<tbody id="content">

							</tbody>

						</table>

						<div id="pagination" class="pull-right"></div>
					</div>
					<!-- /.table-responsive -->
				</div>
			</div>
			<!-- /.container-fluid -->

			<div id="p-frmCategory" class="ka-popup"
				style="display: none; width: 50%;">
				<form id="frmCategory"
					action="${pageContext.request.contextPath}/rest/video/category"
					method="POST">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" aria-hidden="true">
								<span class="button b-close"><span>×</span></span>
							</button>
							<h4 class="modal-title">Video Category</h4>
						</div>
						<div class="modal-body">
							<input type="hidden" id="categoryId" class="form-control"
								name="categoryId">

							<div class="form-group">
								<label class="control-label">Category name</label>
								<div>
									<input type="text" id="categoryName" class="form-control"
										required="required" name="categoryName">
								</div>
							</div>

							<div class="form-group">
								<label class=" control-label">MainCategory name</label>
								<div>
									<select id="mainCategory"
										data-placeholder="Choose a MainCategory..."
										class="form-control" tabindex="2" required="required">

									</select>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="form-group">
								<div class="col-lg-8 col-lg-offset-4">
									<button type="submit" id="btSubmit" class="btn btn-primary">Save</button>
								</div>
							</div>

						</div>
					</div>
				</form>
			</div>


			<!-- Form Confirm Delete Category -->
			<div id="p-frmConfirm" class="ka-popup"
				style="display: none; width: 50%;">
				<form id="frmConfirm"
					action="${pageContext.request.contextPath}/rest/video/category/"
					method="POST">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" aria-hidden="true">
								<span class="button b-close"><span>×</span></span>
							</button>
							<h4 class="modal-title">Confirmation</h4>
						</div>
						<div class="modal-body">

							<input type="hidden" id="ConfirmId" class="form-control"
								name="categoryId"> <input type="hidden" id="ConfirmId"
								class="form-control" name="mainCategoryId">
							<div class="form-group">
								<label class="form-control">Delete this Category?</label>
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" id="btDelete" class="btn btn-primary">Yes</button>
							<button type="button" id="btCancel" class="btn btn-primary">No</button>
						</div>
					</div>
				</form>
			</div>

			<!-- BEGIN FOOTER -->
			<jsp:include page="shared/_adminfooter.jsp" />
			<!-- END FOOTER -->

		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->

	<!-- Footer Script -->
	<jsp:include page="shared/_scriptfooter.jsp" />
	<!-- ./Footer Script -->

	<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO }}</td>
				<td>{{= categoryName}}</td>
				<td>{{= mainCategoryName}}</td>
				<td> 
   		 			<i data-cateid="{{= categoryId}}" data-mcateid="{{= mainCategoryId}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdateCategory"></i>
            		<i data-cateid="{{= categoryId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmConfirm" ></i>
         		</td>
			</tr>
   		</script>

	<script id="listmcategory_tmpl" type="text/x-jquery-tmpl">
			<option value="{{= mainCategoryId}}">{{= mainCategoryName}}</option>
   		</script>

	<script type="text/javascript">
		var category = {};
		var check = true;

		$(document)
				.ready(
						function() {

							category.listCategory = function(currentPage) {
								KA.createProgressBar();
								$
										.ajax({
											url : "${pageContext.request.contextPath}/rest/video/category?page="
													+ currentPage + "&item=20",
											type : 'GET',
											beforeSend : function(xhr) {
												xhr.setRequestHeader("Accept",
														"application/json");
												xhr.setRequestHeader(
														"Content-Type",
														"application/json");
											},
											success : function(data) {
// 												console.log(data);

												/*  alert(JSON.stringify(data));
												return;  */

												perPage = 20;
												nextPage = (currentPage - 1)
														* perPage;

												if (data.RES_DATA.length > 0) {
													$("tbody#content").empty();
													for (var i = 0; i < data.RES_DATA.length; i++) {
														data.RES_DATA[i]["NO"] = (i + 1)
																+ nextPage;
													}
													$("#content_tmpl")
															.tmpl(data.RES_DATA)
															.appendTo(
																	"tbody#content");

													$("#listmcategory_tmpl")
															.tmpl(data.RES_DATA)
															.appendTo(
																	"#mainCategory");
												} else {
													$("tbody#content")
															.html(
																	'<tr>No content</tr>');
												}
												if (check) {
													category
															.setPagination(
																	data.PAGINATION.totalPages,
																	1);
													check = false;
												}
												KA.destroyProgressBar();
											},
											error : function(data, status, er) {
												KA.destroyProgressBar();
												console.log("error: " + data
														+ " status: " + status
														+ " er:" + er);
											}
										});
							};

							category.setPagination = function(totalPage,
									currentPage) {
								$('#pagination').bootpag({
									total : totalPage,
									page : currentPage,
									maxVisible : 10,
									leaps : true,
									firstLastUse : true,
									first : 'First',
									last : 'Last',
									wrapClass : 'pagination',
									activeClass : 'active',
									disabledClass : 'disabled',
									nextClass : 'next',
									prevClass : 'prev',
									lastClass : 'last',
									firstClass : 'first'
								}).on("page", function(event, currentPage) {
									check = false;
									category.listCategory(currentPage);
								});
							};

							category.addOrUpdateCategory = function() {

								frmData = {
									"categoryId" : $("#categoryId").val(),
									"categoryName" : $("#categoryName").val(),
									"mainCategoryId" : $('#mainCategory option:selected').val()
								};

								KA.createProgressBarWithPopup();

								//alert($("#frmCategory").attr("action"));

								$.ajax({
									url : $("#frmCategory").attr("action"),
									type : $("#frmCategory").attr("method"),
									data : JSON.stringify(frmData),
									beforeSend : function(xhr) {
										xhr.setRequestHeader("Accept",
												"application/json");
										xhr.setRequestHeader("Content-Type",
												"application/json");
									},
									success : function(data) {
// 										console.log(data);
										KA.destroyProgressBarWithPopup();
										category.listCategory(1);
										$("#p-frmCategory").bPopup().close();
									},
									error : function(data, status, er) {
										//KA.destroyProgressBarWithPopup();
										console.log("error: " + data
												+ " status: " + status + " er:"
												+ er);
									}
								});
							};

							category.deleteCategory = function() {
								KA.createProgressBarWithPopup();

								var catId = $("#ConfirmId").val();

								$.ajax({
									url : $("#frmCategory").attr("action")
											+ "/" + catId,
									type : $("#frmConfirm").attr("method"),
									beforeSend : function(xhr) {
										xhr.setRequestHeader("Accept",
												"application/json");
										xhr.setRequestHeader("Content-Type",
												"application/json");
									},
									success : function(data) {
// 										console.log(data);
										KA.destroyProgressBarWithPopup();
										category.listCategory(1);
										$("#p-frmConfirm").bPopup().close();
									},
									error : function(data, status, er) {
										KA.destroyProgressBarWithPopup();
										console.log("error: " + data
												+ " status: " + status + " er:"
												+ er);
									}
								});
							};

							// Show Form Confirm Category delete Popup
							$(document).on(
									'click',
									"#showFrmConfirm",
									function() {

										var catId = $(this).data("cateid");
										$("#p-frmConfirm").bPopup({
											modalClose : false
										});
										$("#frmConfirm").attr("method",
												"DELETE");
										$("#ConfirmId").val(catId);
									});

							//delete Category equal yes
							$("#frmConfirm").submit(function(e) {
								e.preventDefault();
								category.deleteCategory();
							});

							$("#btCancel").on('click', function() {

								$("#p-frmConfirm").bPopup().close();
							})

							// load all Video category
							category.listCategory(1);

							// Show Form Add Category Popup
							$("#showFrmAddCategory").click(function() {
								$("#p-frmCategory").bPopup({
									modalClose : false
								});
								$("#frmCategory").attr("method", "POST");
								$("#frmCategory").trigger("reset");
								$("#btSubmit").text("Add");
							});

							// Show Form Update Category Popup
							$(document)
									.on(
											'click',
											"#showFrmUpdateCategory",
											function() {

												var cateName = $(this).parent()
														.prev().prev().text();
												var cateId = $(this).data(
														"cateid");
												var mainId = $(this).data(
														"mcateid");

												//$("#mainCategoryId").val(mainId);
												KA.createProgressBarWithPopup();
// 												console.log(cateId);
// 												console.log(mainId);
												$("#categoryName")
														.val(cateName);
												$(
														"#mainCategory option[value='"
																+ mainId + "']")
														.attr('selected',
																'selected');
												//$("#mainCategory option:selected").val(mainId);
												$("#mainCategory select").val(
														mainId);
												$("#categoryId").val(cateId);
												$("#p-frmCategory").bPopup({
													modalClose : false
												});
												KA
														.destroyProgressBarWithPopup();

												$("#frmCategory").attr(
														"method", "PUT");
												$("#btSubmit").text("Update");

											});

							// Add or update Forum Category
							$("#frmCategory").submit(function(e) {
								e.preventDefault();
								category.addOrUpdateCategory();
				});

			});
	</script>
</body>
</html>