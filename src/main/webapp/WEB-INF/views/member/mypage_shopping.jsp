<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.Date" %> 
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
.mypage_shopping_state_all_wrap, .mypage_coupon_all_wrap, .mypage_point_all_wrap{
	display: flex;
	box-shadow: 0 1px 3px 0 #dbdbdb;
    border-radius: 4px;
    padding: 20px 10px;
}
.mypage_shopping_state_wrap{
	display: flex;
	margin: auto;
}
.mypage_shopping_all_wrap, .mypage_coupon_all_wrap, .mypage_point_all_wrap{
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
    flex-direction: column;
    text-align: left;
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
.mypage_coupon_button{
	background-color: #35c5f0;
    border-color: #35c5f0;
    color: #fff;
    padding: 15px 10px;
    line-height: 20px;
    font-size: 17px;
    min-height: 50px;
    width: 100%;
    border-radius: 5px;
    margin: 20px 0;
}
.mypage_coupon_wrap{
	position: relative;
    box-sizing: border-box;
    padding: 31px 20px 20px;
    margin-top: 10px;
    background-color: #fff;
    border: 1px solid #ededed;
    box-shadow: 0 2px 12px 0 #ededed;
    border-radius: 10px;
    width: 25%;
    display: inline-block;
}
.mypage_coupon_title{
	font-size: 15px;
    margin-bottom: 2px;
    cursor: pointer;
    font-weight: 700;
    color: #000;
    display: -webkit-box;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    word-wrap: break-word;
    -webkit-box-orient: vertical;
    overflow: hidden;
}
.mypage_coupon_sale_price{
	font-size: 20px;
	letter-spacing: -2px;
    color: #000;
    margin: 10px 0;
}
.mypage_coupon_date{
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-left: 3px;
    color: #757575;
    font-size: 11px;
    font-weight: 500;
    letter-spacing: .1px;
    line-height: 1.38;
}
.mypage_coupon_product{
	display: inline-block;
    margin-top: 16px;
    color: #35c5f0;
    font-weight: 700;
    font-size: 15px;
}
.mypage_point_keep_title{
	font-size: 24px;
    line-height: 32px;
    font-weight: 700;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.mypage_point_keep{
	font-size: 24px;
    line-height: 32px;
    font-weight: 700;
    color: rgb(53, 197, 240);
    margin-top: 4px;
    margin-block-start: 1em;
    margin-block-end: 1em;
}
.mypage_point_extinction{
	font-size: 14px;
    line-height: 18px;
    color: rgb(130, 140, 148);
    background-color: rgba(130, 140, 148, 0.1);
    padding: 5px 10px;
}
.mypage_point_wrap{
	margin: 10px auto;
}
#mypage_point_all_wrap{ display: none;}
#mypage_coupon_all_wrap{ display: none;}
.mypage_shopping_order_number_date{
	font-size: 16px;
    line-height: 24px;
    min-width: 160px;
    font-weight: 700;
    color: rgb(47, 52, 56);
    border-bottom: 2px solid rgb(237, 237, 237);
    padding-left: 20px;
    padding-bottom: 12px;
    padding-top: 20px;
}
.mypage_shopping_order_list_state{
	font-size: 14px;
    line-height: 24px;
    margin-bottom: 12px;
    padding: 4px 8px;
    background-color: rgb(247, 249, 250);
    display: inline-block;
    border-radius: 4px;
    font-weight: 700;
    color: rgb(53, 197, 240);
    margin: 10px 0;
    text-align: center;
}
.mypage_shopping_order_list_img{
	width: 100px;
	height: 100px;
	overflow: hidden;
	margin: 0 30px;
}
.mypage_shopping_order_list_image{
	width: 100px;
	height: 100px;
}
.mypage_shopping_order_list_wrap{
	display: flex;
}
.mypage_shopping_order_list_brand{
	display: block;
    font-size: 14px;
    line-height: 18px;
    font-weight: 500;
    margin-bottom: 6px;
}
.mypage_shopping_order_list_title{
	display: block;
    font-size: 16px;
    line-height: 20px;
    font-weight: bold;
}
.mypage_shopping_order_list_brand_title{
    height: 100%;
    width: 30%;
    text-align: center;
    align-items: center;
}
.mypage_shopping_order_list_price_count{
	width: 30%;
	text-align: center;
	line-height: 50px;
}
.mypage_shopping_order_list_button{
	background-color: #35c5f0;
    border-color: #35c5f0;
    color: #fff;
    padding: 10px 30px;
    height: 40px;
    border-radius: 5px;
    font-size: 14px;
}
.mypage_shopping_order_wrap{
	margin-bottom: 30px;
}

</style>

<c:set var="OrderManagement" value="${mypageMap.OrderManagement }" />
<c:set var="point" value="${mypageMap.point }" />
<c:set var="coupon" value="${mypageMap.coupon }" />



<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item " href="/member/mypage/main">프로필</a> <a
				class="header-lower__item active_" href="#">나의쇼핑</a> <a
				class="header-lower__item" href="/member/mypage/setting">설정</a>
		</div>
	</div>
</div>
<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item " onclick="menu_click_shopping_list();">주문배송내역조회</a> <a
				class="header-lower__item" onclick="menu_click_coupon();">쿠폰</a> <a
				class="header-lower__item" onclick="menu_click_point();">포인트</a> 
		</div>
	</div>
</div>


<!-- -------------------------------주문배송내역조회 탭 시작--------------------------------------------- -->
<div class="mypage_shopping_all_wrap" id="mypage_shopping_all_wrap">
	<div class="mypage_shopping_state_all_wrap">
	<div class="mypage_shopping_state_wrap">
	<c:set var="state_one" value="0"/>
	<c:set var="state_two" value="0"/>
	<c:set var="state_three" value="0"/>
	<c:set var="state_four" value="0"/>
	<c:set var="state_five" value="0"/>
	<c:set var="state_six" value="0"/>
	<c:forEach items="i" begin="0" end="${(fn:length(OrderManagement))-1}">
		<c:choose>
			<c:when test="${OrderManagement[i].deliveryState eq 5 }">
				${state_one + 1 }
			</c:when>
		</c:choose>
	</c:forEach>
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
			<p><a class="mypage_shopping_state_count">1</a></p>
		</div>
		<div class="mypage_shopping_state_arrow">
			<img class="mypage_shopping_state_arrow_image" alt="arrow" src="http://www.clipartbest.com/cliparts/acq/Lxr/acqLxrdRi.jpg">
		</div>
	</div>
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>배송완료</p>
			<p><a class="mypage_shopping_state_count">1</a></p>
		</div>
		<div class="mypage_shopping_state_arrow">
			<img class="mypage_shopping_state_arrow_image" alt="arrow" src="http://www.clipartbest.com/cliparts/acq/Lxr/acqLxrdRi.jpg">
		</div>
	</div>
	<div class="mypage_shopping_state_wrap">
		<div class="mypage_shopping_state_text">
			<p>구매확정</p>
			<p><a class="mypage_shopping_state_count">2</a></p>
		</div>
	</div>
	</div> <!-- mypage_shopping_state_all_wrap -->

	<div class="mypage_shopping_list_all_wrap">
		<div class="mypage_shopping_list_select">
			<select class="mypage_shopping_list_selector">
				<option>기간</option>
				<option>1개월 전</option>
				<option>3개월 전</option>
				<option>4개월 전</option>
				<option>1년 전</option>
				<option>2년 전</option>
				<option>3년 전</option>
			</select>
			
			<select class="mypage_shopping_list_selector">
				<option>주문상태</option>
				<option>입금대기</option>
				<option>결제완료</option>
				<option>배송준비</option>
				<option>배송중</option>
				<option>배송완료</option>
				<option>구매확정</option>
				<option>취소</option>
				<option>교환</option>
				<option>환불</option>
			</select>
		</div><!-- mypage_shopping_list_select -->
		
		<div class="mypage_shopping_order_all_wrap">
			<c:forEach var="i" begin="0" end="${(fn:length(OrderManagement))-1}">
				<div class="mypage_shopping_order_wrap">
					<div class="mypage_shopping_order_number_date">
						<p>${OrderManagement[i].goodsId } / <fmt:formatDate value="${OrderManagement[i].payOrderTime }" pattern="yyyy.MM.dd"/></p>
					</div>
					<div class="mypage_shopping_order_list_state">
						<c:choose>
							<c:when test="${OrderManagement[i].deliveryState eq '1' }">
								입금대기
							</c:when>
							<c:when test="${OrderManagement[i].deliveryState eq '2' }">
								결제완료
							</c:when>
							<c:when test="${OrderManagement[i].deliveryState eq '3' }">
								배송준비
							</c:when>
							<c:when test="${OrderManagement[i].deliveryState eq '4' }">
								배송중
							</c:when>
							<c:when test="${OrderManagement[i].deliveryState eq '5' }">
								배송완료
							</c:when>
							<c:when test="${OrderManagement[i].deliveryState eq '6' }">
								구매확정
							</c:when>
						</c:choose>
							
						</div>
					<div class="mypage_shopping_order_list_wrap">
						
						<div class="mypage_shopping_order_list_img">
							<img class="mypage_shopping_order_list_image" src="${contextPath}/productDownload?goodsId=${OrderManagement[i].goodsId}&fileName=${OrderManagement[i].productThumbnail}" alt="${OrderManagement[i].goodsName}">
						</div>
						<div class="mypage_shopping_order_list_brand_title">
							<p class="mypage_shopping_order_list_brand">${OrderManagement[i].goodsBrand }</p>
							<p class="mypage_shopping_order_list_title">${OrderManagement[i].goodsName }</p>
						</div>
						<c:set var="price" value="${OrderManagement[i].goodsPrice - (OrderManagement[i].goodsPrice*((OrderManagement[i].discountRate)/100)) }"/>
						<div class="mypage_shopping_order_list_price_count">
							<fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원 / ${OrderManagement[i].orderCount }개
						</div>
						<div class="mypage_shopping_order_list_button">
							<a>상세보기</a>
						</div>
					</div><!-- mypage_shopping_order_list_wrap -->
				</div><!-- mypage_shopping_order_wrap -->
			</c:forEach>
		</div><!-- mypage_shopping_order_all_wrap -->
		
	</div> <!-- mypage_shopping_list_all_wrap -->

</div> <!-- mypage_shopping_all_wrap -->
<!-- -------------------------------주문배송내역조회 탭 끝--------------------------------------------- -->


<!-- -------------------------------쿠폰 탭 시작--------------------------------------------- -->

<div class="mypage_coupon_all_wrap" id="mypage_coupon_all_wrap">
	<c:forEach var="i" begin="0" end="${(fn:length(coupon))-1}"> 
		<div class="mypage_coupon_wrap">
			<div class="mypage_coupon_title">
				${coupon[i].couponName }
			</div>
			<div class="mypage_coupon_sale_price">
				<h1 class="mypage_coupon_percent"><fmt:formatNumber type="number" maxFractionDigits="0"  value="${coupon[i].couponPercent }" />%</h1>
				<p class="mypage_coupon_date"><fmt:formatDate value="${coupon[i].endDate }" pattern="yyyy년 MM월 dd일까지"/></p>
				<a class="mypage_coupon_product">적용상품 보기 ></a>
			</div>
			<div class="mypage_coupon_button"><a href="#">스토어 가기</a></div>
		</div><!-- mypage_coupon_wrap -->
	</c:forEach> 
</div><!-- mypage_coupon_all_wrap -->

<!-- -------------------------------쿠폰 탭 끝--------------------------------------------- -->



<!-- -------------------------------포인트 탭 시작--------------------------------------------- -->
<c:set var="missing_after_month" value="0"/>
<c:set var="point_all" value="0"/>
<c:set var="monthAfter" value="<%=new Date(new Date().getTime() + 60*60*24*1000*30)%>"/>
<fmt:formatDate value="${now}" pattern="yyyyMMddhhmm" var="nowDate" />             <%-- 오늘날짜 --%>
<fmt:formatDate value="${monthAfter}" pattern="yyyyMMddHHmm" var="endDate"/>        <%-- 한달뒤날짜 --%> 

<%-- <c:forEach var="i" begin="0" end="${(fn:length(point))-1}">
	${point_all } += ${point[i].point}
	<c:if test="${nowDate < point[i].useDate && point[i].useDate < monthAfter}">
		${missing_after_month } += ${point[i].point}
	</c:if>
</c:forEach> --%>
<div class="mypage_point_all_wrap" id="mypage_point_all_wrap">
	<div class="mypage_point_wrap">
		<h2 class="mypage_point_keep_title">사용 가능한 포인트</h2>
		<h2 class="mypage_point_keep">${point_all } P</h2>
		<p class="mypage_point_extinction">30일 이내 소멸 예정 포인트<a>${missing_after_month } P</a></p>
	</div><!-- mypage_point_wrap -->
</div><!-- mypage_point_all_wrap -->

<!-- -------------------------------포인트 탭 끝--------------------------------------------- -->

<script type="text/javascript">

function menu_click_shopping_list() {
	document.getElementById('mypage_shopping_all_wrap').style.display = 'block';
	document.getElementById('mypage_point_all_wrap').style.display = 'none';
	document.getElementById('mypage_coupon_all_wrap').style.display = 'none';
}

function menu_click_coupon() {
	document.getElementById('mypage_coupon_all_wrap').style.display = 'block';
	document.getElementById('mypage_point_all_wrap').style.display = 'none';
	document.getElementById('mypage_shopping_all_wrap').style.display = 'none';
}

function menu_click_point() {
	document.getElementById('mypage_point_all_wrap').style.display = 'block';
	document.getElementById('mypage_coupon_all_wrap').style.display = 'none';
	document.getElementById('mypage_shopping_all_wrap').style.display = 'none';
}



</script>



<%@include file="../common/footer.jsp"%>