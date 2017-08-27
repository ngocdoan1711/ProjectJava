<%@page import="cmc.com.vn.model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cmc.com.vn.model.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckfinder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Edit Product</title>
<link
	href="${pageContext.request.contextPath}/admin/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/css/custom.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/admin/lib/morrisjs/morris.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/admin/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<!-- Loading CKFinder -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	function BrowseServer() {
		var finder = new CKFinder();
		//finder.basePath = '../';
		finder.selectActionFunction = SetFileField;
		finder.popup();
	}
	function SetFileField(fileUrl) {
		document.getElementById('Image').value = fileUrl;
	}
</script>
</head>
<body>
	<%
		Product product = (Product)request.getAttribute("product");
		ArrayList<Category> listCategory = (ArrayList<Category>) request.getAttribute("allCategory");
	%>
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
						<div class="panel-heading">Edit Product</div>
						<form action="<%=request.getContextPath() %>/admin/DoEditProduct" method="post">
							<div class="panel-body">
								<div class="row">
									<div class="row no-gutters">
										<div class="col-6 col-md-4">
											<label class="label-input">Product name</label>
										</div>
										<div class="col-12 col-sm-6 col-md-8">
											<input type="hidden" name="productId" value="<%=product.getProductId() %>"/>
											<input class="form-control" name="productName" value="<%=product.getProductName() %>" />
										</div>
									</div>
									<div class="row no-gutters">
										<div class="col-6 col-md-4">
											<label class="label-input">Category</label>
										</div>
										<div class="col-12 col-sm-6 col-md-8">
											<select class="form-control" name="categoryId">
												<%
													for (Category category : listCategory) {
												%>
												<option value="<%=category.getCategoryId()%>"<%
												if (category.getCategoryId() == product.getCaterogyId()){%>selected<%}%>><%=category.getCategoryName()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<div class="row no-gutters">
										<div class="col-6 col-md-4">
											<label class="label-input">Price</label>
										</div>
										<div class="col-12 col-sm-6 col-md-8">
											<input type="text" class="form-control" name="price" value="<%=product.getPrice() %>">
										</div>
									</div>
									<div class="row no-gutters">
										<div class="col-6 col-md-4">
											<label class="label-input">Description</label>
										</div>
										<div class="col-12 col-sm-6 col-md-8">
											<textarea cols="100" rows="15" name="description"><%=product.getDescription() %>
										</textarea>
										</div>
									</div>
									<div class="row no-gutters">
										<div class="col-6 col-md-4">
											<label class="label-input">Choose image</label>
										</div>
										<div class="col-12 col-sm-6 col-md-8">
											<input type="hidden" name="image" id="Image" value="<%=product.getImage() %>" />
											<img class="small-img" src="<%=product.getImage() %>">
											<input type="button" value="Chọn ảnh ..." onclick="BrowseServer();" />
										</div>
									</div>
									<div class="row no-gutters">
										<div class="col-6 col-md-4"></div>
										<div class="col-12 col-sm-6 col-md-8">
											<input type="submit" class="btn btn-success" value="Edit">
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>