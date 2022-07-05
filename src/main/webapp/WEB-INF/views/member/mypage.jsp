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

.mypage_profile_image {
	width: 120px;
	height: 120px;
	margin: auto;
	border-radius: 70px;
}

.mypage_side_profile_card {
	padding: 30px 25px 18px;
	border-radius: 4px;
	border: 1px solid #dadce0;
	box-shadow: 0 2px 4px 0 rgb(63 71 77/ 6%);
	padding-left: 10px;
	padding-right: 10px;
	width: 25%;
	text-align: center;
	margin: 20px 20px;
}


/* .mypage_profile_share {
	display: inline-block;
	margin: 0;
	padding: 0;
	border: none;
	background: none;
	font: inherit;
	color: #424242;
	font-size: 24px;
	width: 24;
	height: 24;
	fill: currentcolor;
	overflow: hidden;
	position: absolute;
	top: 10px;
	left: 10px;
} */

.mypage_profile_nickname {
	line-height: 1.15;
	margin: 10px;
	font-size: 26px;
	overflow-wrap: break-word;
	word-break: break-all;
	font-weight: bold;
}

.mypage_profile_follow {
	margin: 0 0 13px;
	display: block;
	font-size: 13px;
	font-weight: 400;
	line-height: 19px;
	color: #828c94;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.mypage_profile_setting {
	padding-left: 16px;
	padding-right: 16px;
	font-weight: normal;
	font-size: 12px;
	color: #292929;
	padding: 5px 7px 6px;
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid #dbdbdb;
	background: none;
	text-align: center;
	border-radius: 4px;
	cursor: pointer;
	width: 60px;
	height: 30px;
	margin-bottom: 20px;
}

.mypage_profile_detail_wrap {
	padding: 20px;
	border-top: 1px solid #eaebef;
	font-size: 15px;
	color: #292929;
	display: table-cell;
	margin: auto;
}

.mypage_profile_detail_icon i {
	font-size: 35px;
}



.mypage_show_all_wrap {
	display: flex; 
	max-width: 1200px;
	margin: auto;
}

.mypage_show_all_images {
	border: 1px dashed gray;
	height: 200px;
	margin: 10px auto;
	text-align: center;
	line-height: 14;
	font-size: 14px;
	color: gray;
}

.mypage_show_all_title {
	width: 90%;
	font-size: 18px;
	font-weight: bold;
	margin: 10px auto;
}

.mypage_show_all_title a {
	font-size: 18px;
	color: #35c5f0;
	margin-left: 5px;
}

.active_ {
	color: #35c5f0;
	border-bottom: none;
}

.mypage_profile_detail_title {
	margin: 10px auto;
}

.housewarmingWriteByMemberWrap {
	width: 180px;
	height: 150px;
	float: left;
	margin: 25px 4px;
	overflow: hidden;
}
.housewarmingWriteByMemberWrap:hover{
	
  overflow: hidden;
}
.housewarmingWriteByMemberWrap img:hover{
	-ms-transform: scale(1.2); /* IE 9 */
  -webkit-transform: scale(1.2); /* Safari 3-8 */
  transform: scale(1.2); 
      transition: 0.3s;
}
.housewarmingWriteByMemberImage {
	width: 100%;
	height: 100%;
	object-fit: cover;
	border-radius: 5px;
}
.mypage_show_all_all {
	border: none;
	height: auto;
	width: 90%;
	margin: 10px auto;
	text-align: center;
	line-height: 14;
	font-size: 14px;
	color: gray;
}

a{
	cursor: pointer;
}
.menu_image{
	display: flex;
}
#menu_image{ display: none;}
#menu_housewarming{ display: none;}
#menu_scrapbook{ display: none;}
#menu_like{ display: none;}
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
			<a class="header-lower__item active_" href="#">프로필</a> <a
				class="header-lower__item" href="/member/mypage/myShopping">나의쇼핑</a> <a
				class="header-lower__item" href="/member/mypage/setting">설정</a>
		</div>
	</div>
</div>
<div class="header-lower mypage_top_navbar">
	<div class="inner">
		<div id="header_community_nav_bar">
			<a class="header-lower__item " onclick="menu_click_showall();">모두보기</a> <a
				class="header-lower__item" onclick="menu_click_image();">사진</a> <a
				class="header-lower__item" onclick="menu_click_housewarming();">집들이</a> <a
				class="header-lower__item" onclick="menu_click_scrapbook();">스크랩북</a> <a
				class="header-lower__item" onclick="menu_click_like();">좋아요</a>
		</div>
	</div>
