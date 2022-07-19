<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="contextPath" value="${pageContext.request.contextPath}" />
            <%@include file="../common/header.jsp" %>
<link rel="stylesheet"
	href="${contextPath }/resources/css/style.css">
                <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" /> -->

<style>
img {
    border: 0;
}

ol,
ul {
    list-style: none;
}

button {
    font-size: inherit;
}

.order_title_label_wrap {
    display: block;
}

.order_page_warp {
    width: 60%;
}

.order_right_fix_wrap {
    width: 40%;
}

.order_page_all_wrap {
    width: 100%;
    max-width: 1100px;
    margin: 0 auto;
    display: flex;
}
.order_image{
	border-radius: 4px;
	width: 64px;
	height: 64px;
	margin-right: 12px;
}
       </style>
                <div>
                <div class="order_page_all_wrap">
                    <div class="commerce-cart-wrap order_page_warp">
                        <h1 class="order_title">주문/결제</h1>
                        <section class="order_title_section1">
                            <section class="order_title_section2">
                                <div class="order_title_shipping_address">배송지</div>
                                <div class="order_title_css1"></div>
                                <button class="order_title_btn1">변경</button>
                            </section>
                            <div class="order_title_css2">
                                <section class="order_title_section3">
                                    <div class="order_title_css3">
                                        <div class="order_title_orderers_name">김은진</div>
                                        <div class="order_title_member_adress">기본배송지</div>
                                    </div>

                                    <div class="order_title_adress">경기 고양시 일산서구 성저로 25 (대화동) 성저마을6단지건영빌라</div>
                                    <div class="order_title_information">
                                        <div class="order_title_name">김은진</div>
                                        <div class="order_title_phone">010-1234-5678</div>
                                    </div>
                                    <div class="order_title_requests1">
                                        <div class="order_title_requests2">
                                            <select class="order_title_section4">
                                                <option value="0">배송시 요청사항을 선택해주세요<i class="fa-solid fa-sort-down"></i>
                                                </option>
                                                <option value="1">부재시 문앞에 놓아주세요</option>
                                                <option value="2">배송전에 미리 연락주세요</option>
                                                <option value="3">부재시 경비실에 맡겨 주세요</option>
                                                <option value="4">무재시 전화주시거나 문자 남겨 주세요</option>
                                                <option value="5">직접입력</option>
                                            </select>
                                            직접입력 만들기
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </section>

                        <section class="order_title_section1">
                            <section class="order_title_section2">
                                <div class="order_title">주문자</div>
                                <div class="order_title_css1"></div>
                            </section>
                            <div class="order_title_css2">
                                <section class="order_title_label_all_wrap">
                                    <div class="order_title_label_wrap">
                                        <div class="order_title_label1">
                                            <div class="order_info">이름</div>
                                            <div class="order_input_container">
                                                <input class="order_title_section4" name="name" maxlength="10"
                                                    value="김은진">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order_title_label_wrap">
                                        <div class="order_title_label2">
                                            <div class="order_info">이메일</div>
                                            <div class="order_title_css4">
                                                <div class="order_title_css5">
                                                    <div class="order_title_css6">
                                                        <div class="order_title_css7">
                                                            <input class="order_title_section4" name="name"
                                                                maxlength="10" value="김은진" id="orderName">
                                                        </div>
                                                        <span class="order_title_email">@</span>
                                                    </div>
                                                    <div class="order_title_email_form1">
                                                        <div class="order_title_email_form2">
                                                            <div class="order_title_requests2">
                                                                <select class="order_title_email_form3" name="" id="">
                                                                    <option value="">선택해주세요</option>
                                                                    <option value="0">naver.com</option>
                                                                    <option value="1">hanmail.net</option>
                                                                    <option value="2">gmail.com</option>
                                                                    <option value="3">kakao.com</option>
                                                                    <option value="4">nate.com</option>
                                                                    <option value="5">직접 입력</option>
                                                                </select>
                                                                직접입력란 만들기
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="order_title_label_wrap">
                                        <div class="order_title_label2">
                                            <div class="order_info">휴대전화</div>
                                            <div class="order_input_container">
                                                <div class="order_title_css5">
                                                    <div class="order_title_email_form4">
                                                        <div class="order_title_requests2">
                                                            <select class="order_title_section4" name="phone1" id="">
                                                                <option value="disabled">선택</option>
                                                                <option value="0">010</option>
                                                                <option value="1">011</option>
                                                                <option value="2">019</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div order_input_container>
                                                        <input class="order_title_section4" type="tel"
                                                            placeholder="입력해주세요" size="1" maxlength="9" value="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                            <div>
                                입력란 만들기
                            </div>


                        </section>
                        <section class="order_title_section1">
                            <section class="order_title_section2">
                                <div class="order_title">주문상품</div>
                                <div class="order_title_css1"></div>
                            </section>
                            <div class="css-1msvccc e14xfypx0">
                                <section class="css-62lpdi eavdmf80">
                                    <div class="css-wclqjc egkpco11">
                                        <div class="css-114dac7 e1qx8gyn5">
                                            <div class="css-s5xdrg e1qx8gyn4">
                                                <div class="css-1d4irc7 e1qx8gyn3">${productDTO.goodsBrand }</div>
                                            </div>
                                            <p class="css-9bq1ms e1qx8gyn0" id="deliveryType">업체직접배달</p>
                                        </div>
                                        <div>
                                            <div class="css-1deqzke e1l2pwkp8">
                                                <picture><img class="order_image" src="${contextPath}/productDownload?goodsId=${productDTO.goodsId}&fileName=${productDTO.productThumbnail}" >
                                                </picture>
                                                <div class="css-17fh4sh e1l2pwkp6">
                                                    <div class="css-tobrwt e1l2pwkp5">${productDTO.goodsName }</div>
                                                    <ul class="css-rvb3re e1l2pwkp4">
                                                        <li>내추럴</li>
                                                    </ul>
                                                    <div class="css-18cz9pp e1l2pwkp3">
                                                    <c:set var="price" value="${productDTO.goodsPrice - (productDTO.goodsPrice*((productDTO.discountRate)/100)) }"/>
                                                    <span class="css-1r6ecne e1l2pwkp2" id="goodsSalesPrice"><fmt:formatNumber type="number" pattern="###,###,###,###" value="${price-(price%100)}" />원</span>
                                                        <div class="css-1tcfgij e1l2pwkp1"></div><span
                                                            class="css-1fgdtzk e1l2pwkp0" id="orderCount">1</span>개
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <section class="order_title_section1">
                                        <section class="order_title_section2">
                                            <div class="order_title">결제수단</div>
                                            <div class="order_title_css1"></div>
                                        </section>
                                        <div class="css-1msvccc e14xfypx0">
                                            <section class="css-5tkz5f e7wda440">
                                                <div class="css-2pv01r e149t0mw4">
                                                    <button type="button" class="css-1q0xigs e149t0mw3">
                                                        <picture>
                                                            <source type="image/webp"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
                                                            <img alt="카드 아이콘" class="css-1i2eqgi e149t0mw2"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=360&amp;h=360&amp;c=c 3x">
                                                        </picture>
                                                        <div class="css-10z9090 e149t0mw1">카드</div>
                                                    </button><button type="button" class="css-1q0xigs e149t0mw3">
                                                        <picture>
                                                            <source type="image/webp"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
                                                            <img alt="무통장입금 아이콘" class="css-1i2eqgi e149t0mw2"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=360&amp;h=360&amp;c=c 3x">
                                                        </picture>
                                                        <div class="css-10z9090 e149t0mw1">무통장입금</div>
                                                    </button><button type="button" class="css-1q0xigs e149t0mw3">
                                                        <picture>
                                                            <source type="image/webp"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
                                                            <img alt="카카오페이 아이콘" class="css-1i2eqgi e149t0mw2"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=360&amp;h=360&amp;c=c 3x">
                                                        </picture>
                                                        <div class="css-10z9090 e149t0mw1">카카오페이</div>
                                                    </button><button type="button" class="css-1q0xigs e149t0mw3">
                                                        <picture>
                                                            <source type="image/webp"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
                                                            <img alt="토스 아이콘" class="css-1i2eqgi e149t0mw2"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=144&amp;h=144&amp;c=c"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss.png?w=360&amp;h=360&amp;c=c 3x">
                                                        </picture>
                                                        <div class="css-10z9090 e149t0mw1">토스</div>
                                                    </button>
                                                    <button type="button" class="css-1q0xigs e149t0mw3">
                                                        <picture>
                                                            <source type="image/webp"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
                                                            <img alt="네이버페이 아이콘" class="css-1i2eqgi e149t0mw2"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=144&amp;h=144&amp;c=c"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=360&amp;h=360&amp;c=c 3x">
                                                        </picture>
                                                        <div class="css-10z9090 e149t0mw1">네이버페이</div>
                                                    </button><button type="button" class="css-1q0xigs e149t0mw3">
                                                        <picture>
                                                            <source type="image/webp"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
                                                            <img alt="페이코 아이콘" class="css-1i2eqgi e149t0mw2"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=144&amp;h=144&amp;c=c"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=360&amp;h=360&amp;c=c 3x">
                                                        </picture>
                                                        <div class="css-10z9090 e149t0mw1">페이코</div>
                                                    </button><button type="button" class="css-1q0xigs e149t0mw3">
                                                        <picture>
                                                            <source type="image/webp"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c&amp;webp=1"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
                                                            <img alt="핸드폰 아이콘" class="css-1i2eqgi e149t0mw2"
                                                                src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c"
                                                                srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=360&amp;h=360&amp;c=c 3x">
                                                        </picture>
                                                        <div class="css-10z9090 e149t0mw1">핸드폰</div>
                                                    </button>
                                                </div>
                                                </main>

                                        </div>
                            </div>


                            
                    </div>
                    <div class="css-1ivc20c order_right_fix_wrap">
                        <div style="position: sticky; top: 81px; transition: top 0.1s ease 0s;">
                            <div class="commerce-cart__side-bar" style="position: relative;">
                                <dl class="commerce-cart__summary commerce-cart__side-bar__summary">
                                    <div class="commerce-cart__summary__row">
                                        <dt>총 상품금액</dt>
                                        <dd><span class="number">117,500</span>원</dd>
                                    </div>
                                    <div class="commerce-cart__summary__row">
                                        <dt>총 배송비</dt>
                                        <dd>+ <span class="number">3,000</span>원</dd>
                                    </div>
                                    <div class="commerce-cart__summary__row">
                                        <dt>총 할인금액</dt>
                                        <dd>- <span class="number">19,400</span>원</dd>
                                    </div>
                                    <div class="commerce-cart__summary__row commerce-cart__summary__row--total">
                                        <dt>결제금액</dt>
                                        <dd><span class="number">101,100</span>원</dd>
                                    </div>
                                </dl>
                                <div class="commerce-cart__side-bar__order"><button
                                        class="_1eWD8 _3SroY _27do9 commerce-cart__side-bar__order__btn"
                                        type="button" onclick="order_submit();">23,900원 결제하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<script type="text/javascript">

