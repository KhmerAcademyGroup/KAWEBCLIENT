<!-- BEGIN TOP NAVBAR -->
<div class="top-navbar">
	<div class="container">
	
		<!-- Begin logo -->
		<div class="logo">
			<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/assets/img/main_page/khmeracademy.png" alt="Logo"></a>
		</div><!-- /.logo -->
		<!-- End logo -->
		
		<!-- Begin button toggle nav -->
		<div class="btn-toggle-nav" id="btn-toggle-nav"><i class="fa fa-bars"></i></div>
		<div class="btn-toggle-search" id="btn-icon-search"><i class="fa fa-search"></i></div>
		<div class="btn-toggle-phone" id="btn-icon-phone"><i class="fa fa-phone"></i></div>
		<!-- End button toggle nav -->
		
		<!-- Begin visible phone and search nav -->
		<div id="phone-sub" class="nav-right-info">
			<i class="fa fa-times times-icon" id="close-phone-nav"></i>
			<p class="phone">Call us : <strong>+1 123 4567 7899</strong></p>
		</div>
		<div id="search-sub" class="nav-right-info">
			<i class="fa fa-times times-icon" id="close-search-nav"></i>
			<form role="form">
				<input type="text" class="form-control" placeholder="Search something...">
			</form>
		</div>
		<!-- End visible phone and search nav -->
		
		<!-- Begin nav menu -->
		<ul class="menus">
			<li class="parent">
				<a href="${pageContext.request.contextPath}">Home</a>
			</li>
			<li class="parent">
				<a href="#">E-Learning</a>
			</li>
			<li class="parent">
				<a href="#">Forum</a>
			</li>
			<li class="parent">
				<a href="#">Tutorial</a>
			</li>
			<li class="parent">
				<a href="#">News</a>
			</li>
			<li class="parent">
				<a href="#" id="login">Login</a>
			</li>
			<li class="parent">
				<a href="#">Register</a>
			</li>
			<li class="parent right-icon">
				<i class="fa fa-search" id="nav-icon-search"></i>
			</li>
		</ul>
		<!-- End nav menu -->
	</div><!-- /.container -->
</div><!-- /.top-navbar -->
<!-- END TOP NAVBAR -->



		<div id="frmLogin" style="display: none;width: 30%;">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>×</span></span>
					</button>
					
					<h4 class="bolded">Login to your Khmer Academy Account</h4>

				</div>
				<div class="modal-body" >
					
					<form class="form-horizontal m-t-20" id="frmLogin" action="${pageContext.request.contextPath}/login" method="POST">
	                    
	                    <div class="form-group ">
	                        <div class="col-xs-12">
	                            <input class="form-control rounded bold-border" type="text" required="required" name="ka_username" placeholder="Email">
	                        </div>
	                    </div>
	
	                    <div class="form-group">
	                        <div class="col-xs-12">
	                            <input class="form-control rounded bold-border" type="password" required="required" name="ka_password" placeholder="Password">
	                        </div>
	                    </div>
	
	                    <div class="form-group ">
	                        <div class="col-xs-12">
	                            <div class="checkbox checkbox-primary">
	                                <input id="checkbox-signup" type="checkbox">
	                                <label for="checkbox-signup">
	                                    Remember me
	                                </label>
	                            </div>
	                            
	                        </div>
	                    </div>
	                    
	                    <div class="form-group text-center m-t-40">
	                        <div class="col-xs-12">
	                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit">Login</button>
	                        </div>
	                    </div>
	
	                    <div class="form-group m-t-30">
	                        <div class="col-sm-7">
	                            <a href="#"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
	                        </div>
	                        <div class="col-sm-5 text-right">
	                            <a href="/register">Create an account</a>
	                        </div>
	                    </div>
	                </form>
					
				</div>
			</div>
		</div>
		
		
		