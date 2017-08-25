<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Category Manager</title>
<link href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="./includes/navigation.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12" style="margin-top: 50px;">
					<div class="panel panel-default">
						<div class="panel-heading">CATEGORY MANAGER</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>
											<label class="checkbox-inline"> 
												<input type="checkbox" /> Check all
											</label>
										</th>
										<th>CategoryName</th>
										<th><a href="${pageContext.request.contextPath}/admin/addcategory.jsp" type="button" class="btn btn-success right">Thêm</a>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<label class="checkbox-inline"> 
												<input	type="checkbox" />
											</label>
										</td>
										<td>Laptop thông thường</td>
										<td><a type="button" class="btn btn-warning">Sửa</a> <a
											type="button" class="btn btn-danger">Xóa</a></td>
									</tr>
									<tr>
										<td>
											<label class="checkbox-inline"> 
												<input	type="checkbox" />
											</label>
										</td>
										<td>Laptop xách tay</td>
										<td>
											<a type="button" class="btn btn-warning">Sửa</a>
											<a type="button" class="btn btn-danger">Xóa</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/lib/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/metisMenu/metisMenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/datatables/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/datatables-responsive/dataTables.responsive.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>

</body>

</html>
