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
						<h2>회원가입</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Hero Area End--> <!--================registration_part Area =================-->
<section class="login_part section_padding ">
<div class="container">
	<div class="row align-items-center">
		<div class="col-lg-9 col-md-9">

			<div class="login_part_form">
				<div class="login_part_form_iner">
					<h3>
						<br> 회원 정보 입력
					</h3>
					<form class="row contact_form" action="/user/insertUserInfo.do"
						id="signUp" method="post" novalidate="novalidate">
						<div class="col-md-7 form-group p_star">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="이름">
						</div>
						<div class="col-md-7 form-group p_star idInput">
							<input type="text" class="form-control" id="id" name="id"
								placeholder="아이디">
						</div>
						<span id="idText"></span> <button type="button" class="btn_5" id="idChkBtn">중복확인</button>
						<p class="col-md-7 cdt">·6~12까지 영문(소문자)/숫자만 허용</p>

						<div class="col-md-7 form-group p_star">
							<input type="password" class="form-control" id="pwd"
								name="pwd" placeholder="비밀번호">
						</div>
						<span id="pwdText"></span>
						<div class="col-md-7 form-group p_star">
							<input type="password" class="form-control" id="pwdCk"
								name="pwdCk" placeholder="비밀번호 확인">
						</div>
						<span id="pwdCkText"></span>

						<p class="cdt">
							·영문, 특수문자, 숫자를 반드시 1자 이상 포함하여, 9자 이상 12자 이하로 설정하셔야 합니다.<br>
							·비밀번호는 대문자, 소문자를 구별합니다.<br> ·특수문자 &lt;,>,”,’,_,+,\를 비밀번호로
							사용하실 수 없습니다.
						</p>

						<div class="col-md-6 form-group">
							<button type="button" id="okBtn" class="btn_3">
								가입</button>

						</div>
						<div class="col-md-6 form-group">

							<button type="reset" class="btn_3">
								취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-3">
			<div class="login_part_text text-center">
				<div class="login_part_text_iner">
					<h2>Welcome!</h2>
					<a href="/user/login.do" class="btn_3">로그인하기</a>
				</div>
			</div>
		</div>
	</div>
</div>
</section> <!--================login_part end =================--> </main>
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
var idChk;
var idChk2;
var pwdChk;
var pwdChk2;


// 아이디 유효성
$("#id").keyup(function(){
	var id = $("#id").val().trim();
	var idJ = /^[a-z0-9]{6,12}$/;
	
	if(!idJ.test(id)){
		$("#idText").attr("class", "org_text").text("부적합");
		idChk = false;
	}else{
		if(id = ""){
			$("#idText").attr("class", "org_text").text("부적합");
			idChk = false;
		}
		$("#idText").attr("class", "blue_text").text("적합");
		idChk = true;
	}
});

// 아이디 중복확인
$("#idChkBtn").click(function(){
	var id = $("#id").val().trim();

	if(idChk){
		
		$.ajax({
			type : "post",
			url : "/user/userIdChk.do",
			data : {id : id},
			success : function(result){
				if(result == "false"){
					alert("이미 사용중인 아이디입니다.");
					idChk2 = false;
				}else{
					alert("사용 가능한 아이디입니다.");
					idChk2 = true;
				}
			},
			error : function(xhr, status, error){
				console.log(" code : " + xhr.status + " // message : " + xhr.responseText + " // error : " + error);
			}
		});
	}else{
		alert("사용 가능한 아이디를 입력해주세요.");
	}
});



// 비밀번호 유효성
$("#pwd").keyup(function(){
	var pwd = $("#pwd").val();
	var pwdCk = $("#pwdCk").val();

	var pwdJ = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*=-])(?=.*[0-9]).{9,12}$/;
	
	if(!pwdJ.test(pwd)){
		if(pwd == ""){
			alert("비밀번호를 입력해주세요");
		}
		$("#pwdText").attr("class", "org_text").text("부적합");
		pwChk = false;
	}else{
		$("#pwdText").attr("class", "blue_text").text("적합");
		pwChk = true;
	}
	
	// 비밀번호 일치 확인 후, 비밀번호 수정했을 경우 대비
	if(pwd != pwdCk){	
		$("#pwdCkText").attr("class", "org_text").text("불일치");
		pwChk2 = false;
	}else{
		$("#pwdCkText").attr("class", "blue_text").text("일치");
		pwChk2 = true;
	}
});

// 비밀번호 확인
$("#pwdCk").keyup(function(){
	var pwd = $("#pwd").val();
	var pwdCk = $("#pwdCk").val();
	
	if(pwd != pwdCk){	
		$("#pwdCkText").attr("class", "org_text").text("불일치");
		pwChk2 = false;
	}else{
		$("#pwdCkText").attr("class", "blue_text").text("일치");
		pwChk2 = true;
	}
});

// 가입
$("#okBtn").click(function(){
	
	if(idChk && idChk2 && pwChk && pwChk2){
		
		$("#signUp").attr("action", "/user/insertUserInfo.do");
		$("#signUp").submit();
		
	} else if($("#name").val() == ""){
		
		alert("이름을 입력해주세요.");
		$("#name").focus();
		
	} else if($("#id").val() == ""){
		
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		
	} else if(idChk == false){
		alert("입력하신 아이디를 확인해주세요.");
		$("#id").focus();

	} else if(idChk2 == null){
		alert("아이디 중복확인을 해주세요.");
		$("#idCkBtn").focus();

	} else if(idChk2 == false){
		alert("다른 아이디를 입력해주세요.");
		$("#id").focus();

	} else if(pwChk == false){
		alert("입력하신 비밀번호를 확인해주세요.");
		$("#pwd").focus();

	} else if(pwChk2 == false){
		alert("비밀번호가 일치하지 않습니다.");
		$("#pwdCk").focus();

	}
	
});

</script>

</html>