function order_submit() {
	let goodsId = "<c:out value='${productDTO.goodsId }' />";
	let goodsPrice = "<c:out value='${productDTO.goodsPrice }' />";
	let discountRate = "<c:out value='${productDTO.discountRate }' />";
	let orderName = document.getElementById('orderName').value;
	let goodsName = "<c:out value='${productDTO.goodsName }' />";
	let orderCount = $('#orderCount').text();
	let goodsSalesPrice = (goodsPrice/100)*discountRate;
	let deliveryState = 2;
	let deliveryType = $('#deliveryType').text();
	let param = {
			goodsId : goodsId,
			orderName : orderName,
			goodsName : goodsName,
			orderCount : orderCount,
			goodsSalesPrice : goodsSalesPrice,
			deliveryState : deliveryState,
			deliveryType : deliveryType
		};
	console.log("param >>> ", param);
	$.ajax({
		type : 'POST',
		url : "${contextPath }/orderGoods", //회원정보 수정
		contentType: "application/json",
		data : JSON.stringify(param),
		success : function(data) {
			if (data.trim() == 'success') {
				alert("주문완료");
				location.href="${contextPath }/member/mypage/myShopping";
			} //end if
			if(data.trim() == 'fail'){
				alert("주문실패");
			}
		}// end success

	}); //end ajax 
}

</script>
                    <%@include file="../common/footer.jsp" %>
        