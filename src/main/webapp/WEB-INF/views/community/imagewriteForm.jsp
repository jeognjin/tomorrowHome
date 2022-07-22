<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내일의 집</title>

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"rel="stylesheet">

<!-- 아이콘 용 폰트 어썸 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- css -->
<link rel="stylesheet" href="${contextPath }/resources/css/style.css">

<style>
/* '내일의 집' _header  */
.header-upper__logo {
	font-size: 2rem;
	font-weight: 900;
}

/* '올리기'버튼 _header  */
.Form__writeBt {
	width: 8rem;
	height: 30px;
	color: #fff;
	padding: 8px 0 10px;
	background: #35c5f0;
	border-radius: 5px;
	text-align: center;
	line-height: 22px;
	cursor: pointer;
	position: relative;
	font-size: 1.1rem;
}

.Form__writeBt:hover {
	background: #189ec7;
}

/* '사진'_nav */
.header-lower__item.active {
	font-size: 1.2rem;
	font-weight: 900;
	color: #35c5f0;
}
/* section_container_main */
.container {
	padding: 0;
	width: 80%;
	margin: 2rem auto;
}

/* main _ul*/
.home-stories__content_search {
	margin: 50px 0;
	display: flex;
}

/* selelct : 평수/ 주거형태 / 스타일 _ul  */
.first {
	width: calc(100% /3);
}
 
/* li */
.search_li {
	padding: 10px;
	cursor: pointer;
}

 /* selelct : 평수/ 주거형태 / 스타일 / 공간 */
.search_Bt {
	width: 10rem;
	height: 2.5rem;
	color: #d8d8d8;
	padding: 10px 0;
	margin-bottom: 10px;
	background: #fff;
	border-radius: 5px;
	border: 2px solid #d8d8d8;
	text-align: center;
	line-height: 22px;
	cursor: pointer;
	position: relative;
	font-size: 14px;
	font-weight: 700;
}

.search_Bt:hover {
	background: #f0f0f0;
}
/* 반응형 */
@media (max-width: 784px) {
/* 반응형 : selelct 부분 */
.home-stories__content_search {
	margin: auto;
	}
.first {
	width: 100%;
	justify-content: space-around;
}
.search_Bt {
	width: 8rem;
	font-size: 13px;
	}
}

/* option : 평수/ 주거형태 / 스타일 / 공간    */
.search__lists_entry {
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-items: flex-start;
	flex-flow: column nowrap;
	background: #f5f5f5;
	padding: 0.5rem 1rem;
	margin: 0;
	border-radius: 5px;
	cursor: pointer;
	background: white;
	color: #757575;
	font-size: 14px;
	font-weight: bold;
}
/* 이미지 전송 /공간 / 내용 div */
.Form {	
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: space-between;
}
/*Form : 공간 / 내용 div */
.Form_second {
	display: inline-block;
	width: 45%;
}

/* 이미지 */
.add_image{
width:90%;
margin:0;
border: 2px dotted #d8d8d8;
}
/* tr */
.add_main_image{
color: #757575;
font-size: 14px;
font-weight: bold;

}
/* td */
#output{
width: 100%;
height: 100%;
}
/* 공간 버튼 */
.second{
width: 100%;
}
/* 사진 내용 */
.image_content{ 
    border-radius: 5px;
	border: 2px solid #d8d8d8;
	/** outline-color 속성을 추가하면 focus될 때 테두리 색상을 지정할 수 있다.**/
    outline-color: #35c5f0;
    font-size: 14px;
	font-weight: bold;
	color: black;
	padding: 10px;
	margin: auto; 
	width: 100%;
}

/* Detail 이미지 추가 버튼 */
.search_Bt_detail{
	width: 90%;
	height: 3rem;
	color: #757575;
	padding: 10px 0;
	margin-bottom: 10px;
	background: #ededed;
	border:none;
	border-radius: 5px;
	text-align: center;
	line-height: 22px;
	cursor: pointer;
	position: relative;
	font-size: 14px;
	font-weight: 700;
	margin: auto;

}
.search_Bt_detail:hover {
	background: #d8d8d8;
}

