<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

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
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper">
<!--                          Logo  -->
                        <div class="logo">
                            <a href="/main.do"><img src="../assets/img/logo/logo.png" alt=""></a>
                        </div>
<!--                          Main-menu  -->
<!--                         <div class="main-menu d-none d-lg-block"> -->
<!--                             <nav>                                                 -->
<!--                                 <ul id="navigation">   -->
<!--                                     <li><a href="/main.do">Home</a></li> -->
<!--                                     <li><a href="shop.html">shop</a></li> -->
<!--                                     <li><a href="about.html">about</a></li> -->
<!--                                     <li class="hot"><a href="#">Latest</a> -->
<!--                                         <ul class="submenu"> -->
<!--                                             <li><a href="shop.html"> Product list</a></li> -->
<!--                                             <li><a href="product_details.html"> Product Details</a></li> -->
<!--                                         </ul> -->
<!--                                     </li> -->
<!--                                     <li><a href="blog.html">Blog</a> -->
<!--                                         <ul class="submenu"> -->
<!--                                             <li><a href="blog.html">Blog</a></li> -->
<!--                                             <li><a href="blog-details.html">Blog Details</a></li> -->
<!--                                         </ul> -->
<!--                                     </li> -->
<!--                                     <li><a href="#">Pages</a> -->
<!--                                         <ul class="submenu"> -->
<!--                                             <li><a href="login.html">Login</a></li> -->
<!--                                             <li><a href="cart.html">Cart</a></li> -->
<!--                                             <li><a href="elements.html">Element</a></li> -->
<!--                                             <li><a href="confirmation.html">Confirmation</a></li> -->
<!--                                             <li><a href="checkout.html">Product Checkout</a></li> -->
<!--                                         </ul> -->
<!--                                     </li> -->
<!--                                     <li><a href="contact.html">Contact</a></li> -->
<!--                                 </ul> -->
<!--                             </nav> -->
<!--                         </div> -->
                        <!-- Header Right -->
                        <div class="header-right">
                            <ul>
                                <li> <a href="/main.do"><span class="flaticon-home"></span></a></li>
                                <li> <a href="/product/shop.do"><span class="flaticon-shop"></span></a></li>
                                <li>
                                    <div class="nav-search search-switch">
                                        <span class="flaticon-search"></span>
                                    </div>
                                </li>
<%-- 								<c:choose><c:when test=""> --%>
	                               <li> <a href="/user/signUp.do"><span class="flaticon-signup"></span></a></li>
	                               <li> <a href="/user/login.do"><span class="flaticon-user"></span></a></li>
<%--                                 </c:when></c:choose> --%>
<%--                                 <c:choose><c:when test=""> --%>
<!-- 	                               <li> <a href="logout.html"><span class="flaticon-user"></span></a></li> -->
<%--                                 </c:when></c:choose> --%>
                                <li><a href="cart.html"><span class="flaticon-shopping-cart"></span></a></li>
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
        <!-- Header End -->
    </header>