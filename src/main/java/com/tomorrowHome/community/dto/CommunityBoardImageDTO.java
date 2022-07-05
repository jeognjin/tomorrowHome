package com.tomorrowHome.community.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class CommunityBoardImageDTO {

//Data Transfer Object -> row(행) 
	private int imagesId; /* 사진id */
	private String imageFileName; /* 사진경로 */
	private int boardId; /* 게시판 id */


	
}