/* 반응형 */
@media (max-width: 784px) {
.Form {	
	display: inline-block;
	padding: 20px;	
 }
 
.Form_second {
	display: inline-block;
	width: 100%
}
}
/* 해시태그_#키워드 */
/* .Form_input {
	border: none;
	color: #757575;
	margin-top: 10px;
	padding: 5px;
	background: #f0f0f0;
	width: 150px;
	height: 35px;
	border-radius: 5px;
	font-weight: 900;
	display: flex;
}

.tag-item {
	padding: 5px;
	width: 150px;
	height: 35px;
	border: none;
	color: #757575;
	margin: 5px;
	padding: 5px;
	background: #f0f0f0;
	width: 150px;
	height: 35px;
	border-radius: 5px;
	font-weight: 900;
}

.Form {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
} */
</style>

 
<!-- jQuery 스크립트 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->

</head>


<body>
	<!-- body 전체 form으로 보냄 -->
	<form role="form" action="${contextPath}/community/imagewrite" method="post" onsubmit="return _onSubmit();" enctype="multipart/form-data">

			<!-- 전체 레이아웃--------------------------------------------------------------->
			<div class="wrap">
				<!-- 상단 네비게이션 영역 ---------------------------------------------------->
				<header class="header">

					<!-- 내일의 집  header------------------------------------------------------->
					<div class="header-upper">
						<div class="inner">

							<div class="header-upper__inner">
								<div class="header-upper__logo">내일의 집</div>
							</div>

							<div class="header-upper__service">

								<button type="submit" class="Form__writeBt" id="header_writeBt">
									올리기</button>
							</div>

						</div>
					</div>
					
					<!--사진 nav ----------------------------------------------------------- -->
					<div class="header-lower">
						<div class="inner">
							<nav id="header_community_nav_bar">
								<a class="header-lower__item active" href="">사진</a>
							</nav>
						</div>
					</div>
				 </header>
				</div>

				<!-- 글 작성 main  -->

				<!--글쓰기 선택 조건  -->
				<section class="container">

					<!-- selelct : 평수/ 주거형태 / 스타일  -->
					<ul class="home-stories__content_search first">

						<li class="search_li">
						<select class="search_Bt" name="acreage">
								<option value>평수</option>
								<option value="10평 미만" class="search__lists_entry">10평 미만</option>
								<option value="10평대" class="search__lists_entry">10평대</option>
								<option value="20평대" class="search__lists_entry">20평대</option>
								<option value="30평대" class="search__lists_entry">30평대</option>
								<option value="40평대" class="search__lists_entry">40평대</option>
								<option value="50평대 이상" class="search__lists_entry">50평대 이상</option>
						</select>
						</li>
						
						<li class="search_li">
						<select class="search_Bt" name="housingType">주거형태
								<option value>주거형태</option>
								<option value="원룸&오피스텔" class="search__lists_entry">원룸&오피스텔</option>
								<option value="아파트" class="search__lists_entry">아파트</option>
								<option value="빌라&연립" class="search__lists_entry">빌라&연립</option>
								<option value="단독주택" class="search__lists_entry">단독주택</option>
								<option value="사무공간" class="search__lists_entry">사무공간</option>
								<option value="상업공간" class="search__lists_entry">상업공간</option>
								<option value="기타" class="search__lists_entry">기타</option>
						</select>
						</li>

						<li class="search_li">
						<select class="search_Bt" name="interiorStyle">
								<option value>스타일</option>
								<option value="모던" class="search__lists_entry">모던</option>
								<option value="북유럽" class="search__lists_entry">북유럽</option>
								<option value="빈티지" class="search__lists_entry">빈티지</option>
								<option value="내추럴" class="search__lists_entry">내추럴</option>
								<option value="프로방스&로맨틱" class="search__lists_entry">프로방스&로맨틱</option>
								<option value="클래식&앤틱" class="search__lists_entry">클래식&앤틱</option>
								<option value="한국&아시아" class="search__lists_entry">한국&아시아</option>
								<option value="유니크" class="search__lists_entry">유니크</option>
						</select>
						</li>
					</ul>

			<!--사진 파일 /공간/ 내용 / #키워드 -->
			<div class="Form">
			<!-- 이미지 > db -->
			<div>

				<table cellspacing="10rem" cellpadding="5" class="add_image" id="add_image">
					<tr class="add_main_image">
						<td>Main<input type="file" name="main_image" onchange="loadFile(event)"><br></td>
						<td><img id="output" /></td>
					</tr>
					<tr>
						<td>Detail1<input type="file" name="detail_image1"><br>
						</td>
					</tr>
					<tr>
						<td>Detail2<input type="file" name="detail_image2"><br>
						</td>
					</tr>
					<tr>
						<td>Detail3<input type="file" name="detail_image3"><br>
						</td>
					</tr>
				</table>
				
				<!-- detail 상세 이미지 추가하기  input (datail_이미지 ) -->
				<!-- <input type='button' value='추가하기' class="search_Bt_detail" onclick='addRow()' /> -->
				</div>
				
				
				<!-- 공간 / 내용 -->
				<div class="Form_second">
				<select class="search_Bt second" name="space">
					<option value>공간(필수)</option>
					<option value="원룸" class="search__lists_entry">원룸</option>
					<option value="거실" class="search__lists_entry">거실</option>
					<option value="침실" class="search__lists_entry">침실</option>
					<option value="주방" class="search__lists_entry">주방</option>
					<option value="욕실" class="search__lists_entry">욕실</option>
					<option value="아이방" class="search__lists_entry">아이방</option>
					<option value="드레스룸" class="search__lists_entry">드레스룸</option>
					<option value="서재&작업실" class="search__lists_entry">서재&작업실</option>
					<option value="베란다" class="search__lists_entry">베란다</option>
					<option value="사무공간" class="search__lists_entry">사무공간</option>
					<option value="상업공간" class="search__lists_entry">상업공간</option>
					<option value="가구&소품" class="search__lists_entry">가구&소품</option>
					<option value="현관" class="search__lists_entry">현관</option>
					<option value="외관&기타"class="search__lists_entry">외관&기타</option>
				</select>
				
				<!-- 내용form  -->
				<textarea name="description" rows="20"  class="image_content" placeholder="사진에 대해 설명해주세요."></textarea>

			
				</div>
				
				
			</div>
			
		</section>
	</form>

<!-- detail 이미지 추가 버튼 -->
<!-- <script type="text/javascript">
function addRow() {
	
</script> -->

<!-- 이미지 저장 전 미리보기    -->
	<script type="text/javascript">		
	/* 이미지 미리 보기 */
	  var loadFile = function(event) {
	    var reader = new FileReader();
	    reader.onload = function(){
	    	
	      var output =  document.getElementById('output');
	      output.src = reader.result;
	      
	    };
	    reader.readAsDataURL(event.target.files[0]);
	  };
</script>

<!-- Form vailation -->
<script>
function _onSubmit(){

if($("#board_writer").val() == ""){
  	alert("작성자를 입력해주세요");
	$("#board_writer").focus();
	return false;
  }

if($("#board_title").val() == ""){
  	alert("제목을 입력해주세요");
	$("#board_title").focus();
	return false;
  }

if($("#board_content").val() == ""){
  	alert("내용을 입력해주세요");
	$("#board_content").focus();
	return false;
  }

if(!confirm("등록하시겠습니까?")){
return false;
}
}



</script>


</body>
</html>