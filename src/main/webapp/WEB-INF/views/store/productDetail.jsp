<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@include file="../common/header.jsp"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>
     내일의 집
    </title>
    <link rel="stylesheet" href="${contextPath }/resources/css/style.css">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" />
    <link rel="manifest" href="/site.webmanifest" />
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#3da5f5" />
    <meta name="msapplication-TileColor" content="#3da5f5" />
    <meta name="theme-color" content="#ffffff" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.3/tiny-slider.css"
    />
   
  </head>
  
  <body>

                  <!-- 로그인을 한 경우 -->
             <!--      <div class="button-group">
                    <button
                      class="gnb-icon-button is-search lg-hidden"
                      type="button"
                      aria-label="검색창 열기 버튼"
                    >
                      <i class="ic-search"></i>
                    </button>

                    <a
                      class="gnb-icon-button sm-hidden"
                      href="/"
                      aria-label="스크랩북 페이지로 이동"
                    >
                      <i class="ic-bookmark"></i>
                    </a>

                    <a
                      class="gnb-icon-button sm-hidden"
                      href="/"
                      aria-label="내 소식 페이지로 이동"
                    >
                      <i class="ic-bell"></i>
                    </a>

                    <a
                      class="gnb-icon-button is-cart"
                      href="/"
                      aria-label="장바구니 페이지로 이동"
                    >
                      <i class="ic-cart"></i>
                      <strong class="badge">9</strong>
                    </a>

                    <div class="my-menu sm-hidden">
                      is-active
                      <button
                        class="my-menu-button"
                        type="button"
                        aria-label="마이메뉴 열기 버튼"
                      >
                        <img
                          src="./assets/images/img-user-01.jpg"
                          alt="프로필 이미지"
                        />
                      </button>

                      <div class="my-menu-content">
                        <ul class="my-menu-list">
                          <li class="my-menu-item">
                            <a href="/">마이페이지</a>
                          </li>
                          <li class="my-menu-item">
                            <a href="/">나의 쇼핑</a>
                          </li>
                          <li class="my-menu-item"><a href="/">이벤트</a></li>
                          <li class="my-menu-item">
                            <button type="button">로그아웃</button>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div> -->

                  <!-- 로그인 하지 않은 경우 -->
                  <!-- <div class="button-group">
                    <button
                      class="gnb-icon-button is-search lg-hidden"
                      type="button"
                      aria-label="검색창 열기 버튼"
                    >
                      <a href="/">
                        <i class="ic-search"></i>
                      </a>
                    </button>
  
                    <a
                      class="gnb-icon-button is-cart"
                      href="/"
                      aria-label="장바구니 페이지로 이동"
                    >
                      <i class="ic-cart"></i>
                    </a>
  
                    <div class="gnb-auth sm-hidden">
                      <a href="/">로그인</a>
                      <a href="/">회원가입</a>
                    </div>
                  </div> -->

     
    <main class="product-show">
      <div class="container_detail">
        <div class="row">
          <div class="col-sm-4">
            <div class="breadcrumb">
              <a href="#">가구</a>
             <i class="lnb-item is-active fa-solid fa-angle-right"></i>
              <a href="#">매트리스·토퍼</a>
              <i class="lnb-item is-active fa-solid fa-angle-right"></i>
              <a href="#">매트리스</a>
              <i class="lnb-item is-active fa-solid fa-angle-right"></i>
              <a href="#">스프링매트리스</a>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4 col-md-6 col-lg-7">
            <div class="product-carousel" role="region">
              <div class="product-carousel-slider">
                <ol class="slider-list">
                  <li
                    class="slider-item"
                    role="tabpanel"
                    aria-labelledby="product-carousel-tab-1"
                  >
                    <figure>
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="" />
                      <figcaption class="visually-hidden">
                       fff
                      </figcaption>
                    </figure>
                  </li>
                  <li
                    class="slider-item"
                    role="tabpanel"
                    aria-labelledby="product-carousel-tab-2"
                  >
                    <figure>
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583583797965488.jpg?gif=1&w=640&h=640&c=c&webp=1" alt="" />
                      <figcaption class="visually-hidden">
                        보아르 전기히터 상세이미지 2
                      </figcaption>
                    </figure>
                  </li>
                  <li
                    class="slider-item"
                    role="tabpanel"
                    aria-labelledby="product-carousel-tab-3"
                  >
                    <figure>
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165604236522218778.jpg?gif=1&w=640&h=640&c=c&webp=1" alt="" />
                      <figcaption class="visually-hidden">
                        보아르 전기히터 상세이미지 3
                      </figcaption>
                    </figure>
                  </li>
                  <li
                    class="slider-item"
                    role="tabpanel"
                    aria-labelledby="product-carousel-tab-4"
                  >
                    <figure>
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165604279730488990.jpg?gif=1&w=640&h=640&c=c&webp=1" alt="" />
                      <figcaption class="visually-hidden">
                        보아르 전기히터 상세이미지 4
                      </figcaption>
                    </figure>
                  </li>
                </ol>
              </div>

              <div class="product-carousel-thumbnail">
                <ol class="thumbnail-list" class="slider-item" role="tablist">
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-1"
                    role="tab"
                  >
                    <button type="button">
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1번 이미지" />
                      
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-2"
                    role="tab"
                  >
                    <button type="button">
                      <img
                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583583797965488.jpg?gif=1&w=640&h=640&c=c&webp=1"
                        alt="2번 이미지"
                      />
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-3"
                    role="tab"
                  >
                    <button type="button">
                      <img
                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165604236522218778.jpg?gif=1&w=640&h=640&c=c&webp=1"
                        alt="3번 이미지"
                      />
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-4"
                    role="tab"
                  >
                    <button type="button">
                      <img
                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165604279730488990.jpg?gif=1&w=640&h=640&c=c&webp=1"
                        alt="4번 이미지"
                      />
                    </button>
                  </li>
                </ol>
              </div>
            </div>
          </div>
          
          <div class="col-sm-4 col-md-6 col-lg-5">
            <section class="product-info">
              <header class="product-info-header">
                <a class="info-brand" href="#">${productDTO.goodsBrand}</a>
                <h1 class="info-title">
                  ${productDTO.goodsName}
                </h1>
                <div class="info-review">
                  <div class="star-rating">
                  <i class="fa-solid fa-star ic-star is-active"></i>
                  <i class="fa-solid fa-star ic-star is-active"></i>
                  <i class="fa-solid fa-star ic-star is-active"></i>
                  <i class="fa-solid fa-star ic-star is-active"></i>
                  <i class="fa-solid fa-star ic-star is-active"></i>
                    
                  </div>
                  <p>
                    <strong>566</strong>
                    <span class="sm-hidden">개 리뷰</span>
                  </p>
                </div>
              </header>

              <div class="product-info-price sm-hidden">
                <div class="info-price-wrapper">
                  <div class="discount-rate">
                    <span class="rate">${productDTO.discountRate}</span>
                    <span class="percent">%</span>
                  </div>

                  <div class="info-price">
                    <div class="price-off">
                      <strong class="amount">${productDTO.goodsPrice}</strong>
                      <span class="currency">원</span>
                    </div>

                    <div class="info-sale-price">
                      <div class="price-32">
                      <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원</span>
                      </div>
                      <strong class="tag-red"> 특가 </strong>
                    </div>
                  </div>
                </div>

                <p class="info-point">
                  <strong>987p</strong>
                  적립해드립니다. (VIP 3배 혜택 적용됨)
                </p>
              </div>

              <div class="product-info-delivery">
                <span>일반택배</span>
                <strong class="tag-gray"> 무료배송 </strong>
              </div>
            </section>

            <form class="order-form lg-only" action="/" method="POST">
              <div class="order-inputs">
                <div class="select-group is-active">
                  <select class="form-select" id="select-1" required>
                    <option value="">선택</option>
                    <option value="1">선택사항 1</option>
                    <option value="2">선택사항 2</option>
                    <option value="3">선택사항 3</option>
                    <option value="4">선택사항 4</option>
                    <option value="5">선택사항 5</option>
                  </select>
                  <i class="ic-caret fa-solid fa-caret-down"></i>
                 
                </div>

                <div class="select-group">
                  <select class="form-select" id="select-2">
                    <option value="">추가상품(선택)</option>
                    <option value="1">선택사항 1</option>
                    <option value="2">선택사항 2</option>
                    <option value="3">선택사항 3</option>
                    <option value="4">선택사항 4</option>
                    <option value="5">선택사항 5</option>
                  </select>
                  <i class="ic-caret fa-solid fa-caret-down"></i>
                </div>
              </div>

              <div class="order-checkout">
                <ul class="checkout-list">
                  <li class="checkout-item">
                    <div class="checkout-card">
                      <header class="checkout-header">
                        <h4 class="checkout-title">
                          그린 H0044DHA / 포근한 온기를 전해주는 보아르 미니멀
                          전기 히터
                        </h4>
                        <button
                          class="delete-button"
                          type="button"
                          aria-label="상품 삭제"
                        >
                        
                          <i class="ic-close fa-solid fa-xmark"></i>
                        </button>
                      </header>

                      <footer class="checkout-footer">
                        <div class="checkout-select">
                          <select id="checkout-item-1">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                          </select>
                          <i class="ic-caret fa-solid fa-caret-down"></i>
                        </div>

                        <output class="checkout-output" for="checkout-item-1">
                          <div class="price-16">
                            <strong class="amount">32,900</strong>
                            <span class="currency">원</span>
                          </div>
                        </output>
                      </footer>
                    </div>
                  </li>
                </ul>
              </div>

              <dl class="order-summary">
                <dt>주문금액</dt>
                <dd>
                  <output for="select-1 select-2">
                    <div class="price-20">
                      <strong class="amount">0</strong>
                      <span class="currency">원</span>
                    </div>
                  </output>
                </dd>
              </dl>

              <div class="button-group">
                <button class="btn-outlined btn-55" type="button">
                  장바구니
                </button>
                <button class="btn-primary btn-55" type="submit">
                  바로구매
                </button>
              </div>
            </form>
          </div>
        </div>
        
