<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="navigation" class="wrapper">
	<div class="header">
		<div class="header-inner container">
			<div class="row">
				<div class="col-md-8">
					<a class="navbar-brand" href="index.jsp" title="Home"></a>
				</div>
				<div class="col-md-4">
					<ul class="list-inline user-menu pull-right">
						<li class="hidden-xs"><i class="fa fa-edit text-primary"></i>
							<a href="register.jsp" class="text-uppercase">Register</a></li>
						<li class="hidden-xs"><i class="fa fa-sign-in text-primary"></i>
							<a href="login.jsp" class="text-uppercase">Login</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="navbar navbar-default">
			<div class="navbar-text social-media social-media-inline pull-right">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-google-plus"></i></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav" id="main-menu">
					<li class="icon-link"><a href="index.jsp"><i
							class="fa fa-home"></i></a></li>
					<li class="dropdown dropdown-mm"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Danh mục sản
							phẩm<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li class="dropdown-header">Danh mục Laptop</li>
							<li><a href="${pageContext.request.contextPath}/Category?CategoryId=1" tabindex="-1" class="menu-item">Laptop thông thường</a></li>
							<li><a href="${pageContext.request.contextPath}/Category?CategoryId=2" tabindex="-1" class="menu-item">Laptop xách tay</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Các thông tin khác<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="dropdown-header">Các chính sách CMC</li>
							<li><a href="#" tabindex="-1" class="menu-item">Chính
									sách bảo hành</a></li>
							<li><a href="#" tabindex="-1" class="menu-item">Chính
									sách đổi trả</a></li>
							<li><a href="#" tabindex="-1" class="menu-item">Chính
									sách vận chuyển</a></li>
						</ul></li>
					<li><a href="#">Giới thiệu</a></li>
					<li><a href="#">Tuyển dụng</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>