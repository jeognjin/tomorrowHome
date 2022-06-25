package com.tomorrowHome.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.mapper.CommunityBoardMapper;

@Service
public class CommunityBoardServiceImpl implements CommunityBoardService{

	@Autowired
	private CommunityBoardMapper boardMapper;
	
	@Override
	public List<CommunityBoardDTO> listBoard() {
		return boardMapper.selectAllBoard();
	}

}
