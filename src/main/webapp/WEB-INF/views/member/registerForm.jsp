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
#password_check_text {
	display: none;
}
</style>
<body>
	<div class="click_to_main_wrap">
		<div class="click_to_main">
			<a href="/"> <img class="click_to_main_img" alt="home"
				src="https://play-lh.googleusercontent.com/4cS8aXSShTIbDAxCZmPAzea6jpsnV2rwAlDtIz72N0o7ecyWzN7mOtEaCUoLVvj5kkk">
				<h2 id="click_to_main_title">내일의집</h2></a>
		</div>
	</div>
	<form action="/member/registForm" method="post">
		<div class="wrap wd668">
			<div class="container">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">회원가입</h2>
					<div class="social_login">
						<p>SNS계정으로 간편하게 회원가입</p>
						<img class="social_register_icon" alt="facebook"
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMagFWd712STKEMqqS4dxPUiuElED_XAXiUQ&usqp=CAU">
						<img class="social_register_icon" alt="kakaotalk"
							src="https://blog.kakaocdn.net/dn/Sq4OD/btqzlkr13eD/dYwFnscXEA6YIOHckdPDDk/img.jpg">
						<img class="social_register_icon" alt="naver"
							src="data:image/jpeg;base64,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">
					</div>
					<!-- social_login -->
					<div class="join_form">
						<table>
							<colgroup>
								<col width="30%" />
								<col width="auto" />
							</colgroup>
							<tbody>
								<tr class="email">
									<th><span>이메일</span></th>
									<td><input type="text" class="email" placeholder="이메일"
										name="email1" id="email1"> <span class="mar10">@</span> <input
										type="text" class="email email2" name="email2" id="email2"> 
										<a class="btn_confirm" onclick="startTimer();">인증번호 발송</a></td>
								</tr>
								<tr>
									<th><span>인증번호 확인</span></th>
									<td><input type="text" class="send_number" id="time_check"> 
										<a class="btn_confirm" >인증번호 확인</a><span id="timer">10:00</span></td>
								</tr>
								<tr>
									<th><span>비밀번호</span></th>
									<td><input type="password" id="password"
										placeholder="비밀번호를 입력해주세요." name="password"></td>
								</tr>
								<tr>
									<th><span>비밀번호 확인</span></th>
									<td><input type="password" id="passwordConfirm"
										placeholder="비밀번호를 확인하세요" ></td>
								</tr>
								<tr>
									<th><span>닉네임</span></th>
									<td><input type="text" placeholder="닉네임을 입력해주세요"
										name="nickname" id="nickname"></td>
								</tr>

							</tbody>
						</table>
						<div class="exform_txt">
							<span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span>
						</div>
					</div>
					<!-- join_form E  -->
					<div class="agree_wrap">
						<div class="checkbox_wrap">
							<input type="checkbox" id="news_letter" name="news_letter"
								class="agree_chk"> <label for="news_letter">[선택]뉴스레터
								수신동의</label>
						</div>
						<div class="checkbox_wrap mar27">
							<input type="checkbox" id="marketing" name="marketing"
								class="agree_chk"> <label for="marketing">[선택]마케팅
								목적 개인정보 수집 및 이용에 대한 동의</label>
							<ul class="explan_txt">
								<li><span class="red_txt"><br>항목 : 이메일, 닉네임</span></li>
								<li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br /> 대해
									동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br /> 다만 이때 회원 대상 서비스가
									제한될 수 있습니다.
								</li>
							</ul>
						</div>
					</div>
					<div id="btn_wrap">
						<button type="button" id="submit_button" onclick="submit_click();">
							<a>회원가입하기</a>
						</button>
					</div>
					<div class="moveTologinForm">
						<p>
							이미 아이디가 있으신가요? <a href="/member/login">로그인</a>
						</p>
						<br> <br>
					</div>
				</div>
				<!-- form_txtInput E -->
			</div>
			<!-- content E-->
		</div>
		<!-- container E -->
	</form>

	<script type="text/javascript">

	function submit_click() {
		
		//입력한 비밀번호와 비밀번호 체크가 동일한지 확인
		if (document.getElementById('password').value != document.getElementById('passwordConfirm').value) {   
			alert("동일한 비밀번호를 입력해주세요.");
			document.getElementById('password').focus();
			document.getElementById('password').value = "";
			document.getElementById('passwordConfirm').value = "";
			return;
			}
		
		/* var email01 = /^([0-9a-zA-Z_\.-]+);
		var email02 = ([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

		var email = document.getElementById('email1').value;
		var emai2 = document.getElementById('email2').value;
		
		if (email == '' || !email01.test(email)) {
		alert("올바른 이메일 주소를 입력하세요");
		document.getElementById('email1').focus();
		document.getElementById('email1').value = "";
		return;
		} */
		
		
		//중복된 닉네임 있는지 ajax로 값 넘겨서 확인 후 데이터 받아오기
		var nickname = document.getElementById('nickname').value;  
		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath }/member/nicknameSearch",
			data : {
				nickname: nickname
			},
			success : function(data) {
				if(data.trim()=='overlap'){
					alert("중복된 닉네임 입니다. 다른 닉네임을 입력해주세요.");
					document.getElementById('nickname').focus();
					document.getElementById('nickname').value = "";
				}
			}
		}); //end ajax
	}//submit_click()
	


	
	var auth_minutes = 60 * 10; //10분
    display = document.getElementById('timer'); 
	//인증번호 발송 누르면 타이머 시작
	function startTimer() {
	    var timer = auth_minutes, minutes, seconds;
	    setInterval(function () {
	        minutes = parseInt(timer / 60, 10);
	        seconds = parseInt(timer % 60, 10);

	        minutes = minutes < 10 ? "0" + minutes : minutes;
	        seconds = seconds < 10 ? "0" + seconds : seconds;

	        display.textContent = minutes + ":" + seconds;
	        display.style.color = 'red';

	        if (--timer == 0) {
	        	document.getElementById('time_check').style.color = '#9a9a9a';
	        	alert("인증 유효시간이 경과되었습니다. 다시 시도해주세요.");
	        	return;
	        }
	    }, 1000);
	}//startTimer()
	
	
	
		
	

</script>
</body>
</html>