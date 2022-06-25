package com.tomorrowHome.mapper;

import java.util.List;

import com.tomorrowHome.community.dto.CommunityBoardDTO;

public interface CommunityBoardMapper {

	List<CommunityBoardDTO> selectAllBoard();

}
