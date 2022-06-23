package com.tomorrowHome.store.product.dto;

import lombok.Data;

@Data
public class ProductDto {
	private int goodsId; //상품 번호
	private String goodsName; //상품 이름
	private String goodsSort; //상품 분류
	private String goodsBrand; //상품 브랜드
	private int goodsPrice; //상품 가격(원가)
	private int goodsSalesPrice; //상품 할인 가격
	private int goodsPoint; //상품 적립금
	private String goodsDeliveryType; //상품 배송 타입
	private int goodsCategoryId; //카테고리ID

	
}
