package com.tomorrowHome.member.dto;

import java.util.Date;

import lombok.Data;

@Data
public class FollowDTO {

	int memberId; /* 회원아이디 */
	String nickname; /* 닉네임 */
	String profileImage; /* 프로필사진 */
	String lineIntroduction; /* 한줄소개 */
}
