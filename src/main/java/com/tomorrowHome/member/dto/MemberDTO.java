package com.tomorrowHome.member.dto;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {
	
	String memberId; /* 회원아이디 */
	String email1; /* 이메일1 */
	String email2; /* 이메일2 */
	String password; /* 비밀번호 */
	String nickname; /* 닉네임 */
	String homepage; /* 홈페이지 */
	String gender; /* 성별 */
	Date birthday; /* 생일 */
	String profileImage; /* 프로필사진 */
	String lineIntroduction; /* 한줄소개 */
	

	
}
