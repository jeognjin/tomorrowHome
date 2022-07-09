package com.tomorrowHome.member.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderManagementDTO {

	private int orderId; /* 주문번호 */
	private int goodsId; //상품 번호
	private int deliveryState; /* 배송 상태 */
	private Date payOrderTime; /* 결제시간 */
	private String productThumbnail; //상품 섬네일
	private String goodsBrand; //상품 브랜드
	private String goodsName; //상품 이름
	private int goodsPrice; //상품 가격(원가)
	private double discountRate; //상품 할인율
	private int orderCount; /* 주문수량 */
	
}
