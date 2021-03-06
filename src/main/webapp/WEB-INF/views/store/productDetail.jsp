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
              <a href="#">??????</a>
             <i class="ic-chevron fa-solid fa-angle-right"></i>
              <a href="#">????????????????????</a>
              <i class="ic-chevron fa-solid fa-angle-right"></i>
              <a href="#">????????????</a>
              <i class="ic-chevron fa-solid fa-angle-right"></i>
              <a href="#">?????????????????????</a>
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

<!-- -- ?????? ?????? ????????? -- -->
              <div class="product-carousel-thumbnail">
                <ol class="thumbnail-list" class="slider-item" role="tablist">
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-1"
                    role="tab"
                  >
                    <button type="button">
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1??? ?????????" />
                      
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-2"
                    role="tab"
                  >
                    <button type="button">
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1??? ?????????" />
                      
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-3"
                    role="tab"
                  >
                    <button type="button">
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1??? ?????????" />
                      
                    </button>
                  </li>
                  <li
                    class="thumbnail-item"
                    id="product-carousel-tab-4"
                    role="tab"
                  >
                    <button type="button">
                      <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" alt="1??? ?????????" />
                      
                    </button>
                  </li>
                </ol>
              </div>
            </div>
          </div>
          
          <!-- ?????? ?????? -->
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
                    <span class="sm-hidden">??? ??????</span>
                  </p>
                </div>
              </header>

              <!-- NOTE: ???????????? ?????? -->
              <div class="product-info-price sm-only">
                <div class="info-original-price">
                  <div class="discount-rate">
                    <span class="rate">${productDTO.discountRate}</span>
                    <span class="percent">%</span>
                  </div>
                  <div class="price-off">
                    <strong class="amount">${productDTO.goodsPrice}</strong>
                    <span class="currency sm-hidden">???</span>
                  </div>
                </div>

                <div class="info-sale-price">
                  <div class="price-20">
                    <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />???</span>
                      </div>
                  <strong class="tag-red"> ?????? </strong>
                </div>
                <p class="info-point">
                  <strong>987p</strong>
                  ?????????????????????. (VIP 3??? ?????? ?????????)
                </p>
              </div>

              <!-- NOTE: ????????? ?????? ?????? -->
              <div class="product-info-price sm-hidden">
                <div class="info-price-wrapper">
                  <div class="discount-rate">
                    <span class="rate">${productDTO.discountRate}</span>
                    <span class="percent">%</span>
                  </div>

                  <div class="info-price">
                    <div class="price-off">
                      <strong class="amount">${productDTO.goodsPrice}</strong>
                      <span class="currency">???</span>
                    </div>

                    <div class="info-sale-price">
                      <div class="price-32">
                        <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />???</span>
                      </div>
                      <strong class="tag-red"> ?????? </strong>
                    </div>
                  </div>
                </div>

                <p class="info-point">
                  <strong>987p</strong>
                  ?????????????????????. (VIP 3??? ?????? ?????????)
                </p>
              </div>

              <div class="product-info-delivery">
                <span>????????????</span>
                <strong class="tag-gray"> ???????????? </strong>
              </div>
            </section>

            <form class="order-form lg-only" action="/" method="POST">
              <div class="order-inputs">
                <div class="select-group is-active">
                  <select class="form-select" id="select-1" required>
                    <option value="">??????</option>
                    <option value="1">???????????? 1</option>
                    <option value="2">???????????? 2</option>
                    <option value="3">???????????? 3</option>
                    <option value="4">???????????? 4</option>
                    <option value="5">???????????? 5</option>
                  </select>
                 	<i class="ic-caret fa-solid fa-caret-down"></i>
                </div>

                <div class="select-group">
                  <select class="form-select" id="select-2">
                    <option value="">????????????(??????)</option>
                    <option value="1">???????????? 1</option>
                    <option value="2">???????????? 2</option>
                    <option value="3">???????????? 3</option>
                    <option value="4">???????????? 4</option>
                    <option value="5">???????????? 5</option>
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
                          aria-label="?????? ??????"
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
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />???</span>
                          </div>
                        </output>
                      </footer>
                    </div>
                  </li>
                </ul>
              </div>

              <dl class="order-summary">
                <dt>????????????</dt>
                <dd>
                  <output for="select-1 select-2">
                    <div class="price-20">
                      <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />???</span>
                    </div>
                  </output>
                </dd>
              </dl>

              <div class="button-group">
                <button class="btn-outlined btn-55 go-cart" type="button" data-toggle="modal" data-target="#myModal">
                  ????????????
                </button>
                <a class="btn-primary btn-55" id="order_button" href="${contextPath }/orderGoods?goodsId=${productDTO.goodsId}">
                  ????????????
                </a>
              </div>
            </form>
          </div>
        </div>