</div>
<div class="mypage_show_all_wrap">
	<div class="mypage_side_profile_card">
		<div class="mypage_profile_image">
			<c:choose>
				<c:when test="${not empty authUser.profileImage}">
					<img class="mypage_profile_image" alt="profile"
						src="${contextPath}/profileDownload?memberId=${authUser.memberId}&fileName=${authUser.profileImage}">
				</c:when>
				<c:otherwise>
					<img class="mypage_profile_image" alt="profile_image"
						src="https://ifh.cc/g/BVmFxg.jpg">
				</c:otherwise>
			</c:choose>

		</div>
		<!-- <div class="mypage_profile_share">
			<i class="fa-solid fa-share-nodes"></i>
		</div> -->
		<div class="mypage_profile_nickname">
			<p>${authUser.nickname}</p>
		</div>
		<div class="mypage_profile_follow">
			<a href="#">팔로워 <span>${fn:length(follwer)}</span></a> ㅣ <a href="#">팔로잉
				<span>${fn:length(follwing)}</span>
			</a>
		</div>
		<div class="mypage_profile_setting">
			<a href="/member/mypage/setting">설정</a>
		</div>
		<div class="mypage_profile_flex_wrap">
			<div class="mypage_profile_detail_wrap">
				<div class="mypage_profile_detail_icon">
					<i class="fa-regular fa-bookmark"></i>
				</div>
				<div class="mypage_profile_detail_title">스크랩북</div>
				<div class="mypage_profile_detail_count">
					<a onclick="menu_click_scrapbook();">${fn:length(scrapBoard)}</a>
				</div>
			</div>
			<div class="mypage_profile_detail_wrap">
				<div class="mypage_profile_detail_icon">
					<i class="fa-regular fa-heart"></i>
				</div>
				<div class="mypage_profile_detail_title">좋아요</div>
				<div class="mypage_profile_detail_count">
					<a  onclick="menu_click_like();">${fn:length(likeBoard)}</a>
				</div>
			</div>
			<div class="mypage_profile_detail_wrap">
				<div class="mypage_profile_detail_icon">
					<i class="fa-solid fa-ticket"></i>
				</div>
				<div class="mypage_profile_detail_title">내 쿠폰</div>
				<div class="mypage_profile_detail_count">
					<a href="#">${fn:length(coupon)}</a>
				</div>
			</div>
		</div>
	</div>
	<!-- mypage_side_profile_card -->
	
	
	<div class="submenu_all_wrap">
	

	<div class="menu_showall profile_submenu" id="menu_showall">
		<div class="mypage_show_all_detail_wrap">
			<div class="mypage_show_all_title">
				사진<a>${fn:length(imageWriteByMember)}</a>
			</div>
			<div class="mypage_show_all_images">
				<c:choose>
					<c:when test="${not empty imageWriteByMember}">
					<c:set var="doneLoop" value="false"/>
						<c:forEach var="i" begin="0"
							end="${(fn:length(imageWriteByMember))-1}"
							varStatus="status">
							 <c:if test="${not doneLoop}">
							<div class="housewarmingWriteByMemberWrap">
								<a><img class="housewarmingWriteByMemberImage"
									alt="${imageWriteByMember[i].title }"
									src="${contextPath}/communityDownload?boardId=${imageWriteByMember[i].boardId}&fileName=${imageWriteByMember[i].boardThumbnail}"></a>
							</div>
							<c:if test="${status.count == 4}">
								     <c:set var="doneLoop" value="true"/>
								  </c:if>
							 </c:if>
						</c:forEach>
					</c:when>
					<c:otherwise>
					+ 첫번째 사진을 올려보세요
				</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="mypage_show_all_detail_wrap">
			<div class="mypage_show_all_title">
				집들이<a>${fn:length(housewarmingWriteByMember)}</a>
			</div>
			<div class="mypage_show_all_images">
				<c:choose>
					<c:when test="${not empty housewarmingWriteByMember}">
					<c:set var="doneLoop" value="false"/>
						<c:forEach var="i" begin="0"
							end="${(fn:length(housewarmingWriteByMember))-1}"
							varStatus="status">
							 <c:if test="${not doneLoop}">
							<div class="housewarmingWriteByMemberWrap">
								<a><img class="housewarmingWriteByMemberImage"
									alt="${housewarmingWriteByMember[i].title }"
									src="${contextPath}/communityDownload?boardId=${housewarmingWriteByMember[i].boardId}&fileName=${housewarmingWriteByMember[i].boardThumbnail}"></a>
							</div>
							<c:if test="${status.count == 4}">
								     <c:set var="doneLoop" value="true"/>
								  </c:if>
							 </c:if>
						</c:forEach>
					</c:when>
					<c:otherwise>
					+ 첫번째 사진을 올려보세요
				</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
<!-- mypage_show_all_wrap -->




<!-- 사진 tab 시작-------------------------------------------------------------------------- -->
<div class="profile_submenu menu_image" id="menu_image" >
	<div class="mypage_show_all_detail_wrap">
		<div class="mypage_show_all_title">
			사진<a>${fn:length(imageWriteByMember)}</a>
		</div>
		<div class="mypage_show_all_images mypage_show_all_all">
			<c:choose>
				<c:when test="${not empty imageWriteByMember}">
					<c:forEach var="i" begin="0" end="${(fn:length(imageWriteByMember))-1}">
						<div class="housewarmingWriteByMemberWrap">
							<a><img class="housewarmingWriteByMemberImage"
								alt="${imageWriteByMember[i].title }"
								src="${contextPath}/communityDownload?boardId=${imageWriteByMember[i].boardId}&fileName=${imageWriteByMember[i].boardThumbnail}"></a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
				결과가 존재하지 않습니다.
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>

