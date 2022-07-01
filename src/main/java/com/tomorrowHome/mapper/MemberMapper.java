package com.tomorrowHome.mapper;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.CouponDTO;
import com.tomorrowHome.member.dto.FollowDTO;
import com.tomorrowHome.member.dto.MemberDTO;

@Transactional
public interface MemberMapper {

	boolean insertMember(MemberDTO memberDTO);

	int selectOneOfNickname(String nickname);

	AuthUserDTO selectOneOfEmail(MemberDTO memberDTO);

	List<CommunityBoardDTO> selectLikeBoardOfMember(int memberId);

	List<CommunityBoardDTO> selectScrapBoardOfMember(int memberId);

	List<CouponDTO> selectCouponOfMember(int memberId);

	List<FollowDTO> selectFollerOfMember(int memberId);

	List<FollowDTO> selectFollwingOfMember(int memberId);

	List<CommunityBoardDTO> selectBoardWriteByMember(int memberId);

	MemberDTO selectOneOfMemberId(int memberId);


}
