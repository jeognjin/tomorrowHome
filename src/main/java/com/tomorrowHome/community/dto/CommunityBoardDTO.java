package com.tomorrowHome.community.dto;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class CommunityBoardDTO {

//Data Transfer Object -> row(행) 
	private int boardId; /* 게시판 id */
	private int state; /* 저장상태 */
	private String title; /* 제목 */
	private String description; /* 설명/내용 */
	private String housingType; /* 주거형태 */
	private String acreage; /* 평수 */
	private String interiorStyle; /* 스타일 */
	private String space; /* 공간 */
	private Date registDate; /* 글 작성한 날짜 */
	private int readCount; /* 조회수 */
	private String boardThumbnail; /* 게시판 섬네일 */
	private char categoryId; /* 카테고리ID */
	private String memberId; /* 회원아이디 */


}