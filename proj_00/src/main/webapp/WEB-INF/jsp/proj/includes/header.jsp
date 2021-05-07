<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 캐시 삭제 -->
<%
response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setDateHeader("Expires", 0L); 
%>


<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="/assets/css/flaticon.css">
<link rel="stylesheet" href="/assets/css/slicknav.css">
<link rel="stylesheet" href="/assets/css/animate.min.css">
<link rel="stylesheet" href="/assets/css/magnific-popup.css">
<link rel="stylesheet" href="/assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="/assets/css/themify-icons.css">
<link rel="stylesheet" href="/assets/css/slick.css">
<link rel="stylesheet" href="/assets/css/nice-select.css">
<link rel="stylesheet" href="/assets/css/style.css">
</head>


<body>
	<header> <!-- Header Start -->
	<div class="header-area">
		<div class="main-header header-sticky">
			<div class="container-fluid">
				<div class="menu-wrapper">
					<div class="logo">
						<a href="/main.do"><img src="../assets/img/logo/logo.png"
							alt=""></a>
					</div>

					<div class="header-right">
						<ul>
							<li><a href="/main.do"><span class="flaticon-home"></span></a></li>
							<li><a href="/prod/shop.do"><span class="flaticon-shop"></span></a></li>

							<c:choose>
								<c:when test="${login == null}">
									<li><a href="/user/signUp.do"><span
											class="flaticon-signup"></span></a></li>
									<li><a href="/user/login.do"><span
											class="flaticon-login"></span></a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/user/logout.do"><span
											class="flaticon-logout"></span></a></li>
									<li><a href="/prod/cart.do"><span
											class="flaticon-cart"></span></a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
				<!-- Mobile Menu -->
				<div class="col-12">
					<div class="mobile_menu d-block d-lg-none"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End --> </header>