<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<meta charset="utf-8">
<title>Register - CMC Laptop</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body class="fullscreen-centered page-register">
	<div id="background-wrapper" class="benches">
		<div id="content">
			<div class="header">
				<div class="header-inner">
					<a class="navbar-brand center-block" href="index.jsp" title="Home"></a>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Sign Up</h3>
						</div>
						<div class="panel-body">
							<form accept-charset="UTF-8" role="form">
								<fieldset>
									<div class="form-group">
										<div class="input-group input-group-lg">
											<span class="input-group-addon"><i
												class="fa fa-fw fa-user"></i></span> <input type="text"
												class="form-control" placeholder="Username">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group input-group-lg">
											<span class="input-group-addon"><i
												class="fa fa-fw fa-envelope"></i></span> <input type="text"
												class="form-control" placeholder="Email">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group input-group-lg">
											<span class="input-group-addon"><i
												class="fa fa-fw fa-lock"></i></span> <input type="password"
												class="form-control" placeholder="Password">
										</div>
									</div>
									<div class="checkbox">
										<label> <input name="remember" type="checkbox"
											value="Terms"> I agree to the <a href="#">terms
												and conditions</a>.
										</label>
									</div>
									<input class="btn btn-lg btn-primary btn-block" type="submit"
										value="Sign Up">
								</fieldset>
							</form>
							<p class="m-b-0 m-t">
								Already signed up? <a href="login.jsp">Login here</a>.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/custom.js"></script>
</body>
</html>