<!-- ???????????? ???????????? -->

        <div class="row sm-only">
          <div class="col-sm-4">
            <div class="product-section-divider" aria-hidden></div>

            <section class="product-section product-user-gallery">
              <header class="product-section-header">
                <h1 class="title">???????????? ???????????????</h1>
                <strong class="badge" aria-label="461???">461</strong>
                <a class="icon-button is-right" href="#" aria-label="?????????">
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
                              ??????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                               <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">???????????????</a>

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
                              ??????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">?????????</a>

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
                              ????????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">???????????????</a>

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
                              ?????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">????????????</a>

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
                              Jessie?????? ???????????????
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
                              hello?????? ???????????????
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
                              ??????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">?????????</a>

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
                              ?????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">????????????</a>

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
                              ????????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">???????????????</a>

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
                              Universe?????? ???????????????
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
                            alt="1??? ???????????????"
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
                            alt="2??? ???????????????"
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
                            alt="3??? ???????????????"
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
                            alt="4??? ???????????????"
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
                            alt="5??? ???????????????"
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
                            alt="6??? ???????????????"
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
                            alt="7??? ???????????????"
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
                            alt="8??? ???????????????"
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
                            alt="9??? ???????????????"
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
                            alt="10??? ???????????????"
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
                  <button type="button">????????????</button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-review"
                >
                  <button type="button">
                    ??????
                    <strong aria-lable="566??? ??????">566</strong>
                  </button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-inquiry"
                >
                  <button type="button">
                    ??????
                    <strong aria-lable="96??? ??????">96</strong>
                  </button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-shipment"
                >
                  <button type="button">??????/??????</button>
                </li>
                <li
                  class="product-tab-item"
                  role="tab"
                  aria-labelledby="product-recomendation"
                >
                  <button type="button">??????</button>
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
                <h1 class="title">???????????? ???????????????</h1>
                <strong class="badge" aria-label="461???">461</strong>
                <a class="icon-button is-right" href="#" aria-label="?????????">
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
                              ??????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">???????????????</a>

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
                              ??????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">?????????</a>

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
                              ????????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">???????????????</a>

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
                              ?????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">????????????</a>

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
                              Jessie?????? ???????????????
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
                              hello?????? ???????????????
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
                              ??????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">?????????</a>

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
                              ?????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">????????????</a>

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
                              ????????????????????? ???????????????
                            </figcaption>
                          </figure>

                          <div class="gallery-card-detail">
                            <a class="avatar-32" href="#">
                              <img
                                src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                                alt="user-image"
                              />
                            </a>
                            <a class="username" href="#">???????????????</a>

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
                              Universe?????? ???????????????
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
                        aria-label="?????? ?????????"
                      >
                        <i class="fa-solid fa-chevron-left"></i>
                      </button>
                      <button
                        class="control-button is-next"
                        type="button"
                        aria-label="?????? ?????????"
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
                            alt="1??? ???????????????"
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
                            alt="2??? ???????????????"
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
                            alt="3??? ???????????????"
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
                            alt="4??? ???????????????"
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
                            alt="5??? ???????????????"
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
                            alt="6??? ???????????????"
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
                            alt="7??? ???????????????"
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
                            alt="8??? ???????????????"
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
                            alt="9??? ???????????????"
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
                            alt="10??? ???????????????"
                          />
                        </button>
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
            </section>
