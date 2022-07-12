<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
button {
	display: block;
}
.commerce-cart-wrap{
	max-width: 1100px;
	margin: 20px auto;
}
.commerce-cart__side-bar-wrap{
	padding: 0;
}
.commerce-cart__side-bar{
	width: 100%;
}
.commerce-cart__side-bar {
    padding: 0;
    width: 100%;
}
.commerce-cart__header-wrap{
	display: block;
	width: 90%;
	height: 50px;
	margin: 20px auto 0 auto;
}
.commerce-cart__header{
	display: block;
	width: 100%;
}
.commerce-cart__content__group-list{
	display: block;
	width: 90%;
	margin: 0 auto;
}

</style>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@include file="../common/header.jsp"%>

<script type="text/javascript">
function calcGoodsPrice(bookPrice,obj){
	var totalPrice,final_total_price,totalNum;
	var goods_qty=document.getElementById("select_goods_qty");
	//alert("총 상품금액"+goods_qty.value);
	var p_totalNum=document.getElementById("p_totalNum");
	var p_totalPrice=document.getElementById("p_totalPrice");
	var p_final_totalPrice=document.getElementById("p_final_totalPrice");
	var h_totalNum=document.getElementById("h_totalNum");
	var h_totalPrice=document.getElementById("h_totalPrice");
	var h_totalDelivery=document.getElementById("h_totalDelivery");
	var h_final_total_price=document.getElementById("h_final_totalPrice");
	if(obj.checked==true){
	//	alert("체크 했음")
		
		totalNum=Number(h_totalNum.value)+Number(goods_qty.value);
		//alert("totalNum:"+totalNum);
		totalPrice=Number(h_totalPrice.value)+Number(goods_qty.value*bookPrice);
		//alert("totalPrice:"+totalPrice);
		final_total_price=totalPrice+Number(h_totalDelivery.value);
		//alert("final_total_price:"+final_total_price);

	}else{
	//	alert("h_totalNum.value:"+h_totalNum.value);
		totalNum=Number(h_totalNum.value)-Number(goods_qty.value);
	//	alert("totalNum:"+ totalNum);
		totalPrice=Number(h_totalPrice.value)-Number(goods_qty.value)*bookPrice;
	//	alert("totalPrice="+totalPrice);
		final_total_price=totalPrice-Number(h_totalDelivery.value);
	//	alert("final_total_price:"+final_total_price);
	}
	
	h_totalNum.value=totalNum;
	
	h_totalPrice.value=totalPrice;
	h_final_total_price.value=final_total_price;
	
	p_totalNum.innerHTML=totalNum;
	p_totalPrice.innerHTML=totalPrice;
	p_final_totalPrice.innerHTML=final_total_price;
}

function modify_cart_qty(goods_id,bookPrice,index){
	//alert(index);
   var length=document.frm_order_all_cart.cart_goods_qty.length;
   var _cart_goods_qty=0;
	if(length>1){ //카트에 제품이 한개인 경우와 여러개인 경우 나누어서 처리한다.
		_cart_goods_qty=document.frm_order_all_cart.cart_goods_qty[index].value;		
	}else{
		_cart_goods_qty=document.frm_order_all_cart.cart_goods_qty.value;
	}
		
	var cart_goods_qty=Number(_cart_goods_qty);
	//alert("cart_goods_qty:"+cart_goods_qty);
	//console.log(cart_goods_qty);
	$.ajax({
		type : "post",
		async : false, //false인 경우 동기식으로 처리한다.
		url : "${contextPath}/cart/modifyCartQty.do",
		data : {
			goods_id:goods_id,
			cart_goods_qty:cart_goods_qty
		},
		
		success : function(data, textStatus) {
			//alert(data);
			if(data.trim()=='modify_success'){
				alert("수량을 변경했습니다!!");	
			}else{
				alert("다시 시도해 주세요!!");	
			}
			
		},
		error : function(data, textStatus) {
			alert("에러가 발생했습니다."+data);
		},
		complete : function(data, textStatus) {
			//alert("작업을완료 했습니다");
			
		}
	}); //end ajax	
}

function delete_cart_goods(cart_id){
	var cart_id=Number(cart_id);
	var formObj=document.createElement("form");
	var i_cart = document.createElement("input");
	i_cart.name="cart_id";
	i_cart.value=cart_id;
	
	formObj.appendChild(i_cart);
    document.body.appendChild(formObj); 
    formObj.method="post";
    formObj.action="${contextPath}/cart/removeCartGoods.do";
    formObj.submit();
}

