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

				<h1 class="page-heading">Video MainCategory</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
						<div class="btn-group" id="btcheck">
							<button id="showFrmAddMainCategory" type="button"
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
									<th>MainCategory name</th>
									<th>Action</th>

								</tr>
							</thead>
							<tbody id="content">

							</tbody>

						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
			</div>
			<!-- /.container-fluid -->


			<!--Add Main Category Popup  -->
			<div id="p-frmMainCategory" class="ka-popup"
				style="display: none; width: 50%;">
				<form id="frmMainCategory"
					action="${pageContext.request.contextPath}/rest/video/maincategory"
					method="POST">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" aria-hidden="true">
								<span class="button b-close"><span>×</span></span>
							</button>
							<h4 class="modal-title">Video MainCategory</h4>
						</div>
						<div class="modal-body">

							<input type="hidden" id="mainCategoryId" class="form-control"
								name="mainCategoryId">

							<div class="form-group">
								<label class="col-lg-3 control-label">MainCategory name</label>
								<div class="col-lg-5">
									<input type="text" id="mainCategoryName" class="form-control"
										required="required" name="mainCategoryName">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" id="btSubmit" class="btn btn-primary">Save</button>
						</div>
					</div>
				</form>
			</div>


			<!-- Form Confirm Delete MainCategory -->
			<div id="p-frmConfirm" class="ka-popup"
				style="display: none; width: 50%;">
				<form id="frmConfirm"
					action="${pageContext.request.contextPath}/rest/video/maincategory/" method="POST">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" aria-hidden="true">
								<span class="button b-close"><span>×</span></span>
							</button>
							<h4 class="modal-title">Confirmation</h4>
						</div>
						<div class="modal-body">

							<input type="hidden" id="ConfirmId" class="form-control"
								name="mainCategoryId">

							<div class="form-group">
								<div class="col-lg-8 right" style="border: none;">
									<label class="form-control">Delete this MainCategory?</label>
								</div>
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
				<td>{{= mainCategoryName}}</td>
				<td> 
   		 			<i data-maincateid="{{= mainCategoryId}}" class="fa fa-pencil icon-circle icon-xs icon-info" id="showFrmUpdateMainCategory"></i>
            		<i data-maincateid="{{= mainCategoryId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmConfirm" ></i>
         		</td>
			</tr>
   		</script>

	<script type="text/javascript">
		var mainCategory = {};
		var check = true;

		$(document)
				.ready(
						function() {

							mainCategory.listMainCategory = function() {
								KA.createProgressBar();
								$
										.ajax({
											url : "${pageContext.request.contextPath}/rest/video/maincategory",
											type : 'GET',
											beforeSend : function(xhr) {
												xhr.setRequestHeader("Accept",
														"application/json");
												xhr.setRequestHeader(
														"Content-Type",
														"application/json");
											},
											success : function(data) {
												console.log(data);

												/*  alert(JSON.stringify(data));
												return;  */
												if (data.RES_DATA.length > 0) {
													$("tbody#content").empty();
													for (var i = 0; i < data.RES_DATA.length; i++) {
														data.RES_DATA[i]["NO"] = (i + 1);

													}
													$("#content_tmpl")
															.tmpl(data.RES_DATA)
															.appendTo(
																	"tbody#content");

													/* $("#listmainCategory_tmpl")
															.tmpl(data.RES_DATA)
															.appendTo(
																	"#mainCategory"); */
												} else {
													$("tbody#content")
															.html(
																	'<tr>No content</tr>');
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

							mainCategory.addOrUpdateCategory = function() {

								frmData = {
									"mainCategoryId" : $("#mainCategoryId")
											.val(),
									"mainCategoryName" : $("#mainCategoryName")
											.val()
								};

								KA.createProgressBarWithPopup();

								//alert($("#frmMainCategory").attr("action"));

								$
										.ajax({
											url : $("#frmMainCategory").attr("action"),
											type : $("#frmMainCategory").attr("method"),
											data : JSON.stringify(frmData),
											beforeSend : function(xhr) {
												xhr.setRequestHeader("Accept",
														"application/json");
												xhr.setRequestHeader(
														"Content-Type",
														"application/json");
											},
											success : function(data) {
												console.log(data);
												KA.destroyProgressBarWithPopup();
												mainCategory.listMainCategory();
												$("#p-frmMainCategory").bPopup().close();
											},
											error : function(data, status, er) {
												//KA.destroyProgressBarWithPopup();
												console.log("error: " + data
														+ " status: " + status
														+ " er:" + er);
											}
										});
							};

							// Get one forum category
							mainCategory.getCategory = function(maincateid){
								KA.createProgressBarWithPopup();
								console.log(maincateid);
								$.ajax({ 
								    url: "${pageContext.request.contextPath}/rest/video/maincategory/"+mainCategoryId, 
								    type: 'GET',
								    beforeSend: function(xhr) {
					                    xhr.setRequestHeader("Accept", "application/json");
					                    xhr.setRequestHeader("Content-Type", "application/json");
					                },
								    success: function(data) { 
										console.log(data);
										if(data.RES_DATA != null){
											$("#mainCategoryId").val(data.RES_DATA.mainCategoryId); 
											$("#mainCategoryName").val(data.RES_DATA.mainCategoryIdName); 
										}
										KA.destroyProgressBarWithPopup();
								    },
								    error:function(data,status,er) { 
										KA.destroyProgressBarWithPopup();
								        console.log("error: "+data+" status: "+status+" er:"+er);
								    }
								});
							};
							
							mainCategory.deleteMainCategory = function() {
								KA.createProgressBarWithPopup();

								var mainCateId = $("#ConfirmId").val();

								$.ajax({
									url : $("#frmMainCategory").attr("action")
											+ "/" + mainCateId,
									type : $("#frmConfirm").attr("method"),
									beforeSend : function(xhr) {
										xhr.setRequestHeader("Accept",
												"application/json");
										xhr.setRequestHeader("Content-Type",
												"application/json");
									},
									success : function(data) {
										console.log(data);
										KA.destroyProgressBarWithPopup();
										mainCategory.listMainCategory();
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

										var mcateId = $(this).data("maincateid");
										//alert(mcateId);
										$("#p-frmConfirm").bPopup({modalClose : false
										});
										$("#frmConfirm").attr("method",	"DELETE");
										$("#ConfirmId").val(mcateId);
									});

							//delete Category equal yes
							$("#frmConfirm").submit(function(e) {
								e.preventDefault();
								mainCategory.deleteMainCategory();
							});

							$("#btCancel").on('click', function() {

								$("#p-frmConfirm").bPopup().close();
							})

							// load all Video mainCategory
							mainCategory.listMainCategory();

							// Show Form Add Category Popup
							$("#showFrmAddMainCategory").click(function() {
								$("#p-frmMainCategory").bPopup({
									modalClose : false
								});
								$("#frmMainCategory").attr("method", "POST");
								$("#frmMainCategory").trigger("reset");
								$("#btSubmit").text("Add");
							});

							// Show Form Update MainCategory Popup
							$(document).on(
									'click',
									"#showFrmUpdateMainCategory",
									function() {
										var mcateName = $(this).parent().prev().text();
										var mcateId = $(this).data("maincateid");
										KA.createProgressBarWithPopup();
										console.log(mcateId);
										$("#mainCategoryId").val(mcateId);
										$("#mainCategoryName").val(mcateName);
										//alert($(this).data("cateid"));
										$("#p-frmMainCategory").bPopup({
											modalClose : false
										});
										KA.destroyProgressBarWithPopup();
										$("#frmMainCategory").attr("method","PUT");
										$("#btSubmit").text("Update");
									});

							// Add or update Forum Category
							$("#frmMainCategory").submit(function(e) {
								e.preventDefault();
								mainCategory.addOrUpdateCategory();
							});

						});
	</script>
</body>
</html>