package com.tomorrowHome.community.dto;

import java.util.Date;
import java.util.List;

import com.tomorrowHome.member.dto.MemberDTO;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class CommunityBoardDTO {

//Data Transfer Object -> row(�뻾) 
	private int boardId; /* 寃뚯떆�뙋 id */
	private int state; /* ���옣�긽�깭 */
	private String title; /* �젣紐� */
	private String description; /* �꽕紐�/�궡�슜 */
	private String housingType; /* 二쇨굅�삎�깭 */
	private String acreage; /* �룊�닔 */
	private String interiorStyle; /* �뒪���씪 */
	private String space; /* 怨듦컙 */
	private Date registDate; /* 湲� �옉�꽦�븳 �궇吏� */
	private int readCount; /* 議고쉶�닔 */
	private String boardThumbnail; /* 寃뚯떆�뙋 �꽟�꽕�씪 */
	private char categoryId; /* 移댄뀒怨좊━ID */
	private int memberId;
	private MemberDTO MemberDTO;


}