<!-- ???????????? ??????  -->
            <section
              class="product-section product-spec is-open"
              id="product-spec"
              role="tabpanel"
            >
              <header class="product-section-header sm-hidden">
                <h1 class="title">?????? ??????</h1>
              </header>

              <div class="product-section-content">
                <div class="button-wrapper sm-only">
                  <button type="button" class="btn-primary btn-55">
                    ?????????
                  </button>
                </div>

                <c:forEach var="item"  items="${imageList}">
                <figure>
                  <img src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${item}" alt="" />
                  <figcaption class="visually-hidden">
                    	????????? ?????? ?????? ?????? ????????? 01
                  </figcaption>
                </figure>
      		</c:forEach>

                <table class="product-table">
                  <tbody>
                    <tr>
                      <th scope="row">?????? ??? ?????????</th>
                      <td>VO-HT015</td>
                    </tr>
                    <tr>
                      <th scope="row">KC ?????? ??? ??????</th>
                      <td>SU071586-19003</td>
                    </tr>
                    <tr>
                      <th scope="row">????????????, ????????????</th>
                      <td>AC220V, 60Hz, 400W</td>
                    </tr>
                    <tr>
                      <th scope="row">???????????????????????????</th>
                      <td>??????????????????</td>
                    </tr>
                    <tr>
                      <th scope="row">??????????????? ????????????</th>
                      <td>2019.11</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        ?????????, ???????????? ?????? ???????????? ?????? ??????
                      </th>
                      <td>?????????????????????</td>
                    </tr>
                    <tr>
                      <th scope="row">?????????</th>
                      <td>??????</td>
                    </tr>
                    <tr>
                      <th scope="row">??????</th>
                      <td>338*122*300 mm</td>
                    </tr>
                    <tr>
                      <th scope="row">???????????????</th>
                      <td>?????????</td>
                    </tr>
                    <tr>
                      <th scope="row">??????????????????</th>
                      <td>??????????????????</td>
                    </tr>
                    <tr>
                      <th scope="row">??????????????????</th>
                      <td>?????????????????? 1??? ?????? ?????? A/S??????</td>
                    </tr>
                    <tr>
                      <th scope="row">A/S ???????????? ????????????</th>
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
                <h1 class="title">??????</h1>
                <strong class="badge" aria-label="566???">566</strong>
                <a class="text-button" onclick="review_modal_open();">????????????</a>
              </header>
  
  <!-- ----------------------------review Modal---------------------------------------------------- -->


