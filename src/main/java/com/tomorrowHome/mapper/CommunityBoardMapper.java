package com.tomorrowHome.mapper;

import java.util.List;
import java.util.Map;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.community.dto.CommunityBoardImageDTO;

public interface CommunityBoardMapper {

	List<CommunityBoardDTO> selectAllBoard();

	List<CommunityBoardImageDTO> selectAllBoardImages(int boardId);

	List<CommunityBoardDTO> selectBoardBycategoryIdimage(Map<String, Integer> map);

	List<CommunityBoardDTO> selectBoardBycategoryIdhousewarming(Map<String, Integer> map);

	int selectTotalOfCategoryIdHousewarming();
	
	/* 이미지 상세 페이지 > mapper.xml */
	List<CommunityBoardDTO> selectImageView();

	int insertNewBoard(Map newBoardMap);

	void insertNewBoardImages(List<CommunityBoardImageDTO> boardImageDTOs);




}