<!-- 상품 디테일 이미지  -->
        <!-- <div class="row sm-only">
          <div class="col-sm-4">
            <div class="product-section-divider" aria-hidden></div>

            <section class="product-section product-user-gallery">
              <header class="product-section-header">
                <h1 class="title">유저들의 스타일링샷</h1>
                <strong class="badge" aria-label="461개">461</strong>
                <a class="icon-button is-right" href="#" aria-label="더보기">
                  <i class="ic-chevron" aria-hidden></i>
                </a>
              </header>

              <div class="product-section-content">
                <div class="user-gallery is-mobile" role="region">
                  <div class="user-gallery-slider">
                    <ol class="slider-list">
                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-1"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="./assets/images/img-review-01.jpg"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              김버그님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-01.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">여름엔수박</a>

                            <span class="order">1/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-2"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/162379973256796523.jpg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              도롱뇽님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-02.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">도롱뇽</a>

                            <span class="order">2/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-3"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/162379973256796523.jpg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              참치바나나님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-03.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">참치바나나</a>

                            <span class="order">3/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-4"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/165106895965973469.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              본조르노님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-04.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">본조르노</a>

                            <span class="order">4/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-5"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160977296893358867.jpeg?gif=1&w=240&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              Jessie님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-05.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">Jessie</a>

                            <span class="order">5/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-6"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161503391162439128.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              hello님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-06.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">hello</a>

                            <span class="order">6/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-7"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163874068850883312.heic?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              어피치님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-07.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">어피치</a>

                            <span class="order">7/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-8"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161241732699783898.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              호로요이님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-08.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">호로요이</a>

                            <span class="order">8/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-9"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/162884796936741885.jpg?gif=1&w=480&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              겨울엔핫팩님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-09.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">겨울엔핫팩</a>

                            <span class="order">9/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-10"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164402108099068261.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              Universe님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="./assets/images/img-user-10.jpg"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">Universe</a>

                            <span class="order">10/461</span>
                          </div>
                        </div>
                      </li>
                    </ol>
                  </div>

                  <div class="user-gallery-thumbnail">
                    <ol class="thumbnail-list" role="tablist">
                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-1"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="./assets/images/img-review-01.jpg"
                            alt="1번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-2"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/162379973256796523.jpg?gif=1&w=360&webp=1"
                            alt="2번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-3"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/162379973256796523.jpg?gif=1&w=360&webp=1"
                            alt="3번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-4"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/165106895965973469.jpeg?gif=1&w=360&webp=1"
                            alt="4번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-5"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160977296893358867.jpeg?gif=1&w=240&webp=1"
                            alt="5번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-6"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161503391162439128.jpeg?gif=1&w=360&webp=1"
                            alt="6번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-7"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163874068850883312.heic?gif=1&w=360&webp=1"
                            alt="7번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-8"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161241732699783898.jpeg?gif=1&w=360&webp=1"
                            alt="8번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-9"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/162884796936741885.jpg?gif=1&w=480&webp=1"
                            alt="9번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-10"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164402108099068261.jpeg?gif=1&w=360&webp=1"
                            alt="10번 스타일링샷"
                          />
                        </button>
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
            </section>

            <div class="product-section-divider is-big" aria-hidden></div>
          </div>
        </div>
      </div>
 -->
      <div class="product-tab">
        <div class="container_detail">
          <div class="row">
            <div class="col-sm-4 col-lg-8">
              <ul class="product-tab-list" role="tablist">
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-spec"
                >
                  <button type="button">상품정보</button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-review"
                >
                  <button type="button">
                    리뷰
                    <strong aria-lable="566개 리뷰">566</strong>
                  </button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-inquiry"
                >
                  <button type="button">
                    문의
                    <strong aria-lable="96개 문의">96</strong>
                  </button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-shipment"
                >
                  <button type="button">배송/환불</button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-recomendation"
                >
                  <button type="button">추천</button>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

   <div class="container_detail">
        <div class="row">
          <div class="col-sm-4 col-lg-8">
            <section class="product-section product-user-gallery sm-hidden">
              <header class="product-section-header">
                <h1 class="title">유저들의 스타일링샷</h1>
                <strong class="badge" aria-label="461개">461</strong>
                <a class="icon-button is-right" href="#" aria-label="더보기">
                  <i class="ic-chevron fa-solid fa-chevron-right"></i>
                </a>
              </header>

              <div class="product-section-content">
                <div class="user-gallery is-desktop" role="region">
                  <div class="user-gallery-slider">
                    <ol class="slider-list">
                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-1"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160475387504737988.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              김버그님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">여름엔수박</a>

                            <span class="order">1/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-2"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160724110280822018.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              도롱뇽님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">도롱뇽</a>

                            <span class="order">2/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-3"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/162379973256796523.jpg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              참치바나나님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">참치바나나</a>

                            <span class="order">3/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-4"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/165106895965973469.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              본조르노님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">본조르노</a>

                            <span class="order">4/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-5"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160977296893358867.jpeg?gif=1&w=240&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              Jessie님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">Jessie</a>

                            <span class="order">5/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-6"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161503391162439128.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              hello님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">hello</a>

                            <span class="order">6/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-7"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163874068850883312.heic?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              어피치님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">어피치</a>

                            <span class="order">7/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-8"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161241732699783898.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              호로요이님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">호로요이</a>

                            <span class="order">8/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-9"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/162884796936741885.jpg?gif=1&w=480&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              겨울엔핫팩님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">겨울엔핫팩</a>

                            <span class="order">9/461</span>
                          </div>
                        </div>
                      </li>

                      <li
                        class="slider-item"
                        role="tabpanel"
                        aria-labelledby="user-gallery-tab-10"
                      >
                        <div class="gallery-card">
                          <figure class="gallery-card-image">
                            <img
                              src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164402108099068261.jpeg?gif=1&w=360&webp=1"
                              alt=""
                            />
                            <figcaption class="visually-hidden">
                              Universe님의 스타일링샷
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">Universe</a>

                            <span class="order">10/461</span>
                          </div>
                        </div>
                      </li>
                    </ol>

                    <div class="user-gallery-controls sm-hidden">
                      <button
                        class="control-button is-prev"
                        type="button"
                        aria-label="이전 이미지"
                      >
                       <i class="fa-solid fa-chevron-left"></i>
                      </button>
                      <button
                        class="control-button is-next"
                        type="button"
                        aria-label="다음 이미지"
                      >
                        <i class="fa-solid fa-chevron-right"></i>
                      </button>
                    </div>
                  </div>

                  <div class="user-gallery-thumbnail">
                    <ol class="thumbnail-list" role="tablist">
                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-1"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160475387504737988.jpeg?gif=1&w=360&webp=1"
                            alt="1번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-2"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160724110280822018.jpeg?gif=1&w=360&webp=1"
                            alt="2번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-3"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/162379973256796523.jpg?gif=1&w=360&webp=1"
                            alt="3번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-4"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/165106895965973469.jpeg?gif=1&w=360&webp=1"
                            alt="4번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-5"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160977296893358867.jpeg?gif=1&w=240&webp=1"
                            alt="5번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-6"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161503391162439128.jpeg?gif=1&w=360&webp=1"
                            alt="6번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-7"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/163874068850883312.heic?gif=1&w=360&webp=1"
                            alt="7번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-8"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161241732699783898.jpeg?gif=1&w=360&webp=1"
                            alt="8번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-9"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/162884796936741885.jpg?gif=1&w=480&webp=1"
                            alt="9번 스타일링샷"
                          />
                        </button>
                      </li>

                      <li
                        class="thumbnail-item"
                        id="user-gallery-tab-10"
                        role="tab"
                      >
                        <button type="button">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/164402108099068261.jpeg?gif=1&w=360&webp=1"
                            alt="10번 스타일링샷"
                          />
                        </button>
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
            </section>
 
            <section
              class="product-section product-spec is-open"
              id="product-spec"
              role="tabpanel"
            >
              <header class="product-section-header sm-hidden">
                <h1 class="title">상품 정보</h1>
              </header>

              <div class="product-section-content">
                <div class="button-wrapper sm-only">
                  <button type="button" class="btn-primary btn-55">
                    펼치기
                  </button>
                </div>

                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/165631531364722654.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 01
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/165607208365019676.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 02
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/165607209394911934.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 03
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/165607211165448740.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 04
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/165607212996336587.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 05
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/164931013906011780.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 06
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/165153605347178306.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 07
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/164931015707926358.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 08
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/164931016402789037.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 09
                  </figcaption>
                </figure>
                <figure>
                  <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/descriptions/url/162694614733829109.jpg" alt="" />
                  <figcaption class="visually-hidden">
                    보아르 전기 히터 상세 이미지 10
                  </figcaption>
                </figure>

                <table class="product-table">
                  <tbody>
                    <tr>
                      <th scope="row">품명 및 모델명</th>
                      <td>VO-HT015</td>
                    </tr>
                    <tr>
                      <th scope="row">KC 인증 필 유무</th>
                      <td>SU071586-19003</td>
                    </tr>
                    <tr>
                      <th scope="row">정격전압, 소비전력</th>
                      <td>AC220V, 60Hz, 400W</td>
                    </tr>
                    <tr>
                      <th scope="row">에너지소비효율등급</th>
                      <td>해당사항없음</td>
                    </tr>
                    <tr>
                      <th scope="row">동일모델의 출시년월</th>
                      <td>2019.11</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        제조자, 수입품의 경우 수입자를 함께 표기
                      </th>
                      <td>보아르주식회사</td>
                    </tr>
                    <tr>
                      <th scope="row">제조국</th>
                      <td>중국</td>
                    </tr>
                    <tr>
                      <th scope="row">크기</th>
                      <td>338*122*300 mm</td>
                    </tr>
                    <tr>
                      <th scope="row">냉난방면적</th>
                      <td>개인용</td>
                    </tr>
                    <tr>
                      <th scope="row">추가설치비용</th>
                      <td>해당사항없음</td>
                    </tr>
                    <tr>
                      <th scope="row">품질보증기준</th>
                      <td>구매일로부터 1년 이내 무상 A/S가능</td>
                    </tr>
                    <tr>
                      <th scope="row">A/S 책임자와 전화번호</th>
                      <td>1234-5678</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div>

            <section
              class="product-section product-review"
              id="product-review"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">리뷰</h1>
                <strong class="badge" aria-label="566개">566</strong>
                <a class="text-button" href="#">리뷰쓰기</a>
              </header>

              <div class="product-section-content">
                <div class="review-scoreboard">
                  <div class="score-summary">
                    <strong class="average-score" aria-label="평점 4.8"
                      >4.8</strong
                    >
                    <div class="star-rating">
                    <i class="fa-solid fa-star ic-star is-active"></i>
                    <i class="fa-solid fa-star ic-star is-active"></i>
                    <i class="fa-solid fa-star ic-star is-active"></i>
                    <i class="fa-solid fa-star ic-star is-active"></i>
                    <i class="fa-solid fa-star ic-star is-active"></i>
                    </div>
                  </div>

                  <div class="score-detail">
                    <dl class="score-stats-list">
                      <div class="score-stats-item is-active">
                        <dt>5점</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div
                              class="active-bar"
                              style="width: 82.5088339223%"
                            ></div>
                          </div>
                          <strong class="graph-count" aria-label="467명"
                            >467</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>4점</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div
                              class="active-bar"
                              style="width: 15.371024735%"
                            ></div>
                          </div>
                          <strong class="graph-count" aria-label="87명"
                            >87</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>3점</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div
                              class="active-bar"
                              style="width: 2.296819788%"
                            ></div>
                          </div>
                          <strong class="graph-count" aria-label="13명"
                            >13</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>2점</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div class="active-bar"></div>
                          </div>
                          <strong class="graph-count" aria-label="0명"
                            >0</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>1점</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div class="active-bar"></div>
                          </div>
                          <strong class="graph-count" aria-label="0명"
                            >0</strong
                          >
                        </dd>
                      </div>
                    </dl>
                  </div>
                </div>

                <ol class="review-list">
                  <!-- 리뷰카드 디폴트 -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">고영희 님이 작성한 리뷰</h3>

                        <a class="avatar-24" href="#">
                          <img
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>고영희</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0점 / 5.0점"
                            >
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>오늘의집 구매</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>
                          집 전체를 데운다기보다는 틀어놓고 앞에 앉아있으면
                          따땃해지는 정도예요. 불 꺼놓고 난로 켜고 담요 덮은
                          채로 커피 마시면 아주 좋아요. 고양이도 좋아해요
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          도움이 돼요
                        </button>

                        <p>
                          <strong> <span>7</span>명</strong>에게 도움이
                          되었습니다.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- 유저 이미지가 없는 경우 -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">
                          우유파이 님이 작성한 리뷰
                        </h3>

                        <a
                          class="avatar-24"
                          href="#"
                          aria-label="우유파이 님의 프로필로 이동"
                        >
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>우유파이</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0점 / 5.0점"
                            >
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star "></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.16</time>
                              <span>오늘의집 구매</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>
                          작업실에서 손이 시려워서 책상 위에 올려서 쓸걸로
                          골랐습니다! 아주아주 뜨듯하고 크기도 적당하고 민트
                          사고싶엇지만 품절 ㅠㅠ
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          도움이 돼요
                        </button>

                        <p>
                          <strong> <span>7</span>명</strong>에게 도움이
                          되었습니다.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- 리뷰에 이미지가 첨부된 경우 -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">
                          대롱대롱싸리잎에은구슬 님이 작성한 리뷰
                        </h3>

                        <a class="avatar-24" href="#">
                          <img
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>대롱대롱싸리잎에은구슬</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0점 / 5.0점"
                            >
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>오늘의집 구매</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <div class="review-image">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/165106895965973469.jpeg?gif=1&w=360&webp=1"
                            alt="대롱대롱싸리잎에은구슬 님의 리뷰 사진"
                          />
                        </div>
                        <p>
                          고양이가 좋아해요 ㅎㅎ 섬세한 온도조절이 안되는게
                          아쉽지만, 이 가격 이 디자인이면 만족할 수 밖에 없어요
                          :) 좋습니다!
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          도움이 돼요
                        </button>

                        <p>
                          <strong> <span>7</span>명</strong>에게 도움이
                          되었습니다.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- 버튼 눌리고 도움됨 텍스트 있는 경우 -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">쿠쿠 님이 작성한 리뷰</h3>

                        <a class="avatar-24" href="#">
                          <img
                            src="./assets/images/img-user-03.jpg"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>쿠쿠</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0점 / 5.0점"
                            >
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star"></i>
                              <i class="fa-solid fa-star ic-star"></i>
                              
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>오늘의집 구매</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>
                          오래된 아파트 확장된 방이라 외풍이 너무 심해 급하게
                          구매했습니다! 예약배송이라 10일 가까이 기다렸는데
                          너무너무 만족스러워요~ :) 방이 큰 편이라 전체가 다
                          따뜻해지길 바라지도 않았고, 후기를 먼저 봤던터라 크게
                          기대를 안햇었는데 기대 이상입니다. 틀어놓으면 확실히
                          방 공기가 달라져요! 후끈!!! 까진 아니어도 차가운
                          공기가 따뜻해집니다~ 만족스러워요!!! 올 겨울 덕분에
                          떨지 않고 보낼 수 있을것 같습니당
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          <!-- <i class="ic-check" aria-hidden></i> -->
                          도움이 돼요
                        </button>

                        <p>
                          <strong> <span>1</span>명</strong>에게 도움이
                          되었습니다.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- 버튼 안눌리고 도움됨 텍스트 없는 경우 -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">
                          참치바나나 님이 작성한 리뷰
                        </h3>

                        <a class="avatar-24" href="#">
                          <img
                            src="./assets/images/img-user-05.jpg"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>참치바나나</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0점 / 5.0점"
                            >
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>오늘의집 구매</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>가격 대비 만족합니다.</p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          도움이 돼요
                        </button>
                      </footer>
                    </article>
                  </li>
                </ol>

                <div class="pagination">
                  <ol class="page-list">
                    <li class="page-item is-active"><a href="#">1</a></li>
                    <li class="page-item"><a href="#">2</a></li>
                    <li class="page-item"><a href="#">3</a></li>
                    <li class="page-item"><a href="#">4</a></li>
                    <li class="page-item"><a href="#">5</a></li>
                  </ol>
                  <button class="page-control page-next" type="button">
                    <i class="ic-chevron fa-light fa-chevron-right"></i>
                  </button>
                </div>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div>

            <!-- 리뷰가 없는 경우 -->
            <!-- <section
              class="product-section product-review"
              id="product-review"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">리뷰</h1>
                <strong class="badge" aria-label="0개">0</strong>
                <a class="text-button" href="#">리뷰쓰기</a>
              </header>

              <div class="product-section-content">
                <p class="review-empty">
                  첫 리뷰를 남겨주세요! <br />
                  최대 <strong>500P</strong>를 드립니다.
                </p>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div> -->

            <section
              class="product-section product-inquiry is-open"
              id="product-inquiry"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">문의</h1>
                <strong class="badge" aria-label="96개">96</strong>
                <a class="text-button" href="#">문의하기</a>
                <button
                  class="icon-button sm-only"
                  type="button"
                  aria-label="더보기"
                >
                  <i class="ic-chevron" aria-hidden></i>
                </button>
              </header>

              <div class="product-section-content">
                <ol class="inquiry-list">
                  <!-- 공개문의, 미답변 -->
                  <li class="inquiry-item">
                    <article class="inquiry-card">
                      <header class="inquiry-card-header">
                        <h3 class="visually-hidden">지* 님이 남기신 문의</h3>
                        <dl class="detail">
                          <dt class="visually-hidden">구매여부</dt>
                          <dd>구매</dd>
                          <dt class="visually-hidden">문의유형</dt>
                          <dd>상품</dd>
                          <dt class="visually-hidden">답변여부</dt>
                          <dd>미답변</dd>
                        </dl>
                        <div class="misc">
                          <strong>지*</strong>
                          <time datetime="2021-01-21 16:40">
                            2021년 1월 21일 16시 40분
                          </time>
                        </div>
                      </header>
                      <div class="inquiry-card-body">
                        <div class="inquiry-content">
                          <span aria-label="문의내용"> Q </span>
                          <p>
                            상품받았는데 사용하면서 보니까 불들어오는곳 옆에
                            하얀 부분이 갈색으로 얼룩져있는데 불량인가요...?
                            위험하지는 않겠죠? 다른분들 후기사진에는 다 깨끗한
                            것 같아서요! 사진첨부가없어서 텍스트로 설명하려 하니
                            애매하네요ㅠㅠ
                          </p>
                        </div>
                      </div>
                    </article>
                  </li>

                  <!-- 비밀문의 -->
                  <li class="inquiry-item">
                    <article class="inquiry-card">
                      <header class="inquiry-card-header">
                        <h3 class="visually-hidden">홍시* 님이 남기신 문의</h3>
                        <dl class="detail">
                          <dt class="visually-hidden">구매여부</dt>
                          <dd>비구매</dd>
                          <dt class="visually-hidden">문의유형</dt>
                          <dd>상품</dd>
                          <dt class="visually-hidden">답변여부</dt>
                          <dd>미답변</dd>
                        </dl>
                        <div class="misc">
                          <strong>홍시*</strong>
                          <time datetime="2021-01-21 16:40">
                            2021년 1월 21일 16시 40분
                          </time>
                        </div>
                      </header>

                      <div class="inquiry-card-body">
                        <div class="inquiry-content">
                          <span aria-label="문의내용"> Q </span>
                          <p>
                            <i class="ic-lock" aria-hidden></i>
                            비밀글입니다.
                          </p>
                        </div>
                      </div>
                    </article>
                  </li>

                  <!-- 공개문의, 답변완료 -->
                  <li class="inquiry-item">
                    <article class="inquiry-card">
                      <header class="inquiry-card-header">
                        <h3 class="visually-hidden">샤* 님이 남기신 문의</h3>
                        <dl class="detail">
                          <dt class="visually-hidden">구매여부</dt>
                          <dd>비구매</dd>
                          <dt class="visually-hidden">문의유형</dt>
                          <dd>배송</dd>
                          <dt class="visually-hidden">답변여부</dt>
                          <dd class="is-answered">답변완료</dd>
                        </dl>
                        <div class="misc">
                          <strong>샤*</strong>
                          <time datetime="2021-01-21 16:40">
                            2021년 1월 21일 16시 40분
                          </time>
                        </div>
                      </header>
                      <div class="inquiry-card-body">
                        <div class="inquiry-content">
                          <span aria-label="문의내용"> Q </span>
                          <p>
                            화이트 재입고 날짜 알려 주세요 그리고 4평 남짓 방에
                            두려고 하는데 너무 가까울까요
                          </p>
                        </div>

                        <div class="inquiry-content">
                          <span aria-label="답변내용"> A </span>
                          <div class="seller">
                            <strong>OA</strong>
                            <time datetime="2021-01-21 16:40">
                              2021년 1월 21일 16시 40분
                            </time>
                          </div>

                          <p>
                            안녕하세요 고객님, 보아르입니다:) 현재 고객님의 주문
                            정보가 확인되지 않아 바로 안내드리지 못하는 점 양해
                            부탁드립니다. 문의하신 제품의 경우 현재 주문폭주로
                            인한 예약 판매중으로 순차 발송 진행되고 있습니다.
                            주문 시 최대한 빠른 발송 진행될 수 있도록
                            노력하겠습니다. 감사합니다.
                          </p>
                        </div>
                      </div>
                    </article>
                  </li>
                </ol>

                <div class="pagination">
                  <ol class="page-list">
                    <li class="page-item is-active"><a href="#">1</a></li>
                    <li class="page-item"><a href="#">2</a></li>
                    <li class="page-item"><a href="#">3</a></li>
                    <li class="page-item"><a href="#">4</a></li>
                    <li class="page-item"><a href="#">5</a></li>
                  </ol>
                  <button class="page-control page-next" type="button">
                    <i class="ic-chevron"></i>
                  </button>
                </div>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div>

            <!-- 문의가 없는 경우 -->
            <!-- <section
              class="product-section product-inquiry is-open"
              id="product-inquiry"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">문의</h1>
                <strong class="badge" aria-label="0개">0</strong>
                <a class="text-button" href="#">문의하기</a>
              </header>

              <div class="product-section-content">
                <p class="inquiry-empty">문의 내역이 없습니다.</p>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div> -->

            <div class="product-shipment" id="product-shipment" role="tabpanel">
              <header class="product-section-header sm-only">
                <h1 class="title">배송/교환/환불</h1>
                <button class="icon-button" type="button" aria-label="더보기">
                  <i class="ic-chevron" aria-hidden></i>
                </button>
              </header>

              <section class="product-section">
                <header class="product-section-header">
                  <h1 class="title">배송</h1>
                </header>

                <div class="product-section-content">
                  <table class="product-table">
                    <tbody>
                      <tr>
                        <th scope="row">배송</th>
                        <td>일반택배</td>
                      </tr>
                      <tr>
                        <th scope="row">배송비</th>
                        <td>무료 배송</td>
                      </tr>
                      <tr>
                        <th scope="row">배송불가 지역</th>
                        <td>배송불가 지역이 없습니다</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </section>
              <div class="product-section-divider sm-only" aria-hidden></div>

              <section class="product-section">
                <header class="product-section-header">
                  <h1 class="title">교환환불</h1>
                </header>

                <div class="product-section-content">
                  <table class="product-table">
                    <tbody>
                      <tr>
                        <th scope="row">반품배송비</th>
                        <td>
                          2,500원 (최초 배송비가 무료인 경우 5,000원 부과)
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">교환배송비</th>
                        <td>5,000원</td>
                      </tr>
                      <tr>
                        <th scope="row">보내실 곳</th>
                        <td>(00000) 서울 종로구 누하동</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </section>
              <div class="product-section-divider sm-only" aria-hidden></div>
            </div>