<!-- Modal -->

  <div class="modal fade" id="reviewModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
        	<div class="modal_title"><h4 class="modal-title">?????? ??????</h4></div>
          	<div class="modal_point_warp">
          		<p class="modal_point_text">???????????? 250P, ???????????? 0P</p>
          	</div>
			<div class="modal_goods_image_title_wrap">
				<div class="modal_goods_image">
					<img class="modal_goods_img" alt="???????????????" src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}">
				</div>
				<div class="modal_goods_title">
					<p class="modal_goods_brand">${productDTO.goodsBrand}</p>
					<p class="modal_goods_name">${productDTO.goodsName}</p>
				</div>
			</div>
			<div class="modal_image_upload_all_wrap">
				<div class="modal_image_upload_title">
					<p class="modal_image_upload_text">????????????(??????)</p>
					<div class="modal_image_upload_point">
						<p>????????????<span>250P</span></p>
					</div>
				</div>
				<div class="modal_image_upload_input">
					<p>????????? ??????????????????. (??????1???)</p>
					<input class="modal_image_upload_input" type="file" name="main_image" id="reviewImage" onchange="loadFile(event)">
					<img id="output">
				</div>
			</div>
			<div class="modal_review_content">
				<textarea rows="7" name="content" id="content" ></textarea>
			</div>
			
			<div class="modal_submit_button">
				<button type="button" class="btn btn-default" data-dismiss="modal" onclick="review_submit_click();">??????</button>
			</div>

        </div> <!-- modal-body -->
        <div class="modal-footer">
          <ul class="modal_comment">
          	<li class="modal_comment">????????? ?????? ????????? ???????????? ?????? ????????? ?????? ??? ????????????.</li>
          	<li class="modal_comment">????????? ?????? ?????? ???????????? ?????? ??? ???????????????. (????????? ?????? 2~3??? ??????)</li>
          	<li class="modal_comment">???????????? ?????? ????????? ????????? ???????????? ???????????????.</li>
          	<li class="modal_comment">?????? ????????? ??????, ??????, ???????????? ??????, ???????????? ?????? ????????? ????????? ???????????? ????????? ???????????? ????????? ?????? ???????????? ????????????.</li>
          	<li class="modal_comment">????????? ????????? ???????????? ??????, ?????? ?????? ?????? ?????? ???????????? ????????? ?????? ?????? ?????? ?????? ??? ????????? ????????? ??? ????????????.</li>
          </ul>
        </div>
      </div> <!-- modal-content -->
      
    </div> <!-- modal-dialog -->
  </div>



   <!-- ---------------------------review Modal end---------------------------------------------------- -->

  
  

              <div class="product-section-content">
                <div class="review-scoreboard">
                  <div class="score-summary">
                    <strong class="average-score" aria-label="?????? 4.8"
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
                        <dt>5???</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div
                              class="active-bar"
                              style="width: 82.5088339223%"
                            ></div>
                          </div>
                          <strong class="graph-count" aria-label="467???"
                            >467</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>4???</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div
                              class="active-bar"
                              style="width: 15.371024735%"
                            ></div>
                          </div>
                          <strong class="graph-count" aria-label="87???"
                            >87</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>3???</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div
                              class="active-bar"
                              style="width: 2.296819788%"
                            ></div>
                          </div>
                          <strong class="graph-count" aria-label="13???"
                            >13</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>2???</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div class="active-bar"></div>
                          </div>
                          <strong class="graph-count" aria-label="0???"
                            >0</strong
                          >
                        </dd>
                      </div>

                      <div class="score-stats-item">
                        <dt>1???</dt>
                        <dd>
                          <div class="bar-graph" aria-hidden>
                            <div class="active-bar"></div>
                          </div>
                          <strong class="graph-count" aria-label="0???"
                            >0</strong
                          >
                        </dd>
                      </div>
                    </dl>
                  </div>
                </div>

                <ol class="review-list">
                  <!-- ???????????? ????????? -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">????????? ?????? ????????? ??????</h3>

                        <a class="avatar-24" href="#">
                          <img
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>?????????</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0??? / 5.0???"
                            >
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
                              <i class="ic-star is-active"></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>???????????? ??????</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>
                          ??? ????????? ????????????????????? ???????????? ?????? ???????????????
                          ??????????????? ????????????. ??? ????????? ?????? ?????? ?????? ??????
                          ?????? ?????? ????????? ?????? ?????????. ???????????? ????????????
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          ????????? ??????
                        </button>

                        <p>
                          <strong> <span>7</span>???</strong>?????? ?????????
                          ???????????????.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- ?????? ???????????? ?????? ?????? -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">
                          ???????????? ?????? ????????? ??????
                        </h3>

                        <a
                          class="avatar-24"
                          href="#"
                          aria-label="???????????? ?????? ???????????? ??????"
                        >
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>????????????</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0??? / 5.0???"
                            >
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star "></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.16</time>
                              <span>???????????? ??????</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>
                          ??????????????? ?????? ???????????? ?????? ?????? ????????? ?????????
                          ???????????????! ???????????? ???????????? ????????? ???????????? ??????
                          ?????????????????? ?????? ??????
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          ????????? ??????
                        </button>

                        <p>
                          <strong> <span>7</span>???</strong>?????? ?????????
                          ???????????????.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- ????????? ???????????? ????????? ?????? -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">
                          ????????????????????????????????? ?????? ????????? ??????
                        </h3>

                        <a class="avatar-24" href="#">
                          <img
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>?????????????????????????????????</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0??? / 5.0???"
                            >
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>???????????? ??????</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <div class="review-image">
                          <img
                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/165106895965973469.jpeg?gif=1&w=360&webp=1"
                            alt="????????????????????????????????? ?????? ?????? ??????"
                          />
                        </div>
                        <p>
                          ???????????? ???????????? ?????? ????????? ??????????????? ????????????
                          ????????????, ??? ?????? ??? ??????????????? ????????? ??? ?????? ?????????
                          :) ????????????!
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          ????????? ??????
                        </button>

                        <p>
                          <strong> <span>7</span>???</strong>?????? ?????????
                          ???????????????.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- ?????? ????????? ????????? ????????? ?????? ?????? -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">?????? ?????? ????????? ??????</h3>

                        <a class="avatar-24" href="#">
                         <img
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>??????</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0??? / 5.0???"
                            >
                               <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star"></i>
                              <i class="fa-solid fa-star ic-star"></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>???????????? ??????</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>
                          ????????? ????????? ????????? ????????? ????????? ?????? ?????? ?????????
                          ??????????????????! ?????????????????? 10??? ????????? ???????????????
                          ???????????? ??????????????????~ :) ?????? ??? ????????? ????????? ???
                          ??????????????? ???????????? ?????????, ????????? ?????? ???????????? ??????
                          ????????? ??????????????? ?????? ???????????????. ??????????????? ?????????
                          ??? ????????? ????????????! ??????!!! ?????? ???????????? ?????????
                          ????????? ??????????????????~ ??????????????????!!! ??? ?????? ?????????
                          ?????? ?????? ?????? ??? ????????? ????????????
                        </p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          <!-- <i class="ic-check" aria-hidden></i> -->
                          ????????? ??????
                        </button>

                        <p>
                          <strong> <span>1</span>???</strong>?????? ?????????
                          ???????????????.
                        </p>
                      </footer>
                    </article>
                  </li>

                  <!-- ?????? ???????????? ????????? ????????? ?????? ?????? -->
                  <li class="review-item">
                    <article class="review-card">
                      <header class="review-card-header">
                        <h3 class="visually-hidden">
                          ??????????????? ?????? ????????? ??????
                        </h3>

                        <a class="avatar-24" href="#">
                          <img
                            src="https://mblogthumb-phinf.pstatic.net/20150427_261/ninevincent_1430122791768m7oO1_JPEG/kakao_1.jpg?type=w2"
                            alt="user-image"
                          />
                        </a>

                        <div class="info">
                          <a class="username" href="#">
                            <strong>???????????????</strong>
                          </a>

                          <div class="detail">
                            <div
                              class="star-rating-13"
                              aria-label="5.0??? / 5.0???"
                            >
                             <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                              <i class="fa-solid fa-star ic-star is-active"></i>
                            </div>

                            <div class="misc">
                              <time datetime="2021-01-21"> 2021.01.21</time>
                              <span>???????????? ??????</span>
                            </div>
                          </div>
                        </div>
                      </header>

                      <div class="review-card-body">
                        <p>?????? ?????? ???????????????.</p>
                      </div>

                      <footer class="review-card-footer">
                        <button class="btn-outlined btn-32" type="button">
                          ????????? ??????
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
            

            <!-- ????????? ?????? ?????? -->
            <!-- <section
              class="product-section product-review"
              id="product-review"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">??????</h1>
                <strong class="badge" aria-label="0???">0</strong>
                <a class="text-button" href="#">????????????</a>
              </header>

              <div class="product-section-content">
                <p class="review-empty">
                  ??? ????????? ???????????????! <br />
                  ?????? <strong>500P</strong>??? ????????????.
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
                <h1 class="title">??????</h1>
                <strong class="badge" aria-label="96???">96</strong>
                <a class="text-button" href="#">????????????</a>
                <button
                  class="icon-button sm-only"
                  type="button"
                  aria-label="?????????"
                >
                  <i class="ic-chevron" aria-hidden></i>
                </button>
              </header>

              <div class="product-section-content">
                <ol class="inquiry-list">
                  <!-- ????????????, ????????? -->
              
            <!-- ????????? ?????? ?????? -->
            <section
              class="product-section product-inquiry is-open"
              id="product-inquiry"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">??????</h1>
                <strong class="badge" aria-label="0???">0</strong>
                <a class="text-button" href="#">????????????</a>
              </header>

              <div class="product-section-content">
                <p class="inquiry-empty">?????? ????????? ????????????.</p>
              </div>
            </section>
            <div class="product-section-divider sm-only" aria-hidden></div>

            <div class="product-shipment" id="product-shipment" role="tabpanel">
              <header class="product-section-header sm-only">
                <h1 class="title">??????/??????/??????</h1>
                <button class="icon-button" type="button" aria-label="?????????">
                  <i class="ic-chevron" aria-hidden></i>
                </button>
              </header>

              <section class="product-section">
                <header class="product-section-header">
                  <h1 class="title">??????</h1>
                </header>

                <div class="product-section-content">
                  <table class="product-table">
                    <tbody>
                      <tr>
                        <th scope="row">??????</th>
                        <td>????????????</td>
                      </tr>
                      <tr>
                        <th scope="row">?????????</th>
                        <td>?????? ??????</td>
                      </tr>
                      <tr>
                        <th scope="row">???????????? ??????</th>
                        <td>???????????? ????????? ????????????</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </section>
              <div class="product-section-divider sm-only" aria-hidden></div>

              <section class="product-section">
                <header class="product-section-header">
                  <h1 class="title">????????????</h1>
                </header>

                <div class="product-section-content">
                  <table class="product-table">
                    <tbody>
                      <tr>
                        <th scope="row">???????????????</th>
                        <td>
                          2,500??? (?????? ???????????? ????????? ?????? 5,000??? ??????)
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">???????????????</th>
                        <td>5,000???</td>
                      </tr>
                      <tr>
                        <th scope="row">????????? ???</th>
                        <td>(00000) ?????? ????????? ?????????</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </section>
              <div class="product-section-divider sm-only" aria-hidden></div>
            </div>
