<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Adminstrator Page</title>
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<link href="lib/morrisjs/morris.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="./includes/navigation.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<p></p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Add User</div>
						<div class="panel-body">
							<div class="row">
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Username</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input class="form-control">
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Password</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input type="password" class="form-control">
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Retype password</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input type="password" class="form-control">
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Email</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input class="form-control">
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Phone</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input class="form-control">
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Access</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<select class="form-control">
											<option>Adminstrator</option>
											<option>Normal user</option>
										</select>
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4"></div>
									<div class="col-12 col-sm-6 col-md-8">
										<a href="#" class="btn btn-success">Add</a>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>