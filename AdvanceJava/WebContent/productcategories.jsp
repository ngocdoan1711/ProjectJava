<%@page import="cmc.com.vn.model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cmc.com.vn.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<meta charset="utf-8">
<title>Product Categories</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link rel="shortcut icon" href="img/icons/favicon.png">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900"
	rel="stylesheet">
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/owlcarousel/owl.carousel.min.css" rel="stylesheet">
<link href="lib/owlcarousel/owl.theme.min.css" rel="stylesheet">
<link href="lib/owlcarousel/owl.transitions.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
<%
ArrayList<Product> listProduct = (ArrayList<Product>) request.getAttribute("products");
Category category = (Category)request.getAttribute("category");
%>
	<div id="background-wrapper" class="buildings"
		data-stellar-background-ratio="0.1">
		<jsp:include page="./includes/header.jsp"></jsp:include>
	</div>
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="index.jsp">Trang chủ</a></li>
			<li><a href="<%=request.getContextPath()%>/Category?CategoryId=<%=category.getCategoryId() %>"><%=category.getCategoryName() %></a></li>
		</ul>
	</div>
	<div class="container">
		<div id="content" role="main">
			<div class="products-wapper">
				<div class="listing-title row-m-g-l">
					<h2>
						<span><%=category.getCategoryName() %></span>
					</h2>
				</div>
				<ul class="products-loop row clearfix">
				<%
					for(Product product : listProduct){ %>
					  <li class="col-lg-3 col-md-4 col-sm-6 ">
						<div class="item">
							<a href="<%=request.getContextPath()%>/Product?ProductId=<%=product.getProductId() %>" class="overlay-wrapper">
								<img src="<%=product.getImage()%>" alt="Product 1 image" class="img-responsive underlay medium-image">
								<span class="overlay">
								  <span class="overlay-content">
								  	<span class="h4"><%=product.getProductName() %></span>
								  </span>
							 	</span>
							</a>
							<div class="item-details bg-noise">
								<h4 class="item-title">
									<a href="<%=request.getContextPath()%>/Product?ProductId=<%=product.getProductId() %>"><%=product.getProductName() %></a>
								</h4>
								<a href="<%=request.getContextPath()%>/Product?ProductId=<%=product.getProductId() %>" class="btn btn-more"><i
									class="fa fa-plus"></i>Xem thêm</a>
							</div>
						</div>
					</li><%
					}
				%>
					
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="./includes/footer.jsp"></jsp:include>
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>