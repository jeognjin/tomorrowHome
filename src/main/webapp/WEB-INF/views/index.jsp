<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="./common/header.jsp"%>


<!-- BODY : community_home : main page-->
<c:set var="boardList" value="${boardList }"/>
<c:set var="goodsList" value="${goodsList }"/>
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
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164014793582210313.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>쇼핑하기</h4>
            </a>
          </li>
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164319427178391528.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>빠른가구배송</h4>
            </a>
          </li>
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164014820673208281.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>평수별집구경</h4>
            </a>
          </li>
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164197550064065066.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>공간별사진</h4>
            </a>
          </li>
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164154620376380239.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>빠른시공상담</h4>
            </a>
          </li>
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164319433881719285.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>오늘의집이사</h4>
            </a>
          </li>
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164214406605962730.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>오늘의딜</h4>
            </a>
          </li>
          <li class="home-shortcut__item">
            <a href="">
              <img src="https://image.ohou.se/image/resize/bucketplace-v2-development/uploads-shortcut-home_feed_shortcut_sets-164300900422684836.png/512/none" alt="쇼핑하기 바로가기 이미지">
              <h4>22년 신년운세</h4>
            </a>
          </li>
        </ul>
      </nav>
      <!-- 홈 페이지 스토리 영역 -->
      
      <section class="container home-section home-stories">
        <h3 class="home-section__tit">오늘의 스토리</h3>
        <ul class="home-stories__content">
          <li class="home-stories__item">
            <article>
              <a href="">
                <div class="home-stories__item__wrap">
                  <img src="${contextPath}/communityDownload?boardId=${boardList[1].boardId}&fileName=${boardList[1].boardThumbnail}" alt="통통 튀는 레트로 키치 하우스">
                </div>
                <h4>${boardList[1].title }</h4>
              </a>
            </article>
          </li>
          <li class="home-stories__item">
            <article>
              <a href="">
                <div class="home-stories__item__wrap">
                  <img src="${contextPath}/communityDownload?boardId=${boardList[2].boardId}&fileName=${boardList[2].boardThumbnail}" alt="다락방이 있는 화이트 하우스!">
                </div>
                <h4>${boardList[2].title }</h4>
              </a>
            </article>
          </li>
          <li class="home-stories__item">
            <article>
              <a href="">
                <div class="home-stories__item__wrap">
                  <img src="${contextPath}/communityDownload?boardId=${boardList[3].boardId}&fileName=${boardList[3].boardThumbnail}" alt="40년된 빌라의 변신!">
                </div>
                <h4>${boardList[3].title }</h4>
              </a>
            </article>
          </li>
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
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164333421927911367.png?gif=1&w=144&h=144&c=c" alt="가구 이미지">
                  <h4>가구</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225115177697.png?gif=1&w=144&h=144&c=c" alt="페브릭 이미지">
                  <h4>페브릭</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823225665741013.png?gif=1&w=144&h=144&c=c" alt="조명 이미지">
                  <h4>조명</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226017937426.png?gif=1&w=144&h=144&c=c" alt="가전 이미지">
                  <h4>가전</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823226903946200.png?gif=1&w=144&h=144&c=c" alt="주방용품 이미지">
                  <h4>주방용품</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823227719846773.png?gif=1&w=144&h=144&c=c" alt="데코/식물 이미지">
                  <h4>데코/식물</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823228178967968.png?gif=1&w=144&h=144&c=c" alt="수납/정리 이미지">
                  <h4>수납/정리</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163609843911228804.png?gif=1&w=144&h=144&c=c" alt="생활용품 이미지">
                  <h4>생활용품</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164333398177552131.png?gif=1&w=144&h=144&c=c" alt="서랍/수납장 이미지">
                  <h4>서랍/수납장</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/163575474448469686.png?gif=1&w=144&h=144&c=c" alt="생필품 이미지">
                  <h4>생필품</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230480918647.png?gif=1&w=144&h=144&c=c" alt="공구/DIY 이미지">
                  <h4>공구/DIY</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823230908544036.png?gif=1&w=144&h=144&c=c" alt="인테리어시공 이미지">
                  <h4>인테리어시공</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231401891024.png?gif=1&w=144&h=144&c=c" alt="반려동물 이미지">
                  <h4>반려동물</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823242317048198.png?gif=1&w=144&h=144&c=c" alt="캠핑용품 이미지">
                  <h4>캠핑용품</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/162823231949249287.png?gif=1&w=144&h=144&c=c" alt="실내운동 이미지">
                  <h4>실내운동</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164148743817769527.png?gif=1&w=144&h=144&c=c" alt="렌탈 이미지">
                  <h4>렌탈</h4>
                </a>
              </div>
            </li>
            <li class="home-category__item__wrap">
              <div>
                <a href="">
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/164333421927911367.png?gif=1&w=144&h=144&c=c" alt="가구 이미지">
                  <h4>가구</h4>
                </a>
              </div>
            </li>
          </ul>
        </div>
      </section>

      <!-- 오늘의 딜 영역 -->
      <section class="container home-section">
        <div class="home-section__wrap">
          <h3 class="home-section__tit">오늘의딜</h3>
          <ul class="home-section__container">
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[0].goodsId}&fileName=${goodsList[0].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[0].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[0].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[0].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[0].goodsPrice}" pattern="#,###" /> 외</div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.7</div>
                      <div class="home-section__item__reviews">리뷰 3,452</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[1].goodsId}&fileName=${goodsList[1].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[1].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[1].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[1].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[1].goodsPrice}" pattern="#,###" /></div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.6</div>
                      <div class="home-section__item__reviews">리뷰 12,565</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[2].goodsId}&fileName=${goodsList[2].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[2].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[2].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[2].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[2].goodsPrice}" pattern="#,###" /></div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.4</div>
                      <div class="home-section__item__reviews">리뷰 91</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[3].goodsId}&fileName=${goodsList[3].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[3].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[3].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[3].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[3].goodsPrice}" pattern="#,###" /></div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.9</div>
                      <div class="home-section__item__reviews">리뷰 45</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[4].goodsId}&fileName=${goodsList[4].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[4].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[4].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[4].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[4].goodsPrice}" pattern="#,###" /></div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.7</div>
                      <div class="home-section__item__reviews">리뷰 2,775</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[5].goodsId}&fileName=${goodsList[5].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[5].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[5].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[5].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[5].goodsPrice}" pattern="#,###" /></div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.7</div>
                      <div class="home-section__item__reviews">리뷰 7,830</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[6].goodsId}&fileName=${goodsList[6].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[6].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[6].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[6].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[6].goodsPrice}" pattern="#,###" /> 외</div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.3</div>
                      <div class="home-section__item__reviews">리뷰 200</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[7].goodsId}&fileName=${goodsList[7].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[7].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[7].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[7].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[7].goodsPrice}" pattern="#,###" /> 외</div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.7</div>
                      <div class="home-section__item__reviews">리뷰 499</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
            <li class="home-section__item">
              <article>
                <a href="">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${goodsList[8].goodsId}&fileName=${goodsList[8].productThumbnail}" alt="오늘의 세일 상품 이미지">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${goodsList[8].goodsBrand }</h4>
                    <p class="home-section__item__sub">${goodsList[8].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${goodsList[8].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${goodsList[8].goodsPrice}" pattern="#,###" /> 외</div>
                    </div>
                    <div class="home-section__item__review">
                      <div class="home-section__item__grade">4.8</div>
                      <div class="home-section__item__reviews">리뷰 102</div>
                    </div>
                  </div>
                </a>
              </article>
            </li>
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
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[4].boardId}&fileName=${boardList[4].boardThumbnail}" alt="인기 사진">
                    <span class="popular-item__number">1</span>
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[5].boardId}&fileName=${boardList[5].boardThumbnail}" alt="인기 사진">
                    <span class="popular-item__number">2</span>
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[6].boardId}&fileName=${boardList[6].boardThumbnail}" alt="인기 사진">
                    <span class="popular-item__number">3</span>
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[7].boardId}&fileName=${boardList[7].boardThumbnail}" alt="인기 사진">
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[8].boardId}&fileName=${boardList[8].boardThumbnail}" alt="인기 사진">
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[9].boardId}&fileName=${boardList[9].boardThumbnail}" alt="인기 사진">
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[10].boardId}&fileName=${boardList[10].boardThumbnail}" alt="인기 사진">
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img src="${contextPath}/communityDownload?boardId=${boardList[11].boardId}&fileName=${boardList[11].boardThumbnail}" alt="인기 사진">
                  </div>
                </article>
              </a>
            </li>
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
            <li class="user-review__item">
              <a href="">
                <article>
                  <div class="user-review__img__wrap">
                    <img src="${contextPath}/communityDownload?boardId=${boardList[12].boardId}&fileName=${boardList[12].boardThumbnail}" alt="인테리어 이미지">
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
                      ${boardList[12].description}
                      </p>
                    </div>
                    <div class="user-review__bland">
                     ${boardList[12].title }
                    </div>
                  </div>
                </article>
              </a>
            </li>
            <li class="user-review__item">
              <a href="">
                <article>
                  <div class="user-review__img__wrap">
                    <img src="${contextPath}/communityDownload?boardId=${boardList[13].boardId}&fileName=${boardList[13].boardThumbnail}" alt="인테리어 이미지">
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
						${boardList[13].description}
                      </p>
                    </div>
                    <div class="user-review__bland">
                      ${boardList[13].title } 
                    </div>
                  </div>
                </article>
              </a>
            </li>
            <li class="user-review__item">
              <a href="">
                <article>
                  <div class="user-review__img__wrap">
                    <img src="${contextPath}/communityDownload?boardId=${boardList[14].boardId}&fileName=${boardList[14].boardThumbnail}" alt="인테리어 이미지">
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
                      ${boardList[14].description}
                      </p>
                    </div>
                    <div class="user-review__bland">
                      ${boardList[14].title }
                    </div>
                  </div>
                </article>
              </a>
            </li>
          </ul>
          <div class="poular-item__more__mobile">
            <a href="">인테리어 전문가 더 찾기</a>
          </div>
        </div>
      </section>
    </div>
    
   
	
<%@include file="./common/footer.jsp"%>