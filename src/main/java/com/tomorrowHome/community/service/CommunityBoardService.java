package com.tomorrowHome.community.service;

import java.util.List;
import java.util.Map;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.community.dto.CommunityBoardImageDTO;
import com.tomorrowHome.member.dto.MemberDTO;
import com.tomorrowHome.store.product.dto.ProductDTO;

public interface CommunityBoardService {

	List<CommunityBoardDTO> listBoard();

	List<CommunityBoardDTO> housewarminglistBoard(Map<String, Integer> map);

	List<CommunityBoardDTO> imagelistBoard(Map<String, Integer> map);

	int housewarmingBoardTotal();
	
	int addNewBoard(Map newBoardMap);
	
	int insertNewhouseBoard(Map newBoardMap);

	void addBoardImages(List<CommunityBoardImageDTO> boardImageDTOs);

	CommunityBoardDTO imageView(int boardId);

	void readCount(int boardId);

	List<CommunityBoardDTO> listFollwingBoard(int memberId);

	List<CommunityBoardDTO> listfollowBoard();


	

	
	



}
