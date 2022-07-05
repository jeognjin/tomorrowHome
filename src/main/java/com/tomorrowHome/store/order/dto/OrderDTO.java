package com.tomorrowHome.store.order.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDTO {

	private int orderId; /* 주문번호 */
	private int memberId; /* 회원번호 */
	private int goodsId; /* 상품 번호 */
	private String orderName; /* 주문자 이름 */
	private String goodsName; /* 상품 이름 */
	private int orderCount; /* 주문수량 */
	private int goodsSalesPrice; /* 결제 가격 */
	private String deliveryType; /* 배송 타입 */
	private String deliveryMessage; /* 배송 요청 사항 */
	private int deliveryState; /* 배송 상태 */
	private String payType; /* 결제 종류 */
	private Date payOrderTime; /* 결제시간 */
	
	
}
