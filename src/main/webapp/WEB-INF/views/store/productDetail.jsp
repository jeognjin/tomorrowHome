<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@include file="../common/header.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
    <link rel="stylesheet" href="${contextPath }/resources/css/productDetail.css">

<style>
.badge{
	background-color: white;
	padding: 0;
	margin: 0;
}
.modal_goods_img{
	width: 100px;
	height: 100px;
}
.modal_point_warp{
	align-items: center;
    height: 45px;
    background-color: #525b61;
    padding: 0 16px;
    color: #fff;
    font-weight: 700;
    display: table;
    width: 100%;
}
.modal_point_text{
	display: table-cell;
    vertical-align: middle;
}
.modal_goods_image_title_wrap{
	align-items: center;
    margin: 20px 0 30px;
    color: #292929;
    display: flex;
}
.modal_review_content textarea{
	width: 100%;
	resize: none;
	    border-radius: 4px;
    border: 1px solid #dbdbdb;
    background-color: #fff;
}
.modal_submit_button button{
	width: 100%;
    height: 45px;
    padding: 0;
    line-height: 43px;
    margin-bottom: 32px;
    box-sizing: border-box;
    border: 1px solid transparent;
    background: none;
    font-weight: 700;
    text-decoration: none;
    text-align: center;
    border-radius: 4px;
    cursor: pointer;
    background-color: #35c5f0;
    border-color: #35c5f0;
    color: #fff;
}
#output{
	width: 200px;
	height: 200px;
	display: none;
}
.modal_comment{
	list-style-type: disc;
    line-height: 1.1;
    color: #424242;
    font-size: 10px;
    display: block;
    text-align: left;
}
.modal-title{
	font-weight: 700;
	text-align: center;
	padding: 20px 0;
}
.modal_goods_title{
	padding: 10px;
}
.modal_goods_brand{
	font-size: 11px;
    color: #757575;
    margin-bottom: 6px;
}
.modal_goods_name{
	margin-bottom: 6px;
    font-size: 15px;
    line-height: 1.2;
}
.modal_image_upload_title{
	display: flex;
}
.modal_image_upload_text{
	align-items: center;
    font-size: 15px;
    font-weight: 700;
    margin-bottom: 15px;
}
.modal_image_upload_point{
	margin-left: 8px;
    height: 28px;
    font-size: 12px;
    color: #fff;
    background-color: #525b61;
    border-radius: 10px;
    padding: 5px 10px;
}
#reviewModal{
	position: absolute;
	background-color: #fff;
	border: 1px solid #8c8d96;
	border-radius: 5px;
	padding: 20px;
	display: none;
}
#order_button{
	width: 50%;
}
#side_order_form{
	position: fixed;
    top: 50px;
    right: 70px;
    background-color: #fff;
    display: none;
}
#order_submit{
	width: 50%;
}
.product-recommendation{
	overflow: hidden;
	height: 400px;
}
</style>
  <body>
    
    <main class="product-show">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="breadcrumb">
              <a href="#">가구</a>
             <i class="ic-chevron fa-solid fa-angle-right"></i>
              <a href="#">매트리스·토퍼</a>
              <i class="ic-chevron fa-solid fa-angle-right"></i>
              <a href="#">매트리스</a>
              <i class="ic-chevron fa-solid fa-angle-right"></i>
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
                       
                      </figcaption>
                    </figure>
                  </li>
                  <li
                    class="slider-item"
                    role="tabpanel"
                    aria-labelledby="product-carousel-tab-2"
                  >
                    <figure>
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="" />
                      <figcaption class="visually-hidden">
                       
                      </figcaption>
                    </figure>
                  </li>
                  <li
                    class="slider-item"
                    role="tabpanel"
                    aria-labelledby="product-carousel-tab-3"
                  >
                    <figure>
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="" />
                      <figcaption class="visually-hidden">
                       
                      </figcaption>
                    </figure>
                  </li>
                  <li
                    class="slider-item"
                    role="tabpanel"
                    aria-labelledby="product-carousel-tab-4"
                  >
                    <figure>
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="" />
                      <figcaption class="visually-hidden">
                       
                      </figcaption>
                    </figure>
                  </li>
                </ol>
              </div>

