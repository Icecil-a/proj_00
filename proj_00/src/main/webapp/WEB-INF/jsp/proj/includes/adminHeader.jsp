<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- 캐시 삭제 -->
<%
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache"); 
response.setDateHeader("Expires", 0L); 
%>
<title>관리자</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/dataTables.min.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	<a class="navbar-brand" href="/main.do">TIME ZONE</a>
	<button class="btn btn-link btn-sm order-1 order-lg-0"
		id="sidebarToggle" onclick="location.href='/user/logout.do'">
		<i class="fas fa-sign-out-alt"></i>
	</button>
	</nav>