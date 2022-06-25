package com.tomorrowHome.community.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class CommunityBoardImageDTO {

//Data Transfer Object -> row(행) 
	private int imagesId; /* 사진id */
	private String imagePath; /* 사진경로 */
	private char kind; /* 사진타입 */
	private int boardId; /* 게시판 id */


	
}