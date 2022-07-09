<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%@include file="../common/header.jsp"%>
<style>
.contents{
	width: 1100px;
	display: flex;
	margin:auto;
}
.store_category_all_wrap{
	display: flex;
	padding: 40px 50px 0 50px;
	max-width: 1200px;
	margin: auto;
	overflow: auto;
	
}
.store_category_left_all_warp{
	width: 20%;
	display: flex;
}
.store_category_right_all_warp{
	width: 80%;
}
.home-section__wrap{
	width: 100%;
}
.home-section{
	margin-bottom: 20px;
}
.swiper-slide{
	width: 100%;
}
.swiper{
	width: 100%;
	margin: 0;
}
ul{
	display: flex;
}
li{
	display: inline-block;
}

</style>
<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>	

 
<div class="store_category_all_wrap">
	<div class="contents">
<div class="store_category_left_all_warp">
<%@include file="../common/side.jsp"%>
</div>
<c:set var="todayList" value="${goodsMap.todayList }"/>
	<div class="store_category_right_all_warp">
	<!-- Swiper 슬라이드 -->
	<div class="swiper mySwiper" style="width: 100%">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img alt=""
					src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/category_banners/165606958239814196.jpg">
			</div>
			<div class="swiper-slide">
				<img alt=""
					src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/category_banners/165164697450415621.jpg">
			</div>
			<div class="swiper-slide">
				<img alt=""
					src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/category_banners/165664902646092872.png">
			</div>
			<div class="swiper-slide">
				<img alt=""
					src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/category_banners/165606181151968703.jpg">
			</div>
			<div class="swiper-slide">
				<img alt=""
					src="https://image.ohou.se/i/bucketplace-v2-development/uploads/store/banners/category_banners/165606904427350951.jpg">
			</div>
		</div>
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
	</div>

<!-- 공간별  -->
	<section class="container home-section" >
        <div class="home-section__wrap">        
          <img alt=""	src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/commerces/165416795230405408.png"
			style="padding-left: 8px;">         
          <ul class="popular-content__wrap">
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                   	<img alt=""	src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/commerces/165606339182601547.png">
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/commerces/165606341400063150.png">
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                    <img alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/commerces/165606342334512278.png">
                  </div>
                </article>
              </a>
            </li>
            <li class="popular-item__wrap">
              <a href="">
                <article>
                  <div>
                   <img alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/admins/commerces/165606344033476799.png">
                  </div>
                </article>
              </a>
            </li>
            </ul>
	</div>
	</section>
	
	<!-- 할인상품 이미지 슬라이드 -->

<section class="container home-section"  >
        <div class="home-section__wrap">
       <h3 class="home-section__tit">#지금은 할인 중</h3>
          <ul class="home-section__container" style="overflow-x: hidden;">
          <c:forEach var="i" begin="0" end="5">
            <li class="home-section__item">
              <article>
                <a href="${contextPath }/productDetail">
                  <div class="home-section__img-wrap">
                    <img src="${contextPath}/productDownload?goodsId=${todayList[i].goodsId}&fileName=${todayList[i].productThumbnail}" alt="${todayList[i].goodsName}">
                  </div>
                  <div class="home-section__item__details">
                    <h4 class="home-section__item__tit">${todayList[i].goodsBrand }</h4>
                    <p class="home-section__item__sub">${todayList[i].goodsName}</p>
                    <div class="home-section__item__sale">
                      <div class="home-section__item__percent">${todayList[i].discountRate}%</div>
                      <div class="home-section__item__price"><fmt:formatNumber value="${todayList[i].goodsPrice}" pattern="#,###" /> 외</div>
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
      
      <div >
      <button class="store_category_button"><i class="fa fa-angle-down fabt" aria-hidden="true"></i> 빠른가구배송</button>
      <button class="store_category_button">리퍼 상품 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">특가 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">리뷰 검증 가구 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">소재 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">색상 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">사용 인원 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">우드톤 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">공간별 가구 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">브랜드 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">상품 유형 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">템바보드 가공 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">가격 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      <button class="store_category_button">배송 <i class="fa fa-angle-down fabt" aria-hidden="true"></i></button>
      </div>
     
      
      <!-- 가구 전체 상품  -->
	<section class="container home-section" >
		<div class="home-section__wrap">
		<div>
			<p class="store_category_count">전체 개</p>
		</div>

		<ul class="home-section__container pop"
			style="overflow-x: hidden; flex-flow: row wrap">

			<c:forEach var="item" items="${goodsCategoryList}">
				<li class="home-section__item">
					<article>
						<a href="">
							<div class="home-section__img-wrap">
								<img
									src="${contextPath}/productDownload?goodsId=${item.goodsId}&fileName=${item.productThumbnail}"
									alt="${item.goodsName}">
							</div>
							<div class="home-section__item__details">
								<h4 class="home-section__item__tit">${item.goodsBrand }</h4>
								<p class="home-section__item__sub">${item.goodsName}</p>
								<div class="home-section__item__sale">
									<div class="home-section__item__percent">${item.discountRate}%</div>
									<div class="home-section__item__price">
										<fmt:formatNumber value="${item.goodsPrice}" pattern="#,###" />
										외
									</div>
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
	
	</div>
	
	</div> <!-- store_category_right_all_warp -->
</div> <!-- store_category_all_wrap -->
	
	<%@include file="../common/footer.jsp"%>

	<!-- Swiper 슬라이드 스크립트-->
	<script>
      var swiper = new Swiper(".mySwiper", {
        cssMode: true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        pagination: {
          el: ".swiper-pagination",
        },
        mousewheel: true,
        keyboard: true,
        autoplay: true,
        autoplaySpeed: 2000,
      });
    </script>
    
     <!-- 가구 전체 상품 무한스크롤  -->
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
        
        
        
        
        