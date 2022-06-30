<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet"
	href="${contextPath }/resources/css/memberRegistForm.css">
<%@include file="../common/header.jsp"%>
<!-- form css -->

<style>
.header-lower {
	display: none;
}

.mypage_top_navbar {
	display: block;
}

#header_community_nav_bar {
	text-align: center;
	margin: auto;
}

.active_ {
	color: #35c5f0;
	border-bottom: none;
}

.form_txtInput {
	text-align: justify;
}

.regist_form_wrap {
	position: relative;
	box-shadow: 0 1px 3px 0 rgb(0 0 0/ 20%);
	padding: 10px 20px 30px 20px;
	color: #292929;
	margin: 20px auto;
	max-width: 800px;
}

.gender{
	background-color: #fafafa;
    border-color: #bdbdbd;
}
.gender_wrap{
	display: flex;
}
.gender_wrap .gender{
	width: 20px;
	margin: 0 10px;
}
.header-upper{
	padding: 0;
	box-sizing: border-box;
}
.sub_tit_txt{
	margin: 20px 0 20px 20px;
}
#change_password_wrap{
	max-width: 500px;
}

</style>



<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item " href="/member/mypage/main">프로필</a> <a
				class="header-lower__item" href="">나의쇼핑</a> <a
				class="header-lower__item" href="">나의리뷰</a> <a
				class="header-lower__item active_" href="/member/mypage/setting">설정</a>
		</div>
	</div>
</div>
<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item" onclick="change_info();">회원정보수정</a> <a
				class="header-lower__item" >알림설정</a> <a
				class="header-lower__item" >사용자숨기기설정</a> <a
				class="header-lower__item">전문가신청</a> <a
				class="header-lower__item" onclick="change_password();">비밀번호변경</a> <a
				class="header-lower__item" >추천코드</a>
		</div>
	</div>
</div>
<div class="regist_form_wrap" id="regist_form_wrap">
	<form method="post" id="regist_form">
		<div class="wrap wd668">
			<div class="container">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt" style="margin-bottom: 50px;">회원정보수정</h2>
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
										name="email1" id="email1"> <span class="mar10">@</span>
										<input type="text" class="email email2" name="email2"
										id="email2"></td>
								</tr>
								<tr>
									<th><span>별명</span></th>
									<td><input type="text" 
										name="nickname" id="nickname"></td>
								</tr>
								<tr>
									<th>홈페이지</th>
									<td><input type="text" 
										name="homepage" id="homepage" placeholder="https://tomorrowhome.com"></td>
								</tr>
								<tr>
									<th>성별</th>
									<td>
									<div class="gender_wrap">
									<input type="radio" 
										name="gender" class="gender" value="male"><div class="gender_text">남성</div>
										<input type="radio" 
										name="gender" class="gender" value="female"><div class="gender_text">여성</div></div></td>
								</tr>
								<tr>
									<th>생년월일</th>
									<td><input type="date" 
										name="birthday" id="birthday" placeholder="YYYY-MM-DD"></td>
								</tr>
								<tr>
									<th>프로필이미지</th>
									<td><input type="file" 
										name="profileImage" id="profileImage"></td>
								</tr>
								<tr>
									<th>한줄소개</th>
									<td><input type="text" 
										name="lineIntroduction" id="lineIntroduction"></td>
								</tr>

							</tbody>
						</table>
						<div class="exform_txt">
							<span>표시는 필수적으로 입력해주셔야 수정이 가능합니다.</span>
						</div>
					</div>
					<!-- join_form E  -->

					<div id="btn_wrap">
						<button type="button" id="submit_button" onclick="submit_click();">
							<a>회원 정보 수정</a>
						</button>
					</div>
				</div>
				<!-- form_txtInput E -->
			</div>
			<!-- content E-->
		</div>
		<!-- container E -->
	</form>
</div>
<!-- ---------------------- 회원정보 수정 여기까지---------------------------------- -->

<div class="change_password_wrap regist_form_wrap" id="change_password_wrap">
	<form method="post" id="regist_form">
		<div class="wrap wd668">
			<div class="container">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt" >비밀번호변경</h2>
					<div class="join_form">
						<table>
							<colgroup>
								<col width="30%" />
								<col width="auto" />
							</colgroup>
							<tbody>
								<tr>
									<th>새 비밀번호</th>
								</tr>
								<tr>
									<td>영문, 숫자를 포함한 8자 이상의 비밀번호를 입력해주세요.</td>
								</tr>
								<tr>
									<td style="padding: 20px 0;"><input type="password" 
										name="password" id="password"></td>
								</tr>
								<tr>
								<th>새 비밀번호</th>
							</tr>
								<tr>
									<td style="padding: 20px 0;"><input type="password" 
										name="password_confirm" id="password_confirm"></td>
								</tr>
								
							</tbody>
						</table>
						
					</div>
					<!-- join_form E  -->

					<div id="btn_wrap">
						<button type="button" id="submit_button" onclick="submit_click();">
							<a>비밀번호 변경</a>
						</button>
					</div>
				</div>
				<!-- form_txtInput E -->
			</div>
			<!-- content E-->
		</div>
		<!-- container E -->
	</form>
</div>


<script type="text/javascript">

document.addEventListener("DOMContentLoaded", function(){
	document.getElementById('change_password_wrap').style.display = 'none';
});


function change_password() {
	document.getElementById('regist_form_wrap').style.display = 'none';
	document.getElementById('change_password_wrap').style.display = 'block';
}

function change_info() {
	document.getElementById('regist_form_wrap').style.display = 'block';
	document.getElementById('change_password_wrap').style.display = 'none';
}

</script>

<%@include file="../common/footer.jsp"%>