<!-- -- 옆에 작은 이미지 -- -->
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
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1번 이미지" />
                      
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-3"
                    role="tab"
                  >
                    <button type="button">
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1번 이미지" />
                      
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-4"
                    role="tab"
                  >
                    <button type="button">
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1번 이미지" />
                      
                    </button>
                  </li>
                </ol>
              </div>
            </div>
          </div>
          
          <!-- 상품 정보 -->
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

              <!-- NOTE: 모바일용 가격 -->
              <div class="product-info-price sm-only">
                <div class="info-original-price">
                  <div class="discount-rate">
                    <span class="rate">${productDTO.discountRate}</span>
                    <span class="percent">%</span>
                  </div>
                  <div class="price-off">
                    <strong class="amount">${productDTO.goodsPrice}</strong>
                    <span class="currency sm-hidden">원</span>
                  </div>
                </div>

                <div class="info-sale-price">
                  <div class="price-20">
                    <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원</span>
                      </div>
                  <strong class="tag-red"> 특가 </strong>
                </div>
                <p class="info-point">
                  <strong>987p</strong>
                  적립해드립니다. (VIP 3배 혜택 적용됨)
                </p>
              </div>

              <!-- NOTE: 태블릿 이후 가격 -->
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
                           ${productDTO.goodsName}
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
                          <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원</span>
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
                      <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원</span>
                    </div>
                  </output>
                </dd>
              </dl>

              <div class="button-group">
                <button class="btn-outlined btn-55 go-cart" type="button" data-toggle="modal" data-target="#myModal">
                  장바구니
                </button>
                <a class="btn-primary btn-55" id="order_button" href="${contextPath }/orderGoods?goodsId=${productDTO.goodsId}">
                  바로구매
                </a>
              </div>
            </form>
          </div>
        </div>

<!-- 유저들의 스타일링 -->

        <div class="row sm-only">
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

            <div class="product-section-divider is-big" aria-hidden></div>
          </div>
        </div>
      </div>

      <div class="product-tab">
        <div class="container">
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

      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-lg-8">
            <section class="product-section product-user-gallery sm-hidden">
              <header class="product-section-header">
                <h1 class="title">유저들의 스타일링샷</h1>
                <strong class="badge" aria-label="461개">461</strong>
                <a class="icon-button is-right" href="#" aria-label="더보기">
                  <i class="ic-chevron" aria-hidden></i>
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
<!-- 상품정보 시작  -->
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

                <c:forEach var="item"  items="${imageList}">
                <figure>
                  <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${item}" alt="" />
                  <figcaption class="visually-hidden">
                    	보아르 전기 히터 상세 이미지 01
                  </figcaption>
                </figure>
      		</c:forEach>

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
                <a class="text-button" onclick="review_modal_open();">리뷰쓰기</a>
              </header>
  
  <!-- ----------------------------review Modal---------------------------------------------------- -->