<!------------------ ????????? ??????  -------------------->

            <section
              class="product-section product-recommendation"
              id="product-recomendation"
              role="tabpanel"
            >
              <header class="product-section-header">
                <h1 class="title">????????? ??????</h1>
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
                          <span class="percent">${item.discountRate}%</span> <!-- ?????? ??????  -->
                          <strong class="price"><fmt:formatNumber value="${item.goodsPrice}" pattern="#,###" /></strong>
                        </div>

                        <dl class="product-card-detail">
                          <div class="rating">
                            <dt>
                              <i class="ic-star"></i>
                              <span class="visually-hidden">??????</span>
                            </dt>
                            <dd>4.6</dd>
                          </div>
                          <div class="review">
                            <dt>??????</dt>
                            <dd>3,605</dd>
                          </div>
                        </dl>

                        <strong class="tag-gray"> ???????????? </strong>
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
                    <option value="">??????</option>
                    <option value="1">???????????? 1</option>
                    <option value="2">???????????? 2</option>
                    <option value="3">???????????? 3</option>
                    <option value="4">???????????? 4</option>
                    <option value="5">???????????? 5</option>
                  </select>
                  <i class="ic-caret fa-solid fa-caret-down"></i>
                </div>

                <div class="select-group">
                  <select class="form-select" id="floating-order-form-select-2">
                    <option value="">????????????(??????)</option>
                    <option value="1">???????????? 1</option>
                    <option value="2">???????????? 2</option>
                    <option value="3">???????????? 3</option>
                    <option value="4">???????????? 4</option>
                    <option value="5">???????????? 5</option>
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
                          aria-label="?????? ??????"
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
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />???</span>
                          </div>
                        </output>
                      </footer>
                    </div>
                  </li>
                </ul>
              </div>

              <dl class="order-summary">
                <dt>????????????</dt>
                <dd>
                  <output
                    for="floating-order-form-select-1 floating-order-form-select-2"
                  >
                    <div class="price-20">
                      <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                        <strong class="amount"></strong>
                        <span class="currency"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />???</span>
                    </div>
                  </output>
                </dd>
              </dl>
              <div class="button-group">
                <!-- ???????????? ???????????? ??? -->
                <button
                  class="bookmark-button btn-55"
                  type="button"
                  aria-label="???????????? ??????"
                >
                <i class="ic-bookmark fa-regular fa-bookmark"></i>
               
                  
                </button>

                <!-- ???????????? ??????????????? ??? -->
                <!-- <button
                  class="bookmark-button btn-55 is-active"
                  type="button"
                  aria-label="????????? ??????"
                >
                  <i class="ic-bookmark-filled" aria-hidden></i>
                </button> -->

                <button class="btn-outlined btn-55 go-cart" type="button" data-toggle="modal" data-target="#myModal">
                  ????????????
                </button>
                <a class="btn-primary btn-55" id="order_submit" href="${contextPath }/orderGoods?goodsId=${productDTO.goodsId}">
                  ????????????
                </a>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="order-cta lg-hidden">
        <!-- NOTE: ???????????? ?????? ????????? ??? -->
        <button class="btn-ghost btn-48" type="button">
           <i class="ic-bookmark fa-thin fa-bookmark"></i>
          <span aria-label="????????? 18,302???"> 18,302 </span>
        </button>

        <!-- NOTE: ???????????? ?????? ??? -->
        <!-- <button class="btn-ghost btn-48 is-active" type="button">
          <i class="ic-bookmark-filled" aria-hidden></i>
          <span aria-label="????????? 18,303???"> 18,303 </span>
        </button> -->

        <button class="btn-primary btn-48" type="button">????????????</button>
      </div>
    </main>
              
