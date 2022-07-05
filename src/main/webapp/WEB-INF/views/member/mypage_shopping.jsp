<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@include file="../common/header.jsp"%>

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

.mypage_shopping_state_arrow{
	width: 20px;
	height: 20px;
	margin: 0 20px;
}
.mypage_shopping_state_arrow_image{
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.mypage_shopping_state_all_wrap{
	display: flex;
	box-shadow: 0 1px 3px 0 #dbdbdb;
    border-radius: 4px;
    padding: 20px 10px;
}
.mypage_shopping_state_wrap{
	display: flex;
	margin: auto;
}
.mypage_shopping_all_wrap{
	max-width: 1000px;
	margin: 50px auto;
	text-align: center;
}
.mypage_shopping_state_count{
	font-size: 20px;
    color: #35c5f0;
}
a{
	cursor: pointer;
}
.mypage_shopping_list_all_wrap{
	display: flex;
	box-shadow: 0 1px 3px 0 #dbdbdb;
    border-radius: 4px;
    padding: 20px 10px;
    margin: 40px 0;
}
.mypage_shopping_list_selector{
	font-size: 15px;
    line-height: 19px;
    padding: 7px 8px 6px;
    border-radius: 4px;
    background-color: #f5f5f5;
    border-color: #f5f5f5;
    color: #757575;
}
</style>


<c:set var="likeBoard" value="${mypageMap.likeBoard }" />
<c:set var="scrapBoard" value="${mypageMap.scrapBoard }" />
<c:set var="coupon" value="${mypageMap.coupon }" />
<c:set var="follwer" value="${mypageMap.follwer }" />
<c:set var="follwing" value="${mypageMap.follwing }" />
<c:set var="imageWriteByMember" value="${mypageMap.imageWriteByMember }" />
<c:set var="housewarmingWriteByMember"
	value="${mypageMap.housewarmingWriteByMember }" />

<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item " href="#">프로필</a> <a
				class="header-lower__item active_" href="/member/mypage/myShopping">나의쇼핑</a> <a
				class="header-lower__item" href="/member/mypage/setting">설정</a>
		</div>
	</div>
</div>
<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item " onclick="menu_click_showall();">주문배송내역조회</a> <a
				class="header-lower__item" onclick="menu_click_image();">쿠폰</a> <a
				class="header-lower__item" onclick="menu_click_housewarming();">포인트</a> 
		</div>
	</div>
</div>

<div class="mypage_shopping_all_wrap">
	<div class="mypage_shopping_state_all_wrap">
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>입금대기</p>
			<p><a class="mypage_shopping_state_count">0</a></p>
		</div>
		<div class="mypage_shopping_state_arrow">
			<img class="mypage_shopping_state_arrow_image" alt="arrow" src="http://www.clipartbest.com/cliparts/acq/Lxr/acqLxrdRi.jpg">
		</div>
	</div>
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>결제완료</p>
			<p><a class="mypage_shopping_state_count">0</a></p>
		</div>
		<div class="mypage_shopping_state_arrow">
			<img class="mypage_shopping_state_arrow_image" alt="arrow" src="http://www.clipartbest.com/cliparts/acq/Lxr/acqLxrdRi.jpg">
		</div>
	</div>
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>배송준비</p>
			<p><a class="mypage_shopping_state_count">0</a></p>
		</div>
		<div class="mypage_shopping_state_arrow">
			<img class="mypage_shopping_state_arrow_image" alt="arrow" src="http://www.clipartbest.com/cliparts/acq/Lxr/acqLxrdRi.jpg">
		</div>
	</div>
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>배송중</p>
			<p><a class="mypage_shopping_state_count">0</a></p>
		</div>
		<div class="mypage_shopping_state_arrow">
			<img class="mypage_shopping_state_arrow_image" alt="arrow" src="http://www.clipartbest.com/cliparts/acq/Lxr/acqLxrdRi.jpg">
		</div>
	</div>
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>배송완료</p>
			<p><a class="mypage_shopping_state_count">0</a></p>
		</div>
		<div class="mypage_shopping_state_arrow">
			<img class="mypage_shopping_state_arrow_image" alt="arrow" src="http://www.clipartbest.com/cliparts/acq/Lxr/acqLxrdRi.jpg">
		</div>
	</div>
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>구매확정</p>
			<p><a class="mypage_shopping_state_count">0</a></p>
		</div>
	</div>
	</div> <!-- mypage_shopping_state_all_wrap -->

	<div class="mypage_shopping_list_all_wrap">
		<div class="mypage_shopping_list_select">
			<select class="mypage_shopping_list_selector">
				<optgroup label="기간" >
					<option>1개월 전</option>
					<option>3개월 전</option>
					<option>4개월 전</option>
					<option>1년 전</option>
					<option>2년 전</option>
					<option>3년 전</option>
				</optgroup>
			</select>
			
			<select class="mypage_shopping_list_selector">
				<optgroup label="주문상태" >
					<option>입금대기</option>
					<option>결제완료</option>
					<option>배송준비</option>
					<option>배송중</option>
					<option>배송완료</option>
					<option>구매확정</option>
					<option>취소</option>
					<option>교환</option>
					<option>환불</option>
				</optgroup>
			</select>
		</div><!-- mypage_shopping_list_select -->
		
		<div class="mypage_shopping_list">
		</div> <!-- mypage_shopping_list -->
		
	</div> <!-- mypage_shopping_list_all_wrap -->

</div>


<script type="text/javascript">







</script>



<%@include file="../common/footer.jsp"%>