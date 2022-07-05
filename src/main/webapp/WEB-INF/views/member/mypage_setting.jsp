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

.gender {
	background-color: #fafafa;
	border-color: #bdbdbd;
}

.gender_wrap {
	display: flex;
}

.gender_wrap .gender {
	width: 20px;
	margin: 0 10px;
}

.header-upper {
	padding: 0;
	box-sizing: border-box;
}

.sub_tit_txt {
	margin: 20px 0 20px 20px;
}

#change_password_wrap {
	max-width: 500px;
}

.mypage_profile_image {
	width: 200px;
	height: 200px;
}

.emil_guide {
	font-size: 12px;
	text-align: center;
}
</style>

<c:set var="memberInfo" value="${memberInfo }" />

<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item " href="/member/mypage/main">프로필</a> <a
				class="header-lower__item" href="/member/mypage/myShopping">나의쇼핑</a> <a
				class="header-lower__item active_" href="#">설정</a>
		</div>
	</div>
</div>
<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar mypage_setting_subbar">
			<a class="header-lower__item" onclick="change_info();">회원정보수정</a> <a
				class="header-lower__item" onclick="change_password();">비밀번호변경</a>
		</div>
	</div>
</div>
<div class="regist_form_wrap" id="regist_form_wrap">
	<form method="post" id="modify_form">
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
										name="email1" id="email1" value="${memberInfo.email1 }"
										readonly> <span class="mar10">@</span> <input
										type="text" class="email email2" name="email2" id="email2"
										value="${memberInfo.email2 }" readonly></td>
								</tr>
								<tr>
									<td class="emil_guide" colspan="2">이메일을 변경하시려면 운영자에게 이메일을
										보내주세요.</td>
								</tr>
								<tr>
									<th><span>별명</span></th>
									<td><input type="text" name="nickname" id="nickname"
										value="${memberInfo.nickname }"></td>
								</tr>
								<tr>
									<th>홈페이지</th>
									<td><input type="text" name="homepage" id="homepage"
										placeholder="https://tomorrowhome.com"
										value="${memberInfo.homepage }"></td>
								</tr>
								
								<tr>
									<th>생년월일</th>
									<td><input type="date" name="birthday" id="birthday"
										placeholder="YYYY-MM-DD" value="${memberInfo.birthday }"></td>
								</tr>
								<tr>
									<th>프로필이미지</th>
									<td><input type="file" name="profileImage"
										id="profileImage"> <c:choose>
											<c:when test="${not empty authUser.profileImage}">
												<img class="mypage_profile_image" alt="profile"
													src="${contextPath}/profileDownload?memberId=${authUser.memberId}&fileName=${authUser.profileImage}">
											</c:when>
											<c:otherwise>
												<img class="mypage_profile_image" alt="profile_image"
													src="https://ifh.cc/g/BVmFxg.jpg">
											</c:otherwise>
										</c:choose></td>
								</tr>
								<tr>
									<th>한줄소개</th>
									<td><input type="text" name="lineIntroduction"
										id="lineIntroduction" value="${memberInfo.lineIntroduction }"></td>
								</tr>

							</tbody>
						</table>
						<div class="exform_txt">
							<span>표시는 필수적으로 입력해주셔야 수정이 가능합니다.</span>
						</div>
					</div>
					<!-- join_form E  -->

					<div id="btn_wrap">
						<button type="button" onclick="submit_click();">
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