function fn_order_each_goods(goods_id,goods_title,goods_sales_price,fileName){
	var total_price,final_total_price,_goods_qty;
	var cart_goods_qty=document.getElementById("cart_goods_qty");
	
	_order_goods_qty=cart_goods_qty.value; //장바구니에 담긴 개수 만큼 주문한다.
	var formObj=document.createElement("form");
	var i_goods_id = document.createElement("input"); 
    var i_goods_title = document.createElement("input");
    var i_goods_sales_price=document.createElement("input");
    var i_fileName=document.createElement("input");
    var i_order_goods_qty=document.createElement("input");
    
    i_goods_id.name="goods_id";
    i_goods_title.name="goods_title";
    i_goods_sales_price.name="goods_sales_price";
    i_fileName.name="goods_fileName";
    i_order_goods_qty.name="order_goods_qty";
    
    i_goods_id.value=goods_id;
    i_order_goods_qty.value=_order_goods_qty;
    i_goods_title.value=goods_title;
    i_goods_sales_price.value=goods_sales_price;
    i_fileName.value=fileName;
    
    formObj.appendChild(i_goods_id);
    formObj.appendChild(i_goods_title);
    formObj.appendChild(i_goods_sales_price);
    formObj.appendChild(i_fileName);
    formObj.appendChild(i_order_goods_qty);

    document.body.appendChild(formObj); 
    formObj.method="post";
    formObj.action="${contextPath}/order/orderEachGoods.do";
    formObj.submit();
}

function fn_order_all_cart_goods(){
//	alert("모두 주문하기");
	var order_goods_qty;
	var order_goods_id;
	var objForm=document.frm_order_all_cart;
	var cart_goods_qty=objForm.cart_goods_qty;
	var h_order_each_goods_qty=objForm.h_order_each_goods_qty;
	var checked_goods=objForm.checked_goods;
	var length=checked_goods.length;
	
	
	//alert(length);
	if(length>1){
		for(var i=0; i<length;i++){
			if(checked_goods[i].checked==true){
				order_goods_id=checked_goods[i].value;
				order_goods_qty=cart_goods_qty[i].value;
				cart_goods_qty[i].value="";
				cart_goods_qty[i].value=order_goods_id+":"+order_goods_qty;
				//alert(select_goods_qty[i].value);
				console.log(cart_goods_qty[i].value);
			}
		}	
	}else{
		order_goods_id=checked_goods.value;
		order_goods_qty=cart_goods_qty.value;
		cart_goods_qty.value=order_goods_id+":"+order_goods_qty;
		//alert(select_goods_qty.value);
	}
		
 	objForm.method="post";
 	objForm.action="${contextPath}/order/orderAllCartGoods.do";
	objForm.submit();
}

</script>
<div class="commerce-cart-wrap">
<div class="commerce-cart_content_all_wrap">
<div class="commerce-cart__content" style="width: 750px;">
    <div class="sticky-container commerce-cart__header-wrap">
        <div class="sticky-child commerce-cart__header">
            <span class="commerce-cart__header__left">
                <label class="_3xqzr _4VN_z">
                    <div class="_3zqA8">
                        <input type="checkbox" class="_3UImz" checked="" value="">
                        <span class="_2mDYR">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR">
                                <path fill="currentColor"
                                    d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path>
                            </svg>
                        </span>
                    </div>
                    <span class="_1aN3J">
                        <span class="commerce-cart__header__caption">모두선택</span>
                    </span>
                </label></span>
            <span class="commerce-cart__header__right">
                <button class="commerce-cart__header__delete" type="button">선택삭제</button>
            </span>
        </div>
    </div>
    <ul class="commerce-cart__content__group-list">
        <li class="commerce-cart__content__group-item">
            <article class="commerce-cart__group">
                <h1 class="commerce-cart__group__header">데일리라이크
                    <!-- --> 배송
                </h1>
                <ul class="commerce-cart__group__item-list">
                    <li class="commerce-cart__group__item">
                        <article class="commerce-cart__delivery-group">
                            <ul class="commerce-cart__delivery-group__product-list">
                                <li class="commerce-cart__delivery-group__product-item">
                                    <article class="carted-product">
                                        <div class="carted-product__select">
                                            <div class="_3zqA8"><input type="checkbox" class="_3UImz" checked=""
                                                    value="">
                                                <span class="_2mDYR">
                                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR">
                                                        <path fill="currentColor"
                                                            d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z">
                                                        </path>
                                                    </svg></span>
                                            </div>
                                        </div>
                                        <a class="product-small-item product-small-item--clickable"
                                            href="/productions/869748/selling">
                                            <div class="product-small-item__image">
                                                <picture>
                                                    <source
                                                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=256&amp;h=256&amp;c=c&amp;webp=1"
                                                        srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=720&amp;h=720&amp;c=c&amp;webp=1 3x"
                                                        type="image/webp"><img alt="상품 이미지"
                                                        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=256&amp;h=256&amp;c=c"
                                                        srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=360&amp;h=360&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=480&amp;h=480&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165482160700936981.jpg?w=720&amp;h=720&amp;c=c 3x">
                                                </picture>
                                            </div>
                                            <div class="product-small-item__content">
                                                <h1 class="product-small-item__title">[데일리라이크]
                                                    <!-- -->마이 버디 발매트 / 포인트러그 7 types
                                                </h1>
                                                <p class="css-w0e4y9 e1xep4wb0">50,000원 이상 무료배송
                                                    <!-- -->&nbsp;|&nbsp;
                                                    <!-- -->일반택배
                                                </p>
                                            </div>
                                        </a><button class="carted-product__delete" type="button" aria-label="삭제"><svg
                                                width="12" height="12" viewBox="0 0 12 12" fill="currentColor"
                                                preserveAspectRatio="xMidYMid meet">
                                                <path fill-rule="nonzero"
                                                    d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z">
                                                </path>
                                            </svg></button>
                                        <ul class="carted-product__option-list">
                                            <li class="carted-product__option-list__item">
                                                <article class="selling-option-item">
                                                    <h2 class="selling-option-item__name">06 Egg flower</h2><button
                                                        class="selling-option-item__delete" type="button"
                                                        aria-label="삭제"><svg width="12" height="12" viewBox="0 0 12 12"
                                                            fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                            <path fill-rule="nonzero"
                                                                d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z">
                                                            </path>
                                                        </svg></button>
                                                    <div class="selling-option-item__controls">
                                                        <div class="selling-option-item__quantity">
                                                            <div class="input-group select-input option-count-input">
                                                                <select class="form-control">
                                                                    <option selected="" value="0">1</option>
                                                                    <option value="1">2</option>
                                                                    <option value="2">3</option>
                                                                    <option value="3">4</option>
                                                                    <option value="4">5</option>
                                                                    <option value="5">6</option>
                                                                    <option value="6">7</option>
                                                                    <option value="7">8</option>
                                                                    <option value="8">9</option>
                                                                    <option value="9">10+</option>
                                                                </select>
                                                                <span class="select-input__icon"><svg
                                                                        class="icon" width="10" height="10"
                                                                        style="fill:currentColor"
                                                                        preserveAspectRatio="xMidYMid meet">
                                                                        <path fill-rule="evenodd" d="M0 3l5 5 5-5z">
                                                                        </path>
                                                                    </svg></span></div>
                                                        </div>
                                                        <p class="selling-option-item__price"><span
                                                                class="selling-option-item__price__number">11,900</span>원
                                                        </p>
                                                    </div>
                                                </article>
                                            </li>
                                        </ul>
                                        <div class="carted-product__footer"><span
                                                class="carted-product__footer__left"><button
                                                    class="carted-product__edit-btn" type="button">옵션변경</button><button
                                                    class="carted-product__order-btn"
                                                    type="button">바로구매</button></span><span
                                                class="carted-product__subtotal"><span
                                                    class="carted-product__subtotal__number">11,900</span>원</span></div>
                                    </article>
                                </li>
                            </ul>
                            <footer class="commerce-cart__delivery-group__footer">
                                <p class="commerce-cart__delivery-group__total">배송비
                                    <!-- --> 3,000원
                                </p>
                                <p class="commerce-cart__delivery-group__group-caption">묶음배송 상품
                                    <!-- -->38,100
                                    <!-- -->원 추가시 무료배송
                                </p>
                                <p class="commerce-cart__delivery-group__group-link"><a
                                        class="commerce-cart__delivery-group__group-link__link"
                                        href="/productions/869748/groupable_productions">묶음배송 상품 추가하기<svg class="icon"
                                            width="1em" height="1em" viewBox="0 0 24 24"
                                            preserveAspectRatio="xMidYMid meet">
                                            <path fill="currentColor" fill-rule="nonzero"
                                                d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path>
                                        </svg></a></p>
                            </footer>
                        </article>
                    </li>
                </ul>
            </article>
        </li>
    </ul>
   </div>
   <div class="commerce-cart__side-bar-wrap" style="padding-top: 35px;
    width: 365px;">
    <div
        style="position: sticky; top: 81px; transition: top 0.1s ease 0s;">
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
            <div ><button
                    class="_1eWD8 _3SroY _27do9 commerce-cart__side-bar__order__btn" type="button">1개 상품 구매하기</button>
            </div>
        </div>
    </div>
</div> 
</div>
</div>
<%@include file="../common/footer.jsp"%>