<%@page import="cmc.com.vn.model.Category"%>
<%@page import="cmc.com.vn.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<meta charset="UTF-8">
<title>Detail Product</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link rel="shortcut icon" href="img/icons/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="img/icons/114x114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/icons/72x72.png">
<link rel="apple-touch-icon-precomposed" href="img/icons/default.png">
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
	Product product = (Product)request.getAttribute("product");
	Category category = (Category)request.getAttribute("category");
%>
	<div id="background-wrapper" class="buildings"
		data-stellar-background-ratio="0.1">
		<jsp:include page="./includes/header.jsp"></jsp:include>
	</div>
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="index.html">Trang chủ</a></li>
			<li><a
				href="${pageContext.request.contextPath}/Category?CategoryId=<%=category.getCategoryId()%>"><%=category.getCategoryName() %></a></li>
			<li><a
				href="${pageContext.request.contextPath}/Product?ProductId=<%=product.getProductId() %>"><%=product.getProductName() %></a></li>
		</ul>
		<div id="content" class="container row">
			<div class="row row-m-g-l">
				<h2><%=product.getProductName() %></h2>
			</div>
			<div id="contents-details"
				class="col-lg-9 col-md-8 col-sm-8 col-xs-12">
				<div class="container">
					<div class="singgle-product clearfix">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<img src="<%=product.getImage() %>" />
							</div>
							<div
								class="product-summary col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<h1 class="product_title"><%=product.getProductName() %></h1>
								<div class="product-description">
									<h2 class="quick-overview">MÔ TẢ SẢN PHẨM:</h2>
									<p></p>
									<%=product.getDescription() %>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="row"></div>
						</div>
					</div>
					<div class="row text-center">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<button type="button" class="btn btn-success text-center">Đặt mua</button>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="alert alert-info text-center" role="alert">
								Giá: <%=product.getPrice() %> VNĐ
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-lg-12">
				<div class="tab">
					<button class="tablinks"
						onclick="openCity(event, 'products_describe')">Mô tả</button>
					<button class="tablinks"
						onclick="openCity(event, 'products_reviews')">Đánh giá</button>
				</div>
				<div id="products_describe" class="tabcontent">
					<h2>Mô tả sản phẩm</h2>
					<div class="panel" style="display: block;">
						<p>
							<strong>Đánh giá HP Elitebook Folio 9480M</strong>
						</p>
						<p>HP Elitebook Folio 9480M cấu hình cao, kiểu dáng đẹp và màu
							sắc sang trọng HP Elitebook Folio 9480M sự lựa chọn hoàn hảo
							nhất cho các bạn nữ và nhân viên văn phòng nói chung. Đó là
							những gì chúng ta có thể thấy được ở HP Elitebook Folio
							9480M.</p>
						<p>
							<img class="aligncenter wp-image-8399 size-large"
								src="https://laptopphonglinh.com/wp-content/uploads/2017/01/HP-elitebook-folio-i5-1024x1024.jpg"
								alt="" width="940" height="940">
						</p>
						<p>
							<strong>LAPTOP HP Elitebook Folio 9480M</strong> là một mẫu sản
							phẩm với thân hình mỏng nhẹ và mang phong cách rất riêng của
							mình. <strong>HP Elitebook Folio 9480M</strong> nằm trong danh
							sách Ultrabook nên có thiết kế rất đẹp mắt nhưng cũng rất mạnh mẽ
							trên thị trường hiện nay.
						</p>
					</div>
				</div>
				<div id="products_reviews" class="tabcontent">
					<h3>Paris</h3>
					<p>Paris is the capital of France.</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	<jsp:include page="./includes/footer.jsp"></jsp:include>
	<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }
    openCity(event,products_describe);
</script>
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/stellar/stellar.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/color-switcher.js"></script>
</body>
</html>