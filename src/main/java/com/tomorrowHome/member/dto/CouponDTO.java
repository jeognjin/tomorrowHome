package com.tomorrowHome.member.dto;

import java.util.Date;

import lombok.Data;

@Data
public class CouponDTO {

	private int couponId; /* 쿠폰아이디 */
	private String couponName; /* 쿠폰이름 */
	private double couponPercent; /* 쿠폰할인율 */
	private int maximumPrice; /* 최대할인금액 */
	private Date endDate; /* 종료날짜 */
	

}
