package com.tomorrowHome.store.product.dto;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class ProductDTO {
	private int goodsId; //상품 번호
	private String goodsName; //상품 이름
	private String goodsBrand; //상품 브랜드
	private int goodsPrice; //상품 가격(원가)
	private double discountRate; //상품 할인율
	private double pointRate; //포인트 적립율
	private Date registGoodsDate; //등록 날짜
	private String productThumbnail; //상품 섬네일
	private String goodsStatus; //스토어 분류 
	private int goodsCategoryId; //카테고리ID
	
	

}
