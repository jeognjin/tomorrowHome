<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내일의집</title>
  <!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
  
<!-- 아이콘 용 폰트 어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- css -->
<link rel="stylesheet" href="${contextPath }/resources/css/style.css">

 <!-- jQuery 스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="jquery-3.6.0.min.js"></script>
<style>
#profile_icon{
	width: 25px;
	height: 25px;
}
.click_profile_iamge_parent{
	position: relative;
}
#click_profile_image_wrap{
	position: absolute;
	width: 200px;
	z-index: 1000;
	left: -100px;
	padding: 8px;
    background-color: rgb(255, 255, 255);
    border: 1px solid rgb(218, 221, 224);
    border-radius: 6px;
    box-shadow: rgb(63 71 77 / 20%) 0px 4px 10px 0px;
    color: black;
    text-align: justify;
    display: none;
}
.click_profile_image_text{
	padding: 10px 5px;
	font-size: 14px;
}
.click_profile_image_text_box:hover {
	background-color: rgba(197, 199, 219, 0.2);
}
#profile_member_image{
	width: 38px;
	height: 38px;
	border-radius: 70px;
	-moz-border-radius: 70px;
	-khtml-border-radius: 70px;
	-webkit-border-radius: 70px;
}
</style>
<!--  <style>
.header{
	position: sticky;
	top: 0;
}
</style> -->
</head>
<body>
  <!-- 전체 레이아웃--------------------------------------------------------------->
  <div class="wrap">
    <!-- 상단 네비게이션 영역 ---------------------------------------------------->
    <header class="header">
      
      <!-- 네비게이션 상단 ------------------------------------------------------->
      <div class="header-upper">
        <div class="inner">
          <i class="fas fa-bars searchMenu"></i>
          <div class="header-upper__inner">
            <div class="header-upper__logo"><a href="${contextPath }/">내일의집</a></div>
            <div class="header-upper__nav">
              <ul>
                <li class="header-upper__item upper__active" id="header_nav_community"><a href="${contextPath }/">커뮤니티</a></li>
                <li class="header-upper__item" id="header_nav_store"><a href="${contextPath }/store">스토어</a></li>
                <li class="header-upper__item" id="header_nav_apartment"><a href="">인테리어시공</a></li>
              </ul>
            </div>
          </div>
          <div class="header-upper__service">
            <i class="mobile-searchBar fas fa-search"></i>
            <div class="header-upper__searchBar">
            <i class="fas fa-search search_icon"></i>
              <input class="header-upper__searchBar_input" type="text" placeholder="오늘의집 통합검색">
            </div>
            
            <ul>
            <c:choose>
            	<c:when test="${not empty authUser }">
            	<li><a href="#"><i class="fa-solid fa-bookmark"></i></a></li>
            	<li><a href="#"><i class="fa-solid fa-heart"></i></a></li>
             	 <c:choose>
            	 	<c:when test="${not empty authUser.profileImage}">
            	 		<li id="click_profile_iamge_parent"><a><img alt="profile" id="profile_member_image" src="${contextPath}/profileDownload?memberId=${authUser.memberId}&fileName=${authUser.profileImage}"></a></li>
            	 	</c:when>
            	 	<c:otherwise>
            	 		<li id="click_profile_iamge_parent2"><a><img alt="profile_image" src="https://ifh.cc/g/BVmFxg.jpg" id="profile_icon"></a></li>
            	 	</c:otherwise>	
            	 	 </c:choose>	
            	</c:when>
            	
            	<c:otherwise>
            	<li><a href="${contextPath }/cart"><i class="fas fa-shopping-cart"></i></a></li> 
            	 <li><a href="/member/loginForm">로그인</a></li>
             	 <li><a href="/member/registForm">회원가입</a></li>
            	</c:otherwise>
            </c:choose>
              
             <!--  <li><a href="">고객센터</a></li> -->
              <button class="header-upper__writeBt click_profile_iamge_parent" id="header_writeBt">
               	글쓰기
               	 <div class="click_profile_image_wrap" id="click_profile_image_wrap">
			              	<div class="click_profile_image_text_box" style="padding: 10px 5px;">
			              		<a class="click_profile_image_text" href="/member/mypage/main">마이페이지</a>
			              	</div>
			              	<div class="click_profile_image_text_box" style="padding: 10px 5px;">
			              		<a class="click_profile_image_text" href="/member/mypage/shopping">나의쇼핑</a>
			              	</div>
			              	<div class="click_profile_image_text_box" style="padding: 10px 5px;">
			              		<a class="click_profile_image_text" href="#">이벤트</a>
			              	</div>
			              	<div class="click_profile_image_text_box" style="padding: 10px 5px;">
			              		<a class="click_profile_image_text" href="#">전문가 신청</a>
			              	</div>
			              	<div class="click_profile_image_text_box" style="padding: 10px 5px;">
			              		<a class="click_profile_image_text" href="#">판매자 신청</a>
			              	</div>
			              	<div class="click_profile_image_text_box" style="padding: 10px 5px;">
			              		<a class="click_profile_image_text" href="#">고객센터</a>
			              	</div>
			              	<div class="click_profile_image_text_box" style="padding: 10px 5px;">
			              		<a class="click_profile_image_text" href="/member/logout">로그아웃</a>
			              	</div>
			              </div>
                <div class="header-upper__lists" id="header_lists">
                  <a href="">
                    <h4>사진 올리기</h4>
                    <p>우리 집의 공간과 나의 일상을 기록해 보세요.</p>
                  </a>
                  <a href="">
                    <h4>집들이 글쓰기</h4>
                    <p>집에 관한 이야기를 글로 작성해 보세요.</p>
                  </a>
                  <a href="">
                    <h4>노하우 글쓰기</h4>
                    <p>다양한 인테리어 노하우를 공유해 주세요.</p>
                  </a>
                  <a href="">
                    <h4>상품 리뷰 글쓰기</h4>
                    <p>상품 리뷰를 작성하고 포인트도 받아 보세요.</p>
                  </a>
                  <a href="">
                    <h4>시공 전문가 리뷰쓰기</h4>
                    <p>시공 전문가 리뷰를 작성하고 포인트도 받아보세요.</p>
                  </a>
                  <a href="">
                    <h4>인테리어 질문하기</h4>
                    <p>인테리어 고수들과 전문가들에게 질문해 보세요.</p>
                  </a>
                </div>
              </button>
            </ul>
          </div>
        </div>
        
      </div>

      <!-- 네비게이션 하단----------------------------------------------------------- -->
      <div class="header-lower">
        <div class="inner">
        
          <nav id="header_community_nav_bar">
            <a class="header-lower__item active" href="">홈</a>
            <a class="header-lower__item" href="">팔로잉</a>
            <a class="header-lower__item" href="">사진</a>
            <a class="header-lower__item" href="">집들이</a>
            <a class="header-lower__item" href="">노하우</a>
            <a class="header-lower__item" href="">전문가집들이</a>
            <a class="header-lower__item" href="">셀프가이드</a>
            <a class="header-lower__item" href="">질문과답변</a>
            <a class="header-lower__item" href="">이벤트</a>
          </nav>
          <nav id="header_store_nav_bar">
            <a class="header-lower__item active" href="${contextPath }/store">스토어홈</a>
            <a class="header-lower__item" href="">카테고리</a>
            <a class="header-lower__item" href="">베스트</a>
            <a class="header-lower__item" href="${contextPath }/todayDeals">오늘의딜</a>
            <a class="header-lower__item" href="">인기가구특가</a>
            <a class="header-lower__item" href="">리퍼마켓</a>
            <a class="header-lower__item" href="">오!굿즈</a>
            <a class="header-lower__item" href="">빠른배송</a>
            <a class="header-lower__item" href="">프리미엄</a>
            <a class="header-lower__item" href="">기획전</a>
          </nav>
          <nav id="header_apartment_nav_bar">
            <a class="header-lower__item active" href="">우리동네 아파트</a>
            <a class="header-lower__item " href="">니네동네 아파트</a>
            <a class="header-lower__item " href="">뒷동네 아파트</a>
            <a class="header-lower__item " href="">앞동네 아파트</a>
          </nav>
          <div>3D인테리어</div>
        </div>
      </div>
    </header>