</form>

      <div class="modal-overlay" id="myModal" style="display:none; background-color: #fff ;">
    <div class="css-ks7ymz">
        <h2 class="css-ehxlh5">??????????????? ???????????????.</h2>
    </div>
    <div class="css-o1dwno">
        <button class="css-1q4ibmb close-area" type="button">
          ?????? ????????????
        </button>
        <button class="css-tq0z8c" type="submit" onclick="location.href='${contextPath }/cart'">
          ???????????? ??????
        </button>
      </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	console.log($(window).scrollTop());
	
	 $(window).scroll(function() { ???? ?? ?? ?? ?? ?? 
		 let position =??$(window).scrollTop(); // ?????? ??????????????? ???????????? ???????????????.??
		 if (position >= 1000){
			 $('#side_order_form').css("display","block");
			 }else{
				 $('#side_order_form').css("display","none");
				 }?? ?? 
		 }); ?? ?? ?? ??
	
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
					alert("?????? ??????????????? ????????? ???????????????");
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
//???????????? ?????? ???????????? ????????? ????????? ???????????? ????????? ??????, ????????? ???????????? ?????? div ?????????
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

    // ?????? div ?????? ??????????????? ?????????
    var bg = $('<div>')
        .css({
            position: 'fixed',
            zIndex: zIndex,
            left: '0px',
            top: '0px',
            width: '100%',
            height: '100%',
            overflow: 'auto',
            // ????????? ????????? ????????? ????????? ???
            backgroundColor: 'rgba(0,0,0,0.4)'
        })
        .appendTo('body');

    modal
        .css({
            position: 'fixed',
            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

            // ????????? ????????? ?????? ?????? ?????? ?????????
            zIndex: zIndex + 1,

            // div center ??????
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            msTransform: 'translate(-50%, -50%)',
            webkitTransform: 'translate(-50%, -50%)'
           
        })
        .show()
        // ?????? ?????? ??????, ????????? ???????????? ?????? div ?????????
        .find('.close-area')
        .on('click', function() {
            bg.remove();
            modal.hide();
        });
}

