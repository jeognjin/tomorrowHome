<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="./common/header.jsp"%>


<!-- BODY : community_home : main page-->
<c:set var="boardList" value="${boardList }"/>
<c:set var="goodsList" value="${goodsList }"/>
<c:set var="mainCategoryList" value="${mainCategoryList }"/>
<!-- 홈 페이지 전체 영역------------------------------------------------------------- -->
    <div class="home-page">
      <!-- 홈 페이지 상단 이미지 ------------------------------------------------------->
      <div class="container home-header">
        <div class="home-header__upper">
          <div>
            <img alt="홈페이지 메인 이미지"
				src="${contextPath}/communityDownload?boardId=${boardList[0].boardId}&fileName=${boardList[0].boardThumbnail}" >
            <div class="home-header-tit">
              <h4>${boardList[0].title }</h4>
              <a href="#">보러가기</a>
            </div>
          </div>
        </div>

        <div class="home-header__lower">
          <div class="home-header__lower-banner">
            <ul class="banner-slider">
              <li class="banner-item">
                <a href="">
                  <img class="col-img" src="https://image.ohou.se/i/bucketplace-v2-development/static/home_banner/sign_up_mobile_v2.png?gif=1&w=850" alt="베너 이미지1">
                  <img class="row-img" src="https://image.ohou.se/i/bucketplace-v2-development/static/home_banner/sign_up_web_v2.png?gif=1&w=512" alt="베너 이미지1">
                </a>
              </li>
              <li class="banner-item">
                <a href="">
                  <img class="col-img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/164459861986493304.png?gif=1&w=850" alt="베너 이미지1">
                  <img class="row-img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/164459862593345523.png?gif=1&w=512" alt="베너 이미지1">
                </a>
              </li>
              <li class="banner-item">
                <a href="">
                  <img class="col-img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/164559250412286029.png?gif=1&w=850" alt="베너 이미지1">
                  <img class="row-img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/164559252959722925.png?gif=1&w=512" alt="베너 이미지1">
                </a>
              </li>
              <li class="banner-item">
                <a href="">
                  <img class="col-img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/164559255249087796.png?gif=1&w=850" alt="베너 이미지1">
                  <img class="row-img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/164559255881515784.png?gif=1&w=512" alt="베너 이미지1">
                </a>
              </li>
            </ul>
          </div>
        </div>

      </div>

      <!-- 홈 페이지 쇼트컷  ---------------------------------------------------------->
      <nav class="container home-shortcut">
        <ul class="home-shortcut__container">
        
        <c:forEach var="i" begin="0" end="7">
          <li class="home-shortcut__item">
            <a href="">
              <img src="${contextPath}/mainCategoryDownload?mainCategoryId=${mainCategoryList[i].mainCategoryId}&fileName=${mainCategoryList[i].categoryImage}" alt="${mainCategoryList[i].categoryTitle }">
              <h4>${mainCategoryList[i].categoryTitle }</h4>
            </a>
          </li>
          </c:forEach>

        </ul>
      </nav>
      <!-- 홈 페이지 스토리 영역 -->
      
      <section class="container home-section home-stories">
        <h3 class="home-section__tit">오늘의 스토리</h3>
        <ul class="home-stories__content">
        <c:forEach var="i" begin="1" end="3">
        <li class="home-stories__item">
            <article>
              <a href="">
                <div class="home-stories__item__wrap">
                  <img src="${contextPath}/communityDownload?boardId=${boardList[i].boardId}&fileName=${boardList[i].boardThumbnail}" alt="${boardList[i].title }">
                </div>
                <h4>${boardList[i].title }</h4>
              </a>
            </article>
          </li>       
          </c:forEach>

          <div class="home-stories__content__menu-wrap">
            <div class="home-stories__content__menu">
              <a class="home-stories__content__menu__entry" href="">
                <div>예쁜 집 구경하기</div>
                <div>집들이</div>
              </a>
              <a class="home-stories__content__menu__entry" href="">
                <div>전문가 시공사례</div>
                <div>전문가 집들이</div>
              </a>
              <a class="home-stories__content__menu__entry" href="">
                <div>인테리어 꿀팁 총 정리</div>
                <div>노하우</div>
              </a>
            </div>
          </div>
        </ul>
      </section>

      <!-- 홈 페이지 카테고리 상품 찾기 영역 -->
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

      <!-- 오늘의 딜 영역 -->
      <section class="container home-section">
        <div class="home-section__wrap">
          <h3 class="home-section__tit">오늘의딜</h3>
          <ul class="home-section__container">
          <c:forEach var="i" begin="0" end="8">
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

      <!-- 오늘의 인기 사진 전체 영역 -->
      <section class="container home-section">
        <div class="home-section__wrap">
          <div class="home-section__tit__wrap">
            <h3 class="home-section__tit">오늘의 인기 사진</h3>
            <div class="poular-item__more__desktop">
              <a href="">더보기</a>
            </div>
          </div>
          <ul class="popular-content__wrap">
          <c:forEach var="i" begin="4" end="11">
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[i].boardId}&fileName=${boardList[i].boardThumbnail}" alt="인기 사진">
                    <!-- <span class="popular-item__number">1</span> -->
                  </div>
                </article>
              </a>
            </li>
            </c:forEach>
            
          </ul>
          <div class="poular-item__more__mobile">
            <a href="">인기 사진 더보기</a>
          </div>
        </div>
      </section>


      <!-- 유저 인테리어 시공 리뷰 -->
      <section class="container home-section user-review__wrap">
        <div class="home-section__wrap">
          <div class="home-section__tit__wrap">
            <h3 class="home-section__tit">유저들의 인테리어 시공 리뷰</h3>
            <div class="poular-item__more__desktop">
              <a href="">인테리어 전문가 더 찾기</a>
            </div>
          </div>
          <ul class="user-review__content">
          <c:forEach var="i" begin="12" end="14">
            <li class="user-review__item">
              <a href="">
                <article>
                  <div class="user-review__img__wrap">
                    <img src="${contextPath}/communityDownload?boardId=${boardList[i].boardId}&fileName=${boardList[i].boardThumbnail}" alt="인테리어 이미지">
                  </div>
                  <div class="user-review__details">
                    <div class="user-review__star">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                    </div>
                    <div class="user-review__text">
                      <p>
                      ${boardList[i].description}
                      </p>
                    </div>
                    <div class="user-review__bland">
                     ${boardList[i].title }
                    </div>
                  </div>
                </article>
              </a>
            </li>
            </c:forEach>
           
          </ul>
          <div class="poular-item__more__mobile">
            <a href="">인테리어 전문가 더 찾기</a>
          </div>
        </div>
      </section>
    </div>
    
   
	
<%@include file="./common/footer.jsp"%>