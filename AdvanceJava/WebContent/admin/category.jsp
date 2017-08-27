<%@page import="cmc.com.vn.model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Category Manager</title>
<link href="${pageContext.request.contextPath}/admin/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/css/custom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
</head>
<body>
<%
	ArrayList<Category> listCategory = (ArrayList<Category>)request.getAttribute("category");
	String success = (String) request.getAttribute("success");
%>
	<div id="wrapper">
		<jsp:include page="./includes/navigation.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12" style="margin-top: 50px;">
					<div class="panel panel-default">
						<div class="panel-heading">CATEGORY MANAGER</div>
						<%if(success != null){ %>
						<div class="alert alert-success" role="alert">
							<%=success %>
						</div>
						<%} %>
						<div class="panel-body">
						<form method="post"
						action="${pageContext.request.contextPath}/admin/DeleteMultipleCategory?action=delete">
							<table width="100%"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>
											<label class="checkbox-inline"> 
												<input type="checkbox" id="checkBoxAll"/> 
												<input type="submit" class="btn btn-danger" value="Xóa"
													onclick="return confirm('Are you sure want to delete this Category?')">
											</label>
										</th>
										<th>CategoryName</th>
										<th><a href="${pageContext.request.contextPath}/admin/AddCategory" type="button" class="btn btn-success right">Thêm</a>
										</th>
									</tr>
								</thead>
								<tbody>
								<%for (Category category : listCategory){ %>
									<tr>
										<td><label class="checkbox-inline"> 
										<input type="hidden" name="categoryId" value="<%=category.getCategoryId() %>">
										<input type="checkbox" class="chkCheckBoxId" name="deletes" value="<%=category.getCategoryId() %>" />
										</label></td>
										<td><%=category.getCategoryName() %></td>
										<td><a href="<%=request.getContextPath()%>/admin/EditCategory?CategoryId=<%=category.getCategoryId() %>" type="button" class="btn btn-warning">Sửa</a>
										 	<a href="<%=request.getContextPath() %>/admin/DeleteCategory?CategoryId=<%=category.getCategoryId() %>" type="button" class="delete btn btn-danger">Xóa</a></td>
									</tr>
									<%} %>
								</tbody>
							</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/admin/lib/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/datatables/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/lib/datatables-responsive/dataTables.responsive.js"></script>
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