<script type="text/javascript">


	let currPage = "${currPage}";
	$(document).ready(function(){
		menu();
		
		 $('nav').not("#header_community_nav_bar").hide();
		 

	   

	  $("#header_writeBt").click(function(){
		    $("#header_lists").toggle();
		  });
	  
	  $("#header_nav_store").hover(function(){
		    $('nav').not("#header_store_nav_bar").hide();
		    $("#header_store_nav_bar").show();
		  }, menu);
	  
	  $("#header_nav_community").hover(function(){
		  $('nav').not("#header_community_nav_bar").hide();
		    $("#header_community_nav_bar").show();
		  }, menu);
	  
	  $("#header_nav_apartment").hover(function(){
		  $('nav').not("#header_apartment_nav_bar").hide();
		    $("#header_apartment_nav_bar").show();
		  }, menu);
	  
	  
	  $("#click_profile_iamge_parent2").click(function(){
		    $("#click_profile_image_wrap").toggle();
		  });
		
		  $("#click_profile_iamge_parent").click(function(){
	    $("#click_profile_image_wrap").toggle();
	  });
	  
	  
	});

	function menu() {
		if(currPage == 'community'){
			$('.header-upper__item').removeClass("upper__active");
			$('#header_nav_community').addClass("upper__active");
			$('nav').not("#header_community_nav_bar").hide();
		    $("#header_community_nav_bar").show();
		}else if(currPage == 'store'){
			$('.header-upper__item').removeClass("upper__active");
			$('#header_nav_store').addClass("upper__active");
			$('nav').not("#header_store_nav_bar").hide();
			$("#header_store_nav_bar").show();
		}else if(currPage == 'apartment'){
			$('.header-upper__item').removeClass("upper__active");
			$('#header_nav_apartment').addClass("upper__active");
			$('nav').not("#header_apartment_nav_bar").hide();
		    $("#header_apartment_nav_bar").show();
			
		}
	}	
	
	

/* 	$(function(){
		var lastScrollTop =0,
		delta = 15;
		$(window).scroll(function(event){
			var st = $(this).scrollTop();
			if(Math.abs(lastScrollTop - st) <= delta)return;
			if((st > lastScrollTop) && (lastScrollTop > 0)){
				$("header_community_nav_bar").css("top", "-68");
			}else{
				$("header_community_nav_bar").css("top", "0px");
			}
			lastScrollTop = st;
		});
		
	}); */
	
	
	
</script>