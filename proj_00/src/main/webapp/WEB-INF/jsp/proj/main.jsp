<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Watch shop</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet'>
<!-- Syntax Highlighter -->
<link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shCore.css" media="all">
<link rel="stylesheet" type="text/css" href="syntax-highlighter/styles/shThemeDefault.css" media="all">
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Normalize/Reset CSS-->
<link rel="stylesheet" href="css/normalize.min.css">
<link rel="stylesheet" href="css/main.css"></head>
<%-- <%@ include file="./includes/mainHeader.jsp" %> --%>
<%@ include file="./includes/header.jsp" %>
	
<body id="welcome">


<!-- Main Wrapper -->
<div id="main-wrapper">
<div class="main-content">
	<section id="welcome">
		<div class="content-header">
			<h1>Watch shop</h1>
		</div>
		<div class="welcome">
			<h2 class="twenty">Welcome To Watch shop</h2>
			<p>Firstly, a huge thanks for purchasing this theme, your support is truly appreciated!</p>
			<p>This document covers the installation and use of this theme and often reveals answers to common problems and issues - read this document thoroughly if you are experiencing any difficulties. If you have any questions that are beyond the scope of this document. Thank you so much!</p>
			<button class="black-btn" onclick="">Go shopping</button>
		</div>

	</section>

</div>
</div>

<!-- Essential JavaScript Libraries
	==============================================-->
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.nav.js"></script>
	<script type="text/javascript" src="syntax-highlighter/scripts/shCore.js"></script> 
	<script type="text/javascript" src="syntax-highlighter/scripts/shBrushXml.js"></script> 
	<script type="text/javascript" src="syntax-highlighter/scripts/shBrushCss.js"></script> 
	<script type="text/javascript" src="syntax-highlighter/scripts/shBrushJScript.js"></script> 
	<script type="text/javascript" src="syntax-highlighter/scripts/shBrushPhp.js"></script> 
	<script type="text/javascript">
		SyntaxHighlighter.all()
	</script>
	<script type="text/javascript" src="js/custom.js"></script>

</body>
<script type="text/javascript">
$().ready(function(){
	var msg = "${msg}";

	if(msg != ""){
		alert(msg);
	}
});
</script>
</html>