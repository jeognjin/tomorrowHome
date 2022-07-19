package com.tomorrowHome.store.product.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ProductReviewDTO {

	int reviewId; /* 리뷰번호 */
	int goodsId; /* 상품 번호 */
	int memberId; /* 회원번호 */
	String content; /* 리뷰내용 */
	String reviewImage; /* 리뷰이미지 */
	Date regdate; /* 등록날짜 */
}