<!-- 사진 tab 끝-------------------------------------------------------------------------- -->




<!-- 집들이 tab 시작-------------------------------------------------------------------------- -->
<div class="profile_submenu menu_housewarming" id="menu_housewarming">
	<div class="mypage_show_all_detail_wrap">
		<div class="mypage_show_all_title">
			집들이<a>${fn:length(housewarmingWriteByMember)}</a>
		</div>
		<div class="mypage_show_all_images mypage_show_all_all">
			<c:choose>
				<c:when test="${not empty housewarmingWriteByMember}">
				<c:set var="doneLoop" value="false"/>
					<c:forEach var="i" begin="0"
						end="${(fn:length(housewarmingWriteByMember))-1}">
						<div class="housewarmingWriteByMemberWrap">
							<a><img class="housewarmingWriteByMemberImage"
								alt="${housewarmingWriteByMember[i].title }"
								src="${contextPath}/communityDownload?boardId=${housewarmingWriteByMember[i].boardId}&fileName=${housewarmingWriteByMember[i].boardThumbnail}"></a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
				결과가 존재하지 않습니다.
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>

<!-- 집들이 tab 끝-------------------------------------------------------------------------- -->




<!-- 스크랩북 tab 시작-------------------------------------------------------------------------- -->
<div class="profile_submenu menu_scrapbook" id="menu_scrapbook">
	<div class="mypage_show_all_detail_wrap">
		<div class="mypage_show_all_title">
			스크랩북<a>${fn:length(scrapBoard)}</a>
		</div>
		<div class="mypage_show_all_images mypage_show_all_all">
			<c:choose>
				<c:when test="${not empty scrapBoard}">
				<c:set var="doneLoop" value="false"/>
					<c:forEach var="i" begin="0"
						end="${(fn:length(scrapBoard))-1}">
						<div class="housewarmingWriteByMemberWrap">
							<a><img class="housewarmingWriteByMemberImage"
								alt="${scrapBoard[i].title }"
								src="${contextPath}/communityDownload?boardId=${scrapBoard[i].boardId}&fileName=${scrapBoard[i].boardThumbnail}"></a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
				결과가 존재하지 않습니다.
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<!-- 스크랩북 tab 끝-------------------------------------------------------------------------- -->


<!-- 좋아요 tab 시작-------------------------------------------------------------------------- -->
<div class="profile_submenu menu_like" id="menu_like">
	<div class="mypage_show_all_detail_wrap">
		<div class="mypage_show_all_title">
			좋아요<a>${fn:length(likeBoard)}</a>
		</div>
		<div class="mypage_show_all_images mypage_show_all_all">
			<c:choose>
				<c:when test="${not empty likeBoard}">
				<c:set var="doneLoop" value="false"/>
					<c:forEach var="i" begin="0"
						end="${(fn:length(likeBoard))-1}">
						<div class="housewarmingWriteByMemberWrap">
							<a><img class="housewarmingWriteByMemberImage"
								alt="${likeBoard[i].title }"
								src="${contextPath}/communityDownload?boardId=${likeBoard[i].boardId}&fileName=${likeBoard[i].boardThumbnail}"></a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
				결과가 존재하지 않습니다.
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<!-- 좋아요 tab 끝-------------------------------------------------------------------------- -->

</div>

<script type="text/javascript">

function menu_click_showall() {
	document.getElementById('menu_image').style.display = 'none';
	document.getElementById('menu_housewarming').style.display = 'none';
	document.getElementById('menu_scrapbook').style.display = 'none';
	document.getElementById('menu_like').style.display = 'none';
	document.getElementById('menu_showall').style.display = 'block';
}

function menu_click_image() {
	document.getElementById('menu_image').style.display = 'block';
	document.getElementById('menu_housewarming').style.display = 'none';
	document.getElementById('menu_scrapbook').style.display = 'none';
	document.getElementById('menu_like').style.display = 'none';
	document.getElementById('menu_showall').style.display = 'none';
}

function menu_click_housewarming() {
	document.getElementById('menu_image').style.display = 'none';
	document.getElementById('menu_housewarming').style.display = 'block';
	document.getElementById('menu_scrapbook').style.display = 'none';
	document.getElementById('menu_like').style.display = 'none';
	document.getElementById('menu_showall').style.display = 'none';
}

function menu_click_scrapbook() {
	document.getElementById('menu_image').style.display = 'none';
	document.getElementById('menu_housewarming').style.display = 'none';
	document.getElementById('menu_scrapbook').style.display = 'block';
	document.getElementById('menu_like').style.display = 'none';
	document.getElementById('menu_showall').style.display = 'none';
}

function menu_click_like() {
	document.getElementById('menu_image').style.display = 'none';
	document.getElementById('menu_housewarming').style.display = 'none';
	document.getElementById('menu_scrapbook').style.display = 'none';
	document.getElementById('menu_like').style.display = 'block';
	document.getElementById('menu_showall').style.display = 'none';
}






</script>



<%@include file="../common/footer.jsp"%>