<!-- Modal -->

  <div class="modal fade" id="reviewModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
        	<div class="modal_title"><h4 class="modal-title">리뷰 쓰기</h4></div>
          	<div class="modal_point_warp">
          		<p class="modal_point_text">포토리뷰 250P, 일반리뷰 0P</p>
          	</div>
			<div class="modal_goods_image_title_wrap">
				<div class="modal_goods_image">
					<img class="modal_goods_img" alt="상품이미지" src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}">
				</div>
				<div class="modal_goods_title">
					<p class="modal_goods_brand">${productDTO.goodsBrand}</p>
					<p class="modal_goods_name">${productDTO.goodsName}</p>
				</div>
			</div>
			<div class="modal_image_upload_all_wrap">
				<div class="modal_image_upload_title">
					<p class="modal_image_upload_text">사진첨부(선택)</p>
					<div class="modal_image_upload_point">
						<p>포토리뷰<span>250P</span></p>
					</div>
				</div>
				<div class="modal_image_upload_input">
					<p>사진을 첨부해주세요. (최대1장)</p>
					<input class="modal_image_upload_input" type="file" name="main_image" id="reviewImage" onchange="loadFile(event)">
					<img id="output">
				</div>
			</div>
			<div class="modal_review_content">
				<textarea rows="7" name="content" id="content" ></textarea>
			</div>
			
			<div class="modal_submit_button">
				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="review_submit_click();">완료</button>
			</div>

        </div> <!-- modal-body -->
        <div class="modal-footer">
          <ul class="modal_comment">
          	<li class="modal_comment">상품을 직접 사용한 경우에만 리뷰 작성을 하실 수 있습니다.</li>
          	<li class="modal_comment">비구매 상품 리뷰 포인트는 심사 후 지급됩니다. (영업일 기준 2~3일 소요)</li>
          	<li class="modal_comment">포인트는 최초 작성한 리뷰를 기준으로 지급됩니다.</li>
          	<li class="modal_comment">사진 첨부시 캡쳐, 도용, 유사상품 촬영, 동일상품 여부 식별이 불가한 경우에는 등록이 거절되며 사유는 별도 안내되지 않습니다.</li>
          	<li class="modal_comment">상품과 무관한 내용이나 사진, 동일 문자 반복 등의 부적합한 리뷰는 사전 경고 없이 삭제 및 포인트 회수될 수 있습니다.</li>
          </ul>
        </div>
      </div> <!-- modal-content -->
      
    </div> <!-- modal-dialog -->
  </div>



   <!-- ---------------------------review Modal end---------------------------------------------------- -->

  
  

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
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
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
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
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
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
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
                    <i class="ic-chevron fa-solid fa-angle-right"></i>
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
            <div class="product-section-divider sm-only" aria-hidden></div> 

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
              
            <!-- 문의가 없는 경우 -->
            <section
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
            <div class="product-section-divider sm-only" aria-hidden></div>

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
                   <c:forEach var="item" items="${goodsCategoryList}" begin="0" end="3">
                  <li class="product-item">
                    <a href="#">
                      <div class="product-card">
                        <div class="product-card-image">
                          <img
									src="${contextPath}/productDownload?goodsId=${item.goodsId}&fileName=${item.productThumbnail}"
									alt="${item.goodsName}">
                        </div>

                        <span class="product-card-brand">${item.goodsBrand }</span>

                        <h3 class="product-card-title">
                          ${item.goodsName}
                        </h3>
										
                        <div class="product-card-price">
                          <span class="percent">${item.discountRate}%</span> <!-- 원가 가격  -->
                          <strong class="price"><fmt:formatNumber value="${item.goodsPrice}" pattern="#,###" /></strong>
                        </div>

                        <dl class="product-card-detail">
                          <div class="rating">
                            <dt>
                              <i class="ic-star"></i>
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

                 </c:forEach>
                </ul>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div>
          </div>

          <div class="col-lg-4 lg-only" id="side_order_form">
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
                  <i class="ic-caret fa-solid fa-caret-down"></i>
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
                  <i class="ic-caret fa-solid fa-caret-down"></i>
                </div>
              </div>

              <div class="order-checkout">
                <ul class="checkout-list">
                  <li class="checkout-item">
                    <div class="checkout-card">
                      <header class="checkout-header">
                        <h4 class="checkout-title">
                          ${productDTO.goodsName}
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
                          <select id="floating-order-form-checkout-item-1" name="quantity" >
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                          </select>
                          <i class="ic-caret fa-solid fa-caret-down"></i>
                        </div>

                        <output
                          class="checkout-output"
                          for="floating-order-form-checkout-item-1"
                        >
                          <div class="price-16">
                            <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원</span>
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
                      <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원</span>
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
                <i class="ic-bookmark fa-regular fa-bookmark"></i>
               
                  
                </button>

                <!-- 북마크에 추가되었을 때 -->
                <!-- <button
                  class="bookmark-button btn-55 is-active"
                  type="button"
                  aria-label="북마크 해제"
                >
                  <i class="ic-bookmark-filled" aria-hidden></i>
                </button> -->

                <button class="btn-outlined btn-55 go-cart" type="button" data-toggle="modal" data-target="#myModal">
                  장바구니
                </button>
                <a class="btn-primary btn-55" id="order_submit" href="${contextPath }/orderGoods?goodsId=${productDTO.goodsId}">
                  바로구매
                </a>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="order-cta lg-hidden">
        <!-- NOTE: 북마크를 하지 않았을 때 -->
        <button class="btn-ghost btn-48" type="button">
           <i class="ic-bookmark fa-thin fa-bookmark"></i>
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
              
</form>

      <div class="modal-overlay" id="myModal" style="display:none; background-color: #fff ;">
    <div class="css-ks7ymz">
        <h2 class="css-ehxlh5">장바구니에 담았습니다.</h2>
    </div>
    <div class="css-o1dwno">
        <button class="css-1q4ibmb close-area" type="button">
          쇼핑 계속하기
        </button>
        <button class="css-tq0z8c" type="submit" onclick="location.href='${contextPath }/cart'">
          장바구니 가기
        </button>
      </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	console.log($(window).scrollTop());
	
	 $(window).scroll(function() {              
		 let position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
		 if (position >= 1000){
			 $('#side_order_form').css("display","block");
			 }else{
				 $('#side_order_form').css("display","none");
				 }    
		 });        
	
	$('.go-cart').click(function() {
		let params = {
				"goodsId": ${productDTO.goodsId},
				"cartGoodsQty": $('#floating-order-form-checkout-item-1 option:selected, #checkout-item-1 option:selected').val()
		};
		console.log("params  >>> ", params);
		$.ajax({
			type: "POST",
			url: "${contextPath}/cart/add",
			data: JSON.stringify(params),
			contentType: "application/json",
			success: function(result){
				if(result == "success"){
					openModal();
				}else if(result == "already_registered"){
					alert("이미 장바구니에 등록된 상품입니다");
				}
			},
			error: function (err) {
				console.log("err >>> ", err);
			}
		});		
	});
});

