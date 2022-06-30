<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내일의 집</title>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">

<!-- 아이콘 용 폰트 어썸 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- 헤더 css -->
<link rel="stylesheet" href="${contextPath }/resources/css/style.css">

<!-- form css -->
<link rel="stylesheet"
	href="${contextPath }/resources/css/memberRegistForm.css">

<!-- jQuery 스크립트 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="jquery-3.6.0.min.js"></script>

<style>
body{
	position: relative;
}
form{
	position: absolute;
	left: 50%;
	top: 40%;
	transform: translate(-175px,-275px)
}
.click_to_main_img{
	width: 50px;
	height: 50px;
}
#click_to_main_title{
	font-size: 30px;
	top: -10px;
	margin-left: 10px;
}
.join_form table td{
	padding: 0;
}
.join_form table input{
	height: 50px;
	border-radius: 5px;
}
#btn_wrap {
	margin: 25px 0;
}
#login_pwReset_regist a{
	font-weight: bold;
	font-size: 14px;
	padding: 0 10px;
}
.wrap.wd668{
	max-width: 350px;
}
.click_to_main_wrap{
	text-align: center;
}
.click_to_main{
	display: inline-block;
}
@media ( max-width : 1023px ) {
body{
	position: relative;
}
form{
	position: absolute;
	left: 50%;
	top: 40%;
	transform: translate(-175px,-275px)
}
.click_to_main_img{
	width: 50px;
	height: 50px;
}
#click_to_main_title{
	font-size: 30px;
	top: -10px;
	margin-left: 10px;
}
.join_form table td{
	padding: 0;
}
.join_form table input{
	height: 50px;
	border-radius: 5px;
}
#btn_wrap {
	margin: 25px 0;
}
#login_pwReset_regist a{
	font-weight: bold;
	font-size: 14px;
	padding: 0 10px;
}
.wrap.wd668{
	max-width: 350px;
}
.click_to_main_wrap{
	text-align: center;
}
.click_to_main{
	display: inline-block;
}
}
</style>

</head>
<body>

<form action="/member/login" method="post" id="login_form">
		<div class="wrap wd668">
			<div class="container">
				<div class="form_txtInput">
					<div class="click_to_main_wrap">
						<div class="click_to_main">
							<a href="/"> <img class="click_to_main_img" alt="home"
								src="https://play-lh.googleusercontent.com/4cS8aXSShTIbDAxCZmPAzea6jpsnV2rwAlDtIz72N0o7ecyWzN7mOtEaCUoLVvj5kkk">
								<h2 id="click_to_main_title">내일의집</h2></a>
						</div>
					</div>
					
				<div class="join_form">
					<table>
						<colgroup>
							<col width="30%" />
							<col width="auto" />
						</colgroup>
						<tbody>
							<tr>
								<td><input type="email" id="login_email" required placeholder="이메일"></td>
							</tr>
							<tr>
								<td><input type="password" placeholder="비밀번호"
									name="password" id="login_password"></td>
							</tr>

						</tbody>
					</table>
					
				</div>
				<!-- join_form E  -->
			
				<div id="btn_wrap">
					<button type="button" id="submit_button" onclick="submit_click();">
						<a>로그인</a>
					</button>
				</div>
				
				<div id="login_pwReset_regist">
				<a href="#">비밀번호 재설정</a> <a href="/member/registForm">회원가입</a> 
				</div>
				
				<div class="social_login">
					<p>SNS계정으로 간편하게 로그인/회원가입</p>
					<img class="social_register_icon" alt="facebook"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMagFWd712STKEMqqS4dxPUiuElED_XAXiUQ&usqp=CAU">
					<img class="social_register_icon" alt="kakaotalk"
						src="https://blog.kakaocdn.net/dn/Sq4OD/btqzlkr13eD/dYwFnscXEA6YIOHckdPDDk/img.jpg">
					<img class="social_register_icon" alt="naver"
						src="data:image/jpeg;base64,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">
				</div>
				<!-- social_login -->

				<a href="#">로그인에 문제가 있으신가요?</a>
			</div>
			<!-- form_txtInput E -->
		</div>
		<!-- content E-->
	</div>
	<!-- container E -->
</form>



<script type="text/javascript">

	function submit_click() {
		
		let login_email = document.getElementById('login_email').value;
		let login_password = document.getElementById('login_password').value;

		//null체크
		if (login_email == '' ||  login_email == null) {   
			alert("이메일을 입력해주세요.");
			login_email.focus();
			return;
			}
		if (login_password == '' ||  login_password == null) {   
			alert("비밀번호를 입력해주세요.");
			login_password.focus();
			return;
			}
		
		//이메일 주소 @기준으로 분리
		let email = login_email.split('@');
		let email1 = email[0];
		let email2 = email[1];
		console.log("email1",email1);
		console.log("email2",email2);
		
	
		 //ajax로 인증번호 보내기
		$.ajax({
			type : "post",
			async : false,
			url : "/member/login",
			data : {
				email1: email1,
				email2: email2,
				password: login_password
			},
			success : function(data) {
				if(data.trim()=='success'){
					alert("로그인 성공");
					let url = '/';
					location.replace(url);
				}
				if(data.trim()=='fail'){
					alert("아이디 또는 비밀번호가 맞지 않습니다. 다시 시도해주세요.");
					document.getElementById('login_email').focus();
					login_email = "";
					login_password = "";
				}
				
			}
		}); //end ajax 	
	
	}//submit_click()
	


	

	
	
	
		
	

</script>

</body>
</html>