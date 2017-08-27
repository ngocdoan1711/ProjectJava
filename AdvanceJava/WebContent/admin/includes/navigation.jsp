<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.jsp">CMC Laptop</a>
	</div>
	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown"><a class="dropdown-toggle" href="#"> <i
				class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu"></ul></li>
		<li class="dropdown"><a class="dropdown-toggle" href="#"> <i
				class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu"></ul></li>
		<li class="dropdown"><a class="dropdown-toggle" href="#"> <i
				class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu"></ul></li>
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"> <i class="fa fa-user fa-fw"></i>Profile
				</a></li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a></li>
				<li><a href="../login.jsp"><i class="fa fa-sign-out fa-fw"></i>Sign
						Out</a></li>
			</ul></li>
	</ul>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</li>
				<li><a href="${pageContext.request.contextPath}/admin/index.jsp"><i class="fa fa-dashboard fa-fw"></i>
						Dashboard</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/GetAllUser"><i class="fa fa-user fa-fw"></i>
						User Manager</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/GetAllCategory"><i class="fa fa-tags fa-fw"></i>
						Category Manager</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/GetAllProduct"><i class="fa fa-laptop fa-fw"></i>
						Product Manager</a></li>
			</ul>
		</div>
	</div>
</nav>