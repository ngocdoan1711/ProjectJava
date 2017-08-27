<%@page import="cmc.com.vn.model.Category"%>
<%@page import="cmc.com.vn.dao.CategoryDao"%>
<%@page import="cmc.com.vn.model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Product Manager</title>
<link
	href="${pageContext.request.contextPath}/admin/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/admin/lib/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/admin/lib/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/css/custom.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/admin/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<%
		ArrayList<Product> list = (ArrayList<Product>) request.getAttribute("product");
		CategoryDao categoryDao = new CategoryDao();
		String success = (String) request.getAttribute("success");
	%>
	<div id="wrapper">
		<jsp:include page="/admin/includes/navigation.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12" style="margin-top: 50px;">
					<div class="panel panel-default">
						<div class="panel-heading">PRODUCT MANAGER</div>
						<%if(success != null){ %>
						<div class="alert alert-success" role="alert">
							<%=success %>
						</div>
						<%} %>
						<div class="panel-body">
						<form method="post"
						action="${pageContext.request.contextPath}/admin/DeleteMultipleProduct?action=delete">
							<table width="100%"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>
											<label class="checkbox-inline"> 
												<input type="checkbox" id="checkBoxAll"/> 
												<input type="submit" class="btn btn-danger" value="Xóa"
													onclick="return confirm('Are you sure want to delete this Products?')">
											</label>
										</th>
										<th>Image</th>
										<th>Product Name</th>
										<th>Category</th>
										<th>Price</th>
										<th>Description</th>
										<th><a
											href="<%=request.getContextPath()%>/admin/AddProduct"
											type="button" class="btn btn-success right">Thêm</a></th>
									</tr>
								</thead>
								<tbody>
									<%
										for (Product product : list) {
									%>
									<tr>
										<td><label class="checkbox-inline"> 
										<input type="checkbox" class="chkCheckBoxId" name="deletes" value="<%=product.getProductId() %>" />
										</label></td>
										<td><img class="small-img"
											src="<%=product.getImage() %>" />
										</td>
										<td><%=product.getProductName()%></td>
										<td>
											<%
												Category category = categoryDao.getCategoryById(product.getCaterogyId());
											%> <%=category.getCategoryName()%></td>
										<td><%=product.getPrice()%></td>
										<td>HTML Code</td>
										<td><a href="<%=request.getContextPath()%>/admin/EditProduct?ProductId=<%=product.getProductId() %>" type="button" class="btn btn-warning">Sửa</a>
										 	<a href="<%=request.getContextPath() %>/admin/DeleteProduct?ProductId=<%=product.getProductId() %>" 
										 	type="button" class="delete btn btn-danger">Xóa</a></td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/lib/jquery/jquery.js" ></script>
	<script
		src="${pageContext.request.contextPath}/admin/lib/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/lib/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/lib/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/lib/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/lib/datatables-responsive/dataTables.responsive.js"></script>
	<script src="${pageContext.request.contextPath}/admin/js/custom.js"></script>
	<script>
		$('.delete').click(function () {
		    return confirm("Are you sure want to delete this Product?");
		});
	</script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#checkBoxAll').click(function(){
				if($(this).is(":checked"))
					$('.chkCheckBoxId').prop('checked', true);
				else
					$('.chkCheckBoxId').prop('checked', false);
			});
		});
	</script>
</body>

</html>
