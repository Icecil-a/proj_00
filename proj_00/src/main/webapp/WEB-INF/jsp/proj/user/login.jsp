<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<%@ include file="../includes/header.jsp"%>
<main> <!-- Hero Area Start-->
<div class="slider-area ">
	<div class="single-slider slider-height2 d-flex align-items-center">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-12">
					<div class="hero-cap text-center">
						<h2>로그인</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Hero Area End-->
<body>
	<!--================login_part Area =================-->
	<section class="login_part section_padding ">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6 col-md-6">
				<div class="login_part_text text-center">
					<div class="login_part_text_iner">
						<h2>New to our Shop?</h2>
						<p>There are advances being made in science and technology
							everyday, and a good example of this is the</p>
						<a href="registration.html" class="btn_3">회원가입</a>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="login_part_form">
					<div class="login_part_form_iner">
						<h3>
							Welcome Back ! <br> Please Sign in now
						</h3>
						<form class="row contact_form" method="post" id="loginForm"
							novalidate="novalidate">
							<div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디">
							</div>
							<div class="col-md-12 form-group p_star">
								<input type="password" class="form-control" id="pwd"
									name="pwd" placeholder="비밀번호">
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account d-flex align-items-center">
									<input type="checkbox" id="f-option" name="selector"> <label
										for="f-option">Remember me</label>
								</div>
								<button type="button" id="loginBtn" class="btn_3">로그인</button>
<!-- 								<a class="lost_pass" href="#">forget password?</a> -->
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--================login_part end =================-->
</main>
<!--? Search model Begin -->
<div class="search-model-box">
	<div class="h-100 d-flex align-items-center justify-content-center">
		<div class="search-close-btn">+</div>
		<form class="search-model-form">
			<input type="text" id="search-input" placeholder="Searching key.....">
		</form>
	</div>
</div>
<!-- Search model end -->

<!-- JS here -->

<script src="/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="/assets/js/popper.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="/assets/js/owl.carousel.min.js"></script>
<script src="/assets/js/slick.min.js"></script>

<!-- One Page, Animated-HeadLin -->
<script src="/assets/js/wow.min.js"></script>
<script src="/assets/js/animated.headline.js"></script>

<!-- Scroll up, nice-select, sticky -->
<script src="/assets/js/jquery.scrollUp.min.js"></script>
<script src="/assets/js/jquery.nice-select.min.js"></script>
<script src="/assets/js/jquery.sticky.js"></script>
<script src="/assets/js/jquery.magnific-popup.js"></script>

<!-- contact js -->
<script src="/assets/js/contact.js"></script>
<script src="/assets/js/jquery.form.js"></script>
<script src="/assets/js/jquery.validate.min.js"></script>
<script src="/assets/js/mail-script.js"></script>
<script src="/assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="/assets/js/plugins.js"></script>
<script src="/assets/js/main.js"></script>
</body>

<script type="text/javascript">
$("#loginBtn").click(function(){
	var inputID = $("#id").val();
	var inputPWD = $("#pwd").val();
	
	if(inputID == ""){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
	}
	
	if(inputPWD == ""){
		alert("비밀번호를 입력해주세요.");
		$("#pwd").focus();
	}
	
	if(inputID != "" && inputPWD != ""){
// 		var data = $("#loginForm").serialize();
		$("#loginForm").attr("action", "/user/loginProc.do");
		$("#loginForm").submit();
	}


});
</script>
</html>