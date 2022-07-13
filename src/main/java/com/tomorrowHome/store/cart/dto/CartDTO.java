package com.tomorrowHome.store.cart.dto;

import com.tomorrowHome.store.product.dto.ProductDTO;

import lombok.Data;

@Data
public class CartDTO {

	private int cartId; //장바구니ID
	private int cartGoodsQty; //상품 수량
	private int goodsId; //상품ID
	private int memberId; //회원ID
	private String cookieValue; //쿠키값
	private ProductDTO productDTO; //카트목록을 위한 productDTO
	
}
