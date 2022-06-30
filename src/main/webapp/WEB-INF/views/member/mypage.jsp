<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../common/header.jsp"%>

<style>
.header-lower{
	display: none;
}
.mypage_top_navbar{
	display: block;
	
}
#header_community_nav_bar{
	text-align: center;
	margin: auto;
}
.mypage_profile_image{
	width: 120px;
	height: 120px;
	margin: auto;
}
.mypage_side_profile_card{
	padding: 30px 25px 18px;
    border-radius: 4px;
    border: 1px solid #dadce0;
    box-shadow: 0 2px 4px 0 rgb(63 71 77 / 6%);
    padding-left: 10px;
    padding-right: 10px;
    width: 25%;
    text-align: center;
    margin: 20px 20px;
    position: relative;
}
.mypage_profile_share{
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
	right: 10px;
}
.mypage_profile_nickname{
	line-height: 1.15;
	margin: 10px;
    font-size: 26px;
    overflow-wrap: break-word;
    word-break: break-all;
    font-weight: bold;
}
.mypage_profile_follow{
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
.mypage_profile_setting{
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
.mypage_profile_detail_wrap{
	padding: 20px;
	border-top: 1px solid #eaebef;
	font-size: 15px;
    color: #292929;
    display: table-cell;
    margin: auto;
}
.mypage_profile_detail_icon i{
	font-size: 35px;
}
.mpage_show_all{
	width: 70%;
}
.mypage_show_all_wrap{
	display: flex;
	max-width: 1200px;
	margin: auto;
}
.mypage_show_all_images{
	border: 1px dashed gray;
	height: 200px;
	width: 90%;
	margin: 10px auto;
	text-align: center;
	line-height: 14;
	font-size: 14px;
	color: gray;
}
.mypage_show_all_title{
	width: 90%;
	font-size: 18px;
	font-weight: bold;
	margin: 10px auto;
}
.mypage_show_all_title a{
	font-size: 18px;
	color: #35c5f0;
	margin-left: 5px;
}
.active_{
	color: #35c5f0;
	border-bottom: none;
}
.mypage_profile_detail_title{
	margin: 10px auto;
}

/* @media screen and (min-width: 785px) {
	.mypage_side_profile_card{
		width: 90%;
		margin: 10px 0;
	}
	.mpage_show_all{
		width: 90%;
		margin: 10px 0;
	}
}  */
</style>



<div class="header-lower mypage_top_navbar">
  <div class="inner">
    <div id="header_community_nav_bar">
      <a class="header-lower__item active_" href="">프로필</a>
      <a class="header-lower__item" href="">나의쇼핑</a>
      <a class="header-lower__item" href="">나의리뷰</a>
      <a class="header-lower__item" href="/member/mypage/setting">설정</a>
    </div>
  </div>
</div>
<div class="header-lower mypage_top_navbar">
  <div class="inner">
    <div id="header_community_nav_bar">
      <a class="header-lower__item active" href="">모두보기</a>
      <a class="header-lower__item" href="">사진</a>
      <a class="header-lower__item" href="">집들이</a>
      <a class="header-lower__item" href="">노하우</a>
      <a class="header-lower__item" href="">질문과답변</a>
      <a class="header-lower__item" href="">쿠폰</a>
    </div>
  </div>
</div>
<div class="mypage_show_all_wrap">
<div class="mypage_side_profile_card">
	<div class="mypage_profile_image">
		<img class="mypage_profile_image" alt="profile_image" src="https://ifh.cc/g/BVmFxg.jpg">
	</div>
	<div class="mypage_profile_share">
		<i class="fa-solid fa-share-nodes"></i>
	</div>
	<div class="mypage_profile_nickname">
		<p>닉네임넣기</p>
	</div>
	<div class="mypage_profile_follow">
		<a>팔로워 <span>0</span></a> ㅣ <a>팔로잉</a> <span>0</span>
	</div>
	<div class="mypage_profile_setting">
		<a href="/member/mypage/setting">설정</a>
	</div>
	<div class="mypage_profile_flex_wrap">
		<div class="mypage_profile_detail_wrap">
			<div class="mypage_profile_detail_icon">
				<i class="fa-regular fa-bookmark"></i>
			</div>
			<div class="mypage_profile_detail_title" >
				스크랩북
			</div>
			<div class="mypage_profile_detail_count">
				0
			</div>
		</div>
		<div class="mypage_profile_detail_wrap">
			<div class="mypage_profile_detail_icon">
				<i class="fa-regular fa-heart"></i>
			</div>
			<div class="mypage_profile_detail_title">
				좋아요
			</div>
			<div class="mypage_profile_detail_count">
				0
			</div>
		</div>
		<div class="mypage_profile_detail_wrap">
			<div class="mypage_profile_detail_icon">
				<i class="fa-solid fa-ticket"></i>
			</div>
			<div class="mypage_profile_detail_title" >
				내 쿠폰
			</div>
			<div class="mypage_profile_detail_count">
				0
			</div>
		</div>
	</div>
</div><!-- mypage_side_profile_card -->

<div class="mpage_show_all">
	<div class="mypage_show_all_detail_wrap">
		<div class="mypage_show_all_title">사진<a>0</a></div>
		<div class="mypage_show_all_images">
		+ 첫번째 사진을 올려보세요
		</div>
	</div>
	<div class="mypage_show_all_detail_wrap">
		<div class="mypage_show_all_title">집들이<a>0</a></div>
		<div class="mypage_show_all_images">
		+ 첫번째 사진을 올려보세요
		</div>
	</div>
</div>
	
</div><!-- mypage_show_all_wrap -->

<%@include file="../common/footer.jsp"%>