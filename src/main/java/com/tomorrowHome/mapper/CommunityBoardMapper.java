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

	int insertNewBoard(Map newBoardMap);

	int insertNewhouseBoard(Map newBoardMap);
	
	void insertNewBoardImages(List<CommunityBoardImageDTO> boardImageDTOs);

	CommunityBoardDTO selectImageView(int boardId);

	void updateReadCount(int boardId);

	List<CommunityBoardDTO> selectFollwingBoard(int memberId);

	List<CommunityBoardDTO> selectFollowBoard();

	





}
