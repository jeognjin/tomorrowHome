package com.tomorrowHome.community.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.community.dto.CommunityBoardImageDTO;
import com.tomorrowHome.mapper.CommunityBoardMapper;
import com.tomorrowHome.mapper.MemberMapper;
import com.tomorrowHome.member.dto.MemberDTO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
@Transactional
public class CommunityBoardServiceImpl implements CommunityBoardService {

	@Autowired
	private CommunityBoardMapper boardMapper;

	@Override
	public List<CommunityBoardDTO> listBoard() {
		return boardMapper.selectAllBoard();
	}

	@Override
	public List<CommunityBoardDTO> imagelistBoard(Map<String, Integer> map) {

		return boardMapper.selectBoardBycategoryIdimage(map);
	}

	@Override
	public List<CommunityBoardDTO> housewarminglistBoard(Map<String, Integer> map) {

		return boardMapper.selectBoardBycategoryIdhousewarming(map);
	}

	@Override
	public int housewarmingBoardTotal() {

		return boardMapper.selectTotalOfCategoryIdHousewarming();
	}


	@Override
	public int addNewBoard(Map newBoardMap) {
		
		return boardMapper.insertNewBoard(newBoardMap);
	}
	
	@Override
	public int insertNewhouseBoard(Map newBoardMap) {
		
		return boardMapper.insertNewhouseBoard(newBoardMap);
	}

	@Override
	public void addBoardImages(List<CommunityBoardImageDTO> boardImageDTOs) {
		boardMapper.insertNewBoardImages(boardImageDTOs);
	}

	@Override
	public CommunityBoardDTO imageView(int boardId) {
		return boardMapper.selectImageView(boardId);
	}

	@Override
	public void readCount(int boardId) {
		boardMapper.updateReadCount(boardId);
		
	}

	@Override
	public List<CommunityBoardDTO> listFollwingBoard(int memberId) {

		return boardMapper.selectFollwingBoard(memberId);
	}

	@Override
	public List<CommunityBoardDTO> listfollowBoard() {
		return boardMapper.selectFollowBoard();
	}



}
