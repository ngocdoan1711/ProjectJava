<%@page import="java.util.ArrayList"%>
<%@page import="cmc.com.vn.model.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckfinder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Adminstrator Page</title>
<link href="${pageContext.request.contextPath}/admin/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/css/custom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/morrisjs/morris.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/admin/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<!-- Loading CKFinder -->
<script type="text/javascript" src="${pageContext.request.contextPath}/ckfinder/ckfinder.js"></script>
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
	ArrayList<Category> listCategory = (ArrayList<Category>)request.getAttribute("allCategory");
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
						<div class="panel-heading">Add Product</div>
						<div class="panel-body">
							<div class="row">
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Product name</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input class="form-control" name="productName"/>
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Category</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<select class="form-control" name="categoryId">
										<%for(Category category : listCategory) {%>
											<option value="<%=category.getCategoryId() %>"><%=category.getCategoryName() %></option>
										<%} %>
										</select>
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Price</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input type="text" class="form-control" name="price">
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Description</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<textarea name="description">
											Describe your Laptop by HTML code!
										</textarea>
										<!-- <input type="text" class="form-control" name="description"> -->
									</div>
								</div>
								<div class="row no-gutters">
									<div class="col-6 col-md-4">
										<label class="label-input">Choose image</label>
									</div>
									<div class="col-12 col-sm-6 col-md-8">
										<input type="text" name="image" id="Image"/>
										<input type="button" value="Chọn ảnh ..." onclick="BrowseServer();"/>
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