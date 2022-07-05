package com.tomorrowHome.member.dto;

import java.util.Date;

import lombok.Data;

@Data
public class PointDTO {

	private int pointId; /* 포인트아이디 */
	private int memberId; /* 회원번호 */
	private int point; /* 포인트 */
	private Date useDate; /* 사용가능날짜 */

}