/* function openModal(){
	$('#myModal').css("display","block");
} */
/* function closeModal(){
	$('#myModal').css("display","none");
} */
//모달창의 쇼핑 계속하기 버튼을 누르면 모달창이 꺼지게 하기, 시꺼먼 레이어와 모달 div 지우기
const closeBtn = document.querySelector(".close-area");
console.log("closeBtn >>>>>>>>>>>>>>> ", closeBtn); 
closeBtn.addEventListener("click", function() {
	closeModal();
	bg.remove();
	modal.style.display = 'none';
});

function openModal() {
    var zIndex = 9999;
    var modal = $('#myModal');

    // 모달 div 뒤에 희끄무레한 레이어
    var bg = $('<div>')
        .css({
            position: 'fixed',
            zIndex: zIndex,
            left: '0px',
            top: '0px',
            width: '100%',
            height: '100%',
            overflow: 'auto',
            // 레이어 색갈은 여기서 바꾸면 됨
            backgroundColor: 'rgba(0,0,0,0.4)'
        })
        .appendTo('body');

    modal
        .css({
            position: 'fixed',
            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

            // 시꺼먼 레이어 보다 한칸 위에 보이기
            zIndex: zIndex + 1,

            // div center 정렬
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            msTransform: 'translate(-50%, -50%)',
            webkitTransform: 'translate(-50%, -50%)'
           
        })
        .show()
        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
        .find('.close-area')
        .on('click', function() {
            bg.remove();
            modal.hide();
        });
}

//모달창 열기
function review_modal_open(){
	$('#reviewModal').css("display","block");
	
	 var zIndex = 9999;
	    var modal = $('#reviewModal');

	    // 모달 div 뒤에 희끄무레한 레이어
	    var bg = $('<div>')
	        .css({
	            position: 'fixed',
	            zIndex: zIndex,
	            left: '0px',
	            top: '0px',
	            width: '100%',
	            height: '100%',
	            overflow: 'auto',
	            // 레이어 색갈은 여기서 바꾸면 됨
	            backgroundColor: 'rgba(0,0,0,0.4)'
	        })
	        .appendTo('body');

	    modal
	        .css({
	            position: 'fixed',
	            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

	            // 시꺼먼 레이어 보다 한칸 위에 보이기
	            zIndex: zIndex + 1,

	            // div center 정렬
	            top: '50%',
	            left: '50%',
	            transform: 'translate(-50%, -50%)',
	            msTransform: 'translate(-50%, -50%)',
	            webkitTransform: 'translate(-50%, -50%)'
	           
	        })
	        .show()
	        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
	        .find('.btn-default')
	        .on('click', function() {
	            bg.remove();
	            modal.hide();
	        });
}


//리뷰 사진 업로드 미리보기 
var loadFile = function(event) {
    var reader = new FileReader();
    reader.onload = function(){
      var output = document.getElementById('output');
      output.src = reader.result;
      output.style.display= 'block';
    };
    reader.readAsDataURL(event.target.files[0]);
  };

  //리뷰사진 저장하기
  function review_submit_click(){
    var formData = new FormData(); 
    formData.append("file", document.getElementById("reviewImage").files[0]); 
    $('#reviewModal').css("display","none");
    $.ajax({
      url: "${contextPath }/productReviewImage?goodsId=${productDTO.goodsId}", 
      data: formData, 
      type: "POST",
      async: true, 
      enctype: "multipart/form-data", 
      processData: false, 
      contentType: false, 

      success : function(data) {
			if (data.trim() == 'success') {
				review_submit();
			} //end if
		}// end success
    });
	}

  //리뷰 내용 DB에 저장하기
  function review_submit(){  
	let goodsId = "${productDTO.goodsId}";
	let content = document.getElementById('content').value;
	let param = {
			goodsId : goodsId,
			content : content,
		};
	console.log("param >>> ", param);
	$.ajax({
		type : 'POST',
		url : "${contextPath }/productReview", //회원정보 수정
		contentType: "application/json",
		data : JSON.stringify(param),
		success : function(data) {
			if (data.trim() == 'success') {
				alert("리뷰 작성완료");
				location.href="${contextPath }/productDetail/"+goodsId;
			}//end if
			if(data.trim() == 'login'){
				alert("로그인 후에 작성해주세요.");
				location.href="${contextPath }/member/loginForm";
			}
		}// end success

	}); //end ajax 
  }

 
</script>


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
<%@include file="../common/footer.jsp"%>