<!------------------ 비슷한 상품  -------------------->
            <section
              class="product-section product-recommendation"
              id="product-recomendation"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">비슷한 상품</h1>
              </header>

              <div class="product-section-content">
                <ul class="product-list">
                  <li class="product-item">
                    <a href="#">
                      <div class="product-card">
                        <div class="product-card-image">
                          <img
                            src="./assets/images/img-recommendation-01.jpg"
                            alt=""
                          />
                        </div>

                        <span class="product-card-brand">emk</span>

                        <h3 class="product-card-title">
                          시즌템! 감성 레트로 전기히터 EQH-S161 3 colors
                        </h3>

                        <div class="product-card-price">
                          <span class="percent">72%</span>
                          <strong class="price">49,000</strong>
                        </div>

                        <dl class="product-card-detail">
                          <div class="rating">
                            <dt>
                              <i class="fa-solid fa-star ic-star"></i>
                              <span class="visually-hidden">평점</span>
                            </dt>
                            <dd>4.6</dd>
                          </div>
                          <div class="review">
                            <dt>리뷰</dt>
                            <dd>3,605</dd>
                          </div>
                        </dl>

                        <strong class="tag-gray"> 무료배송 </strong>
                      </div>
                    </a>
                  </li>

                  <li class="product-item">
                    <a href="#">
                      <div class="product-card">
                        <div class="product-card-image">
                          <img
                            src="./assets/images/img-recommendation-02.jpg"
                            alt=""
                          />
                        </div>

                        <span class="product-card-brand"
                          >플러스마이너스제로
                        </span>

                        <h3 class="product-card-title">
                          원적외선 2단 히터 XHS-Y010
                        </h3>

                        <div class="product-card-price">
                          <span class="percent">10%</span>
                          <strong class="price">88,200</strong>
                        </div>

                        <dl class="product-card-detail">
                          <div class="rating">
                            <dt>
                            <i class="fa-solid fa-star ic-star"></i>
                              <!-- <i class="ic-star"></i> -->
                              <span class="visually-hidden">평점</span>
                            </dt>
                            <dd>4.5</dd>
                          </div>
                          <div class="review">
                            <dt>리뷰</dt>
                            <dd>28</dd>
                          </div>
                        </dl>

                        <strong class="tag-gray"> 무료배송 </strong>
                      </div>
                    </a>
                  </li>

                  <li class="product-item">
                    <a href="#">
                      <div class="product-card">
                        <div class="product-card-image">
                          <img
                            src="./assets/images/img-recommendation-03.jpg"
                            alt=""
                          />
                        </div>

                        <span class="product-card-brand"
                          >플러스마이너스제로</span
                        >

                        <h3 class="product-card-title">
                          리플렉트 에코히터 4colors
                        </h3>

                        <div class="product-card-price">
                          <span class="percent">23%</span>
                          <strong class="price">129,000</strong>
                        </div>

                        <dl class="product-card-detail">
                          <div class="rating">
                            <dt>
                            <i class="fa-solid fa-star ic-star"></i>
                              <!-- <i class="ic-star"></i> -->
                              <span class="visually-hidden">평점</span>
                            </dt>
                            <dd>4.6</dd>
                          </div>
                          <div class="review">
                            <dt>리뷰</dt>
                            <dd>605</dd>
                          </div>
                        </dl>

                        <strong class="tag-gray"> 무료배송 </strong>
                      </div>
                    </a>
                  </li>

                  <li class="product-item">
                    <a href="#">
                      <div class="product-card">
                        <div class="product-card-image">
                          <img
                            src="./assets/images/img-recommendation-04.jpg"
                            alt=""
                          />
                        </div>

                        <span class="product-card-brand">코시나</span>

                        <h3 class="product-card-title">
                          오방난로 히터 6종 모음전
                        </h3>

                        <div class="product-card-price">
                          <span class="percent">52%</span>
                          <strong class="price">56,900</strong>
                        </div>

                        <dl class="product-card-detail">
                          <div class="rating">
                            <dt>
                              <i class="fa-solid fa-star ic-star"></i>
                              <span class="visually-hidden">평점</span>
                            </dt>
                            <dd>4.6</dd>
                          </div>
                          <div class="review">
                            <dt>리뷰</dt>
                            <dd>250</dd>
                          </div>
                        </dl>

                        <strong class="tag-gray"> 무료배송 </strong>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div>
          </div>

          <div class="col-lg-4 lg-only">
            <form
              class="floating-order-form order-form"
              action="/"
              method="POST"
            >
              <div class="order-inputs">
                <div class="select-group is-active">
                  <select
                    class="form-select"
                    id="floating-order-form-select-1"
                    required
                  >
                    <option value="">선택</option>
                    <option value="1">선택사항 1</option>
                    <option value="2">선택사항 2</option>
                    <option value="3">선택사항 3</option>
                    <option value="4">선택사항 4</option>
                    <option value="5">선택사항 5</option>
                  </select>
                  <i class="ic-caret" aria-hidden></i>
                </div>

                <div class="select-group">
                  <select class="form-select" id="floating-order-form-select-2">
                    <option value="">추가상품(선택)</option>
                    <option value="1">선택사항 1</option>
                    <option value="2">선택사항 2</option>
                    <option value="3">선택사항 3</option>
                    <option value="4">선택사항 4</option>
                    <option value="5">선택사항 5</option>
                  </select>
                  <i class="ic-caret" aria-hidden></i>
                </div>
              </div>

              <div class="order-checkout">
                <ul class="checkout-list">
                  <li class="checkout-item">
                    <div class="checkout-card">
                      <header class="checkout-header">
                        <h4 class="checkout-title">
                          그린 H0044DHA / 포근한 온기를 전해주는 보아르 미니멀
                          전기 히터
                        </h4>
                        <button
                          class="delete-button"
                          type="button"
                          aria-label="상품 삭제"
                        >
                          <i class="ic-close" aria-hidden></i>
                        </button>
                      </header>

                      <footer class="checkout-footer">
                        <div class="checkout-select">
                          <select id="floating-order-form-checkout-item-1">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                          </select>
                          <i class="ic-caret" aria-hidden></i>
                        </div>

                        <output
                          class="checkout-output"
                          for="floating-order-form-checkout-item-1"
                        >
                          <div class="price-16">
                            <strong class="amount">32,900</strong>
                            <span class="currency">원</span>
                          </div>
                        </output>
                      </footer>
                    </div>
                  </li>
                </ul>
              </div>

              <dl class="order-summary">
                <dt>주문금액</dt>
                <dd>
                  <output
                    for="floating-order-form-select-1 floating-order-form-select-2"
                  >
                    <div class="price-20">
                      <strong class="amount">0</strong>
                      <span class="currency">원</span>
                    </div>
                  </output>
                </dd>
              </dl>

              <div class="button-group">
                <!-- 북마크에 추가하기 전 -->
                <button
                  class="bookmark-button btn-55"
                  type="button"
                  aria-label="북마크에 추가"
                >
                <i class="ic-bookmark fa-thin fa-bookmark"></i>
                  
                </button>

                <!-- 북마크에 추가되었을 때 -->
                <!-- <button
                  class="bookmark-button btn-55 is-active"
                  type="button"
                  aria-label="북마크 해제"
                >
                  <i class="ic-bookmark-filled" aria-hidden></i>
                </button> -->

                <button class="btn-outlined btn-55" type="button">
                  장바구니
                </button>
                <button class="btn-primary btn-55" type="submit">
                  바로구매
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="order-cta lg-hidden">
        <!-- NOTE: 북마크를 하지 않았을 때 -->
        <button class="btn-ghost btn-48" type="button">
          <i class="ic-bookmark" aria-hidden></i>
          <span aria-label="북마크 18,302회"> 18,302 </span>
        </button>

        <!-- NOTE: 북마크를 했을 때 -->
        <!-- <button class="btn-ghost btn-48 is-active" type="button">
          <i class="ic-bookmark-filled" aria-hidden></i>
          <span aria-label="북마크 18,303회"> 18,303 </span>
        </button> -->

        <button class="btn-primary btn-48" type="button">구매하기</button>
      </div>
    </main>

   

    <aside class="sidebar sm-only">
      <header class="sidebar-header">
        <h1 class="logo">
          <a href="/">
            <img src="./assets/images/Logo.svg" alt="내일의 집" />
          </a>
        </h1>

        <!-- 로그인을 한 경우 -->
        <div class="sidebar-user">
          <a href="/">
            <div class="avatar-24">
              <img src="./assets/images/img-user-01.jpg" alt="user-image" />
            </div>
            <strong class="username">닉네임이긴경우테스트입니다</strong>
          </a>
        </div>

        <!-- 로그인을 하지 않은 경우 -->
        <!-- <div class="sidebar-auth">
          <a class="btn-outlined btn-40" href="/">로그인</a>
          <a class="btn-primary btn-40" href="/">회원가입</a>
        </div> -->
      </header>

      <nav class="sidebar-nav">
        <h2 class="visually-hidden">메뉴</h2>

        <div class="drawer-menu is-community">
          <button class="drawer-menu-button" type="button">
            <i class="ic-community" aria-hidden></i>
            커뮤니티
            <i class="ic-chevron" aria-hidden></i>
          </button>

          <div class="drawer-menu-content">
            <ul class="drawer-menu-list">
              <li class="drawer-menu-item">
                <a href="/">홈</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">사진</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">집들이</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">노하우</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">전문가집들이</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">셀프가이드</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">질문과답변</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">이벤트</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="drawer-menu is-store">
          <button class="drawer-menu-button" type="button">
            <i class="ic-store" aria-hidden></i>
            스토어
            <i class="ic-chevron" aria-hidden></i>
          </button>

          <div class="drawer-menu-content">
            <ul class="drawer-menu-list">
              <li class="drawer-menu-item">
                <a href="/">스토어</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">카테고리</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">신혼가구</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">베스트</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">오늘의딜</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">연휴특가</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">월동준비</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">리퍼마켓</a>
              </li>
              <li class="drawer-menu-item is-active">
                <a href="/">
                  기획전
                  <i class="ic-new" aria-label="새 기획전"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>

        <div class="drawer-menu is-expert">
          <button class="drawer-menu-button" type="button">
            <i class="ic-expert" aria-hidden></i>
            인테리어시공
            <i class="ic-chevron" aria-hidden></i>
          </button>

          <div class="drawer-menu-content">
            <ul class="drawer-menu-list">
              <li class="drawer-menu-item">
                <a href="/">시공홈</a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">시공스토어</a>
              </li>
            </ul>
          </div>
        </div>

        <!-- 로그인을 한 경우 -->
        <div class="sidebar-user-menu">
          <ul class="user-menu-list">
            <li class="user-menu-item"><a href="/">마이페이지</a></li>
            <li class="user-menu-item"><a href="/">나의 쇼핑</a></li>
            <li class="user-menu-item"><a href="/">스크랩북</a></li>
            <li class="user-menu-item"><a href="/">알림</a></li>
            <li class="user-menu-item"><a href="/">이벤트</a></li>
          </ul>
        </div>
      </nav>
    </aside>

    <aside class="search-modal lg-hidden">
      <div class="container_detail">
        <div class="row">
          <div class="col-sm-4">
            <header class="search-modal-header">
              <h1 class="visually-hidden">검색창</h1>

              <div class="search-modal-form">
                <div class="input-group">
                  <i class="ic-search" aria-hidden></i>
                  <input class="form-input" type="text" placeholder="search" />
                </div>

                <button class="btn-ghost btn-40" type="button">취소</button>
              </div>
            </header>

            <section class="search-history">
              <header class="search-history-header">
                <h2 class="title">최근 검색어</h2>
                <button type="button">전체 삭제</button>
              </header>

              <!-- 최근 검색어가 존재할 경우 -->
              <div class="search-history-content">
                <ol class="search-history-list">
                  <li class="search-history-item">
                    <button class="word-button" type="button">가습기</button>
                    <button class="delete-button" type="button">
                      <i class="ic-close" aria-label="검색어 삭제"></i>
                    </button>
                  </li>
                  <li class="search-history-item">
                    <button class="word-button" type="button">
                      에어프라이어
                    </button>
                    <button class="delete-button" type="button">
                      <i class="ic-close" aria-label="검색어 삭제"></i>
                    </button>
                  </li>
                  <li class="search-history-item">
                    <button class="word-button" type="button">테이블</button>
                    <button class="delete-button" type="button">
                      <i class="ic-close" aria-label="검색어 삭제"></i>
                    </button>
                  </li>
                </ol>
              </div>

              <!-- 최근 검색어가 존재하지 않을 경우 -->
              <!-- <div class="search-history-content">
                <p class="placeholder">최근 검색한 내역이 없습니다.</p>
              </div> -->
            </section>
          </div>
        </div>
      </div>
    </aside>

    <aside class="order-form-modal lg-hidden">
      <h1 class="visually-hidden">주문창</h1>

      <form class="order-form" action="/" method="POST">
        <div class="container_detail">
          <div class="row">
            <div class="col-sm-4">
              <div class="order-inputs">
                <div class="select-group is-active">
                  <select
                    class="form-select"
                    id="order-form-modal-select-1"
                    required
                  >
                    <option value="">선택</option>
                    <option value="1">선택사항 1</option>
                    <option value="2">선택사항 2</option>
                    <option value="3">선택사항 3</option>
                    <option value="4">선택사항 4</option>
                    <option value="5">선택사항 5</option>
                  </select>
                  <i class="ic-caret" aria-hidden></i>
                </div>

                <div class="select-group">
                  <select class="form-select" id="order-form-modal-select-2">
                    <option value="">추가상품(선택)</option>
                    <option value="1">선택사항 1</option>
                    <option value="2">선택사항 2</option>
                    <option value="3">선택사항 3</option>
                    <option value="4">선택사항 4</option>
                    <option value="5">선택사항 5</option>
                  </select>
                  <i class="ic-caret" aria-hidden></i>
                </div>
              </div>

              <div class="order-checkout">
                <ul class="checkout-list">
                  <li class="checkout-item">
                    <div class="checkout-card">
                      <header class="checkout-header">
                        <h4 class="checkout-title">
                          그린 H0044DHA / 포근한 온기를 전해주는 보아르 미니멀
                          전기 히터
                        </h4>
                        <button
                          class="delete-button"
                          type="button"
                          aria-label="상품 삭제"
                        >
                          <i class="ic-close" aria-hidden></i>
                        </button>
                      </header>

                      <footer class="checkout-footer">
                        <div class="checkout-select">
                          <select id="order-form-modal-checkout-item-1">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                          </select>
                          <i class="ic-caret" aria-hidden></i>
                        </div>

                        <output
                          class="checkout-output"
                          for="order-form-modal-checkout-item-1"
                        >
                          <div class="price-16">
                            <strong class="amount">32,900</strong>
                            <span class="currency">원</span>
                          </div>
                        </output>
                      </footer>
                    </div>
                  </li>
                </ul>
              </div>

              <dl class="order-summary">
                <dt>주문금액</dt>
                <dd>
                  <output
                    for="order-form-modal-select-1 order-form-modal-select-2"
                  >
                    <div class="price-20">
                      <strong class="amount">32,990</strong>
                      <span class="currency">원</span>
                    </div>
                  </output>
                </dd>
              </dl>
            </div>
          </div>
        </div>

        <div class="button-group">
          <button class="btn-secondary btn-48" type="button">장바구니</button>
          <button class="btn-primary btn-48" type="submit">구매하기</button>
        </div>
      </form>
    </aside>

    <aside class="cart-modal">
      <h1 class="cart-title">장바구니에 상품을 담았습니다.</h1>

      <div class="button-group">
        <a class="btn-48 btn-primary" href="/">장바구니 보러가기</a>
        <button class="btn-48 btn-secondary" type="button">확인</button>
      </div>
    </aside>

    <!-- 북마크에 추가했을 때 -->
    <aside class="bookmark-toast">
      <h1 class="bookmark-title">스크랩했습니다</h1>
      <button class="close-button" type="button" aria-label="닫기">
        <i class="ic-close" aria-hidden></i>
      </button>

      <div class="button-group">
        <a class="btn-32 btn-outlined" href="/">스크랩북 보기</a>
        <button class="btn-32 btn-primary" type="button">폴더에 담기</button>
      </div>
    </aside>

    <!-- 북마크에서 삭제했을 때 -->
    <!-- <aside class="bookmark-toast">
      <h1 class="bookmark-title">스크랩북에서 삭제했습니다</h1>
      <button class="close-button" type="button" aria-label="닫기">
        <i class="ic-close" aria-hidden></i>
      </button>
    </aside> -->

    <div class="overlay" aria-hidden></div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <!-- lodash : Throttle로 퍼포먼스 개선 -->
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
      integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <script src="${contextPath }/resources/js/carousels.js"></script>
    <script src="${contextPath }/resources/js/sidebar.js"></script>
    <script src="${contextPath }/resources/js/sidebar-drawer.js"></script>
    <script src="${contextPath }/resources/js/section-header.js"></script>
    <script src="${contextPath }/resources/js/search-modal.js"></script>
    <script src="${contextPath }/resources/js/order-cta.js"></script>
    <script src="${contextPath }/resources/js/my-menu.js"></script>
    <script src="${contextPath }/resources/js/gnb-search.js"></script>
    <script src="${contextPath }/resources/js/review.js"></script>
    <script src="${contextPath }/resources/js/product-tab.js"></script>
  </body>
  <script>

</script>
</html>

  

<%@include file="../common/footer.jsp"%>

