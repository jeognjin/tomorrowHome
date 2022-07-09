<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내일의집</title>
<!-- css -->
<link rel="stylesheet" href="${contextPath }/resources/css/style.css">
</head>
<body>

<c:set var="goodsList" value="${goodsList }"/>
<div>
  <!-- 오늘의 딜 페이지 -->
  
       <section class="container home-section">
        <div class="home-section__wrap">
         <h1 class="today_deal_maintitle">오늘의딜</h1>
            <span class="today_deal_subtitle">매일 자정, 새로운 특가상품</span>
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
                      <div class="home-section__item__price">
                      <c:set var="price" value="${item.goodsPrice - (item.goodsPrice*((item.discountRate)/100)) }"/>
                      <fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" /> 외</div>
                      
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
          		url :'${contextPath }/todayScroll',
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
      </body>
      
<%@include file="../common/footer.jsp"%>