<div class="change_password_wrap regist_form_wrap"
	id="change_password_wrap">
	<form method="post" id="change_password_form">
		<div class="wrap wd668">
			<div class="container">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">비밀번호변경</h2>
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
									<th>새 비밀번호 확인</th>
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
						<button type="button" onclick="password_change_click();">
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
	document.addEventListener("DOMContentLoaded", function() {
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

	function submit_click() {

		//닉네임 변경하면 중복된 닉네임 있는지 ajax로 값 넘겨서 확인 후 데이터 받아오기
		let nickname = "<c:out value='${memberInfo.nickname}' />";
		let changeNickname = document.getElementById('nickname').value;
		
		
		if (nickname != changeNickname) { //닉네임 값이 바꼈는지 확인
			$.ajax({
				type : "post",
				async : false,
				url : "${contextPath }/member/nicknameSearch", //닉네임 중복체크
				data : {
					nickname : changeNickname
				},
				success : function(data) {
					if (data.trim() == 'overlap') {
						console.log('overlap');
						alert("중복된 닉네임 입니다. 다른 닉네임을 입력해주세요.");
						document.getElementById('nickname').focus();
						document.getElementById('nickname').value = "";
						return;

					} //end if (overlap)
					if(data.trim() == 'unused'){
						console.log('unused');
						modofy_submit();
					}//end if (unused)
				}// end success
			}); //end ajax
		} //end if
		

	}//submit_click()

	function modofy_submit() {
		console.log('modofy_submit');
		
		let memberId = "<c:out value='${memberInfo.memberId}' />";
		let homepage = document.getElementById('homepage').value;
		let birthday = document.getElementById('birthday').value;
		let lineIntroduction = document.getElementById('lineIntroduction').value;
		let changeNickname = document.getElementById('nickname').value;
		
		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath }/member/modify", //회원정보 수정
			data : {
				memberId : memberId,
				nickname : changeNickname,
				homepage : homepage,
				birthday : birthday,
				lineIntroduction : lineIntroduction
			},
			success : function(data) {
				if (data.trim() == 'success') {
					alert("회원정보 수정완료");
				} //end if
			}// end success

		}); //end ajax
	}

	function password_change_click() {
		
		let password = document.getElementById('password').value
		let password_confirm = document.getElementById('password_confirm').value
		let memberId = "<c:out value='${memberInfo.memberId}' />";
		
		if(password == ""){
			alert("비밀번호를 입력해주세요.");
			document.getElementById('password').focus();
			return;
		}
		if(password_confirm == ""){
			alert("비밀번호 확인을 입력해주세요.");
			document.getElementById('password_confirm').focus();
			return;
		}
		
		//입력한 비밀번호와 비밀번호 체크가 동일한지 확인
		if (password != password_confirm) {   
			alert("동일한 비밀번호를 입력해주세요.");
			document.getElementById('password').focus();
			document.getElementById('password').value = "";
			document.getElementById('password_confirm').value = "";
			return;
			}
		
		
		
		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath }/member/changePassword",
			data : {
				password : password,
				memberId : memberId
			},
			success : function(data) {
				if (data.trim() == 'success') {
					alert("비밀번호 변경 완료");
				}
			}
		}); //end ajax
		
	}
	
	/* $(document).ready(function() {
	


	 $("input[type='file']").change(function(e){

	 var formData = new FormData();
	
	 var inputFile = $("input[name='profileImage']");
	
	 var files = inputFile[0].files;
	
	 for(var i = 0; i < files.length; i++){

	 if(!checkExtension(files[i].name, files[i].size) ){
	 return false;
	 }
	 formData.append("uploadFile", files[i]);
	
	 }
	
	 $.ajax({
	 url: '/uploadProfileImage',
	 processData: false, 
	 contentType: false,data: 
	 formData,type: 'POST',
	 beforeSend: function(xhr) {
	 xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	 },
	 dataType:'json',
	 success: function(result){
	 console.log(result); 
	 showUploadResult(result); //업로드 결과 처리 함수 

	 }
	 }); //$.ajax
	
	 });    

	 function showUploadResult(uploadResultArr){
	
	 if(!uploadResultArr || uploadResultArr.length == 0){ return; }
	
	 var uploadUL = $(".uploadResult ul");
	
	 var str ="";
	
	 $(uploadResultArr).each(function(i, obj){
	
	 if(obj.image){
	 var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
	 str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
			str +" ><div>";
	 str += "<span> "+ obj.fileName+"</span>";
	 str += "<button type='button' data-file=\'"+fileCallPath+"\' "
			str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
	 str += "<img src='/display?fileName="+fileCallPath+"'>";
	 str += "</div>";
	 str +"</li>";
	 }else{
	 var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);			      
	 var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
	
	 str += "<li "
			str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
	 str += "<span> "+ obj.fileName+"</span>";
	 str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
			str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
	 str += "<img src='/resources/img/attach.png'></a>";
	 str += "</div>";
	 str +"</li>";
	 }

	 });
	
	 uploadUL.append(str);
	 }
	 }); */
</script>

<%@include file="../common/footer.jsp"%>