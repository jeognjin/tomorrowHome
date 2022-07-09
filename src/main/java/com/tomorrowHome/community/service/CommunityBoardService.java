package com.tomorrowHome.community.service;

import java.util.List;
import java.util.Map;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.community.dto.CommunityBoardImageDTO;
import com.tomorrowHome.store.product.dto.ProductDTO;

public interface CommunityBoardService {

	List<CommunityBoardDTO> listBoard();

	List<CommunityBoardDTO> housewarminglistBoard(Map<String, Integer> map);

	List<CommunityBoardDTO> imagelistBoard(Map<String, Integer> map);

	int housewarmingBoardTotal();
	
	/* 이미지 상세 페이지 >ServiceImpl */
	List<CommunityBoardDTO> imageViewBoard();

	int addNewBoard(Map newBoardMap);

	void addBoardImages(List<CommunityBoardImageDTO> boardImageDTOs);
	



}