//????????? ??????
function review_modal_open(){
	$('#reviewModal').css("display","block");
	
	 var zIndex = 9999;
	    var modal = $('#reviewModal');

	    // ?????? div ?????? ??????????????? ?????????
	    var bg = $('<div>')
	        .css({
	            position: 'fixed',
	            zIndex: zIndex,
	            left: '0px',
	            top: '0px',
	            width: '100%',
	            height: '100%',
	            overflow: 'auto',
	            // ????????? ????????? ????????? ????????? ???
	            backgroundColor: 'rgba(0,0,0,0.4)'
	        })
	        .appendTo('body');

	    modal
	        .css({
	            position: 'fixed',
	            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

	            // ????????? ????????? ?????? ?????? ?????? ?????????
	            zIndex: zIndex + 1,

	            // div center ??????
	            top: '50%',
	            left: '50%',
	            transform: 'translate(-50%, -50%)',
	            msTransform: 'translate(-50%, -50%)',
	            webkitTransform: 'translate(-50%, -50%)'
	           
	        })
	        .show()
	        // ?????? ?????? ??????, ????????? ???????????? ?????? div ?????????
	        .find('.btn-default')
	        .on('click', function() {
	            bg.remove();
	            modal.hide();
	        });
}


//?????? ?????? ????????? ???????????? 
var loadFile = function(event) {
    var reader = new FileReader();
    reader.onload = function(){
      var output = document.getElementById('output');
      output.src = reader.result;
      output.style.display= 'block';
    };
    reader.readAsDataURL(event.target.files[0]);
  };

  //???????????? ????????????
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

  //?????? ?????? DB??? ????????????
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
		url : "${contextPath }/productReview", //???????????? ??????
		contentType: "application/json",
		data : JSON.stringify(param),
		success : function(data) {
			if (data.trim() == 'success') {
				alert("?????? ????????????");
				location.href="${contextPath }/productDetail/"+goodsId;
			}//end if
			if(data.trim() == 'login'){
				alert("????????? ?????? ??????????????????.");
				location.href="${contextPath }/member/loginForm";
			}
		}// end success

	}); //end ajax 
  }

 
</script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <!-- lodash : Throttle??? ???????????? ?????? -->
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


