<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑은 쉽게, 스타일링은 즐겁게! 내일의집 스토어</title>
<!-- css -->
<link rel="stylesheet" href="${contextPath }/resources/css/style.css">
</head>
<body style="margin: 0; overflow-x: hidden">


<!-- BODY : community_home : main page-->
<c:set var="boardList" value="${boardList }"/>
<c:set var="goodsList" value="${goodsList }"/>
<c:set var="mainCategoryList" value="${mainCategoryList }"/>

<!-- 홈 페이지 전체 영역------------------------------------------------------------- -->
    <div>
    <!-- 슬라이더 영역  -->
 <div>
        <div class="store_main_container">
        <div class="store_main_inner">
                <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/165542416046191002.jpg?gif=1&w=2560&q=100" >
            </div>
            <div class="store_main_inner">
                <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/165543929055978481.png?gif=1&w=2560&q=100" >
            </div>
            <div class="store_main_inner">
                <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/store_home_banners/165603550745057937.png?gif=1&w=2560&q=100" >
            </div>
<!--            $(document).ready(function(){
  $('.store_main_container').store_main_container();
}); -->
        </div>
    </div>
    <div class="bt">
        <button class="bt1" type="button"></button>
        <button class="bt2" type="button"></button>
        <button class="bt3" type="button"></button>
    </div>
 
     <script>
        document.querySelector('.bt2').addEventListener('click', function(){
            document.querySelector('.store_main_container').style.transform = 'translate(-100vw)';
        });

        document.querySelector('.bt3').addEventListener('click', function(){
            document.querySelector('.store_main_container').style.transform = 'translate(-200vw)';
        });

        document.querySelector('.bt1').addEventListener('click', function(){
            document.querySelector('.store_main_container').style.transform = 'translate(-0vw)';
        });
    </script>
    
    <!-- 메인 메뉴 카테고리  -->
    <section class="container home-section home-category">
    <div class="home-category__wrap">
      <ul class="home-category__contents">
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165569300795511728.png/512/none" alt="키친핫세일">
              <h4>키친핫세일</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624893249663435.png/512/none" alt="키즈페어 이미지">
              <h4>키즈페어</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624896773272740.png/512/none" alt="펫위크 이미지">
              <h4>펫위크</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624899731687964.png/512/none" alt="할인생활 이미지">
              <h4>할인생활</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624908682935523.png/512/none" alt="빠른배송 이미지">
              <h4>빠른배송</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624911790918252.png/512/none" alt="신상특가 이미지">
              <h4>신상특가</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624915217304920.png/512/none" alt="오!굿즈 이미지">
              <h4>오!굿즈</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624919253631288.png/512/none" alt="리퍼마켓 이미지">
              <h4>리퍼마켓</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624920799006361.png/512/none" alt="프리미엄 이미지">
              <h4>프리미엄</h4>
            </a>
          </div>
        </li>
        <li class="home-category__item__wrap">
          <div>
            <a href="">
              <img class="store-menu_category" src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-store_home_shortcut_sets-165624921949701702.png/512/none" alt="LG쇼룸 이미지">
              <h4>LG쇼룸</h4>
            </a>
          </div>
        </li>
       
      </ul>
    </div>
  </section>

  <!-- 스토어 메인 페이지 오늘의 딜 영역 -->
      <section class="container home-section" >
        <div class="home-section__wrap">
       <header class="store-index-today-deal-list__header" style="display:flex; justify-content: space-between;">
       <h3 class="home-section__tit">오늘의딜</h3>
       <a class="store_more" href="" style="">더보기</a>
       </header>
          <ul class="home-section__container" style="overflow-x: hidden;">
          <c:forEach var="i" begin="0" end="3">
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[i].goodsId}&fileName=${goodsList[i].productThumbnail}" alt="${goodsList[i].goodsName}">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[i].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[i].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[i].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[i].goodsPrice}" pattern="#,###" /> 외</div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.7</div>
                      <div class="home-section__item__reviews">리뷰 3,452</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            </c:forEach>
           
          </ul>
        </div>
      </section>
      
      <!-- 스토어 메인 페이지 카테고리 영역 -->
      <section class="container home-section home-category">
        <div class="home-category__wrap">
          <h3 class="home-section__tit">카테고리별 상품 찾기</h3>
          <ul class="home-category__contents">
          <c:forEach var="i" begin="8" end="17">
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="${contextPath}/mainCategoryDownload?mainCategoryId=${mainCategoryList[i].mainCategoryId}&fileName=${mainCategoryList[i].categoryImage}" alt="${mainCategoryList[i].categoryTitle }">
                  <h4>${mainCategoryList[i].categoryTitle }</h4>
                </a>
              </div>
            </li>
            </c:forEach>
          </ul>
        </div>
      </section>
      
      <!-- 스토어 메인 페이지 인기상품 영역 -->
      <section class="container home-section">
        <div class="home-section__wrap">
          <h3 class="home-section__tit">인기 상품</h3>
          <ul class="home-section__container pop" style="overflow-x: hidden; flex-flow:row wrap">
          <c:forEach var="item" items="${goodsList}" >
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${item.goodsId}&fileName=${item.productThumbnail}" alt="${item.goodsName}">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${item.goodsBrand }</h4>
                    <p class="home-section__item__sub">${item.goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${item.discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${item.goodsPrice}" pattern="#,###" /> 외</div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.7</div>
                      <div class="home-section__item__reviews">리뷰 3,452</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            </c:forEach>
           
          </ul>
        </div>
        <script>
        
        $(window).scroll(function() {
        	console.log($(window).scrollTop());
        	console.log($(document).height());
        	console.log($(window).height());
            console.log('--------------------------------------------------------------');
            
            if ($(window).scrollTop() == $(document).height() - $(window).height()) {
              console.log($(window).scrollTop());
              console.log($(document).height());
              console.log($(window).height());
              
              let li_num = $(".pop li").length;
              console.log(li_num);
              $.ajax({
          		url :'${contextPath }/storeScroll',
          		type : 'get',
          		dataType : 'json',
          		data : {
          			begin : li_num + 1,
          		},
          		success: function(data){
          			console.log("data", data);
          			$.each(data, function (index, item) {
          				let goodsId = item.goodsId; 
          				let productThumbnail = item.productThumbnail;
          				let goodsName = item.goodsName;
          				let goodsBrand = item.goodsBrand ;
          				let discountRate = item.discountRate;
          				let goodsPrice = new Intl.NumberFormat().format(item.goodsPrice);
						console.log(goodsPrice);
          				let li = `<li class="home-section__item">
          	              <article>
          	                <a href="">
          	                  <div class="home-section__img-wrap">
          	                    <img src="${contextPath}/productDownload?goodsId=${'${goodsId}'}&fileName=${'${productThumbnail}'}" alt="${'${goodsName}'}">
          	                  </div>
          	                  <div class="home-section__item__details">
          	                    <h4 class="home-section__item__tit">${'${goodsBrand}' }</h4>
          	                    <p class="home-section__item__sub">${'${goodsName}'}</p>
          	                    <div class="home-section__item__sale">
          	                      <div class="home-section__item__percent">${'${discountRate}'}%</div>
          	                      <div class="home-section__item__price">${'${goodsPrice}'} 외</div>
          	                    </div>
          	                    <div class="home-section__item__review">
          	                      <div class="home-section__item__grade">4.7</div>
          	                      <div class="home-section__item__reviews">리뷰 3,452</div>
          	                    </div>
          	                  </div>
          	                </a>
          	              </article>
          	            </li>`;
          			
						$(".pop").append(li);
					});
          		}
          	});
              
              
              
              
            }
        });
        </script>
      </section>
      </div>
      </body>
<%@include file="../common/footer.jsp"%>
