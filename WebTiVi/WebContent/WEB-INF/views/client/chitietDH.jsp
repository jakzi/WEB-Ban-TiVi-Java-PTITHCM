<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="vi">
<head>
	<base href="${pageContext.servletContext.contextPath}/">
	<meta charset="utf-8">
	<!-- Hỗ trợ kéo màn hình-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="resources/images/web/T-icon.ico" type="image/x-icon">
	<title>Trùm Điện Máy | Chi tiết đơn hàng</title>

	<!-- Bootstrap core CSS -->
	<link href="<c:url value='/resources/assets/dist/css/header.css' />" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link href="<c:url value='/resources/assets/dist/css/footer.css' />" rel="stylesheet">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="<c:url value="/resources/assets/dist/js/header.js"/>"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!-- Custom styles for this template -->
<style>
	super_container a,
	super_container a:hover,
	super_container a:visited,
	super_container a:active,
	super_container a:link {
		color: #ffc107;
		text-decoration: none;
		-webkit-font-smoothing: antialiased;
		-webkit-text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
		text-shadow: rgba(0, 0, 0, .01) 0 0 1px
	}
	
	body {
		color: #ffc107;
	}
	.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
    color: #000;
    background-color: #ffc107;
}
.btn-check {
    position: absolute;
    clip: rect(0,0,0,0);
    pointer-events: none;
}
	.currSign:after {
		content: ' VND';
	}
	.btn-outline-warning{
	margin-left:30%;
	}
	.btn{
	margin-top:-7%;
	}
	.clearfix{
overflow: auto;
}
	.img {
		width: 204px;
		height: 177px
	}
</style>
</head>
<body>
	<jsp:include page="phandau.jsp"></jsp:include>
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="trang-chu.htm">Trang chủ</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Trang cá nhân</li>
		</ol>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h3 class="text-info">${taiKhoan.tenTK}</h3>
				<p class="text-info">Xin chào! ${taiKhoan.hoTen}</p>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item">
						<a class="nav-link " href="tai-khoan.htm">Thông tin</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="doi-mat-khau.htm">Đổi mật khẩu</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="don-hang.htm">Đơn hàng</a>
					</li>
				</ul>
				<br>
			</div>
			<div class="col-sm-8">
	                    <c:forEach var="map" items="${dsCTDHcn}">
                        <div class="cart_box clearfix row">
                                <div class="list_img col-sm-4">
                                <img  src="resources/images/sanpham/${map.sanPhamCT.anh}" class="img rounded" alt="">
                                </div>
                                <div class="list_desc col-sm-8">
                                	<h4><a href="chi-tiet/${map.sanPhamCT.maSP }.htm"><c:out value="${map.sanPhamCT.tenSP}"/></a></h4>
                                	<h6 class="VND"><c:out value="${map.gia}"/></h6>
									Số lượng : <c:out value="${map.soLuong}" />
									<h6 class="VND"><c:out value="${map.soLuong *map.gia}"/></h6>
                                </div>
                        </div>
                        <hr>
                    </c:forEach>
			</div>
			
			</div>
		</div>
	<hr>
	<jsp:include page="phanduoi.jsp"></jsp:include>
		<script>
		let x = document.querySelectorAll(".VND");
		for (let i = 0, len = x.length; i < len; i++) {
			let num = Number(x[i].innerHTML)
				.toLocaleString('vn');
			x[i].innerHTML = num;
			x[i].classList.add("currSign");
		}
	</script>
</body>
</html>
