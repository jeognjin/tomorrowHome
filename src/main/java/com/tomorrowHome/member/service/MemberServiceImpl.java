package com.tomorrowHome.member.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.mapper.MemberMapper;
import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.CouponDTO;
import com.tomorrowHome.member.dto.FollowDTO;
import com.tomorrowHome.member.dto.MemberDTO;
import com.tomorrowHome.store.product.dto.ProductDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public boolean registMember(MemberDTO memberDTO) {
		return memberMapper.insertMember(memberDTO);
	}

	@Override
	public int findNickname(String nickname) {
		return memberMapper.selectOneOfNickname(nickname);
	}

	@Override
	public AuthUserDTO login(MemberDTO memberDTO) {
		return memberMapper.selectOneOfEmail(memberDTO);
	}

	// Mypage 접근할때 로그인한 회원관련 데이터 받아오기
	@Override
	public Map<String, Object> getMypageMemberInfo(int memberId) {
		Map<String, Object> mypageMap = new HashMap<String, Object>();
		List<CommunityBoardDTO> likeBoard = memberMapper.selectLikeBoardOfMember(memberId);
		List<CommunityBoardDTO> scrapBoard = memberMapper.selectScrapBoardOfMember(memberId);
		List<CouponDTO> coupon = memberMapper.selectCouponOfMember(memberId);
		List<FollowDTO> follwer = memberMapper.selectFollerOfMember(memberId);
		List<FollowDTO> follwing = memberMapper.selectFollwingOfMember(memberId);
		List<CommunityBoardDTO> boardWriteByMember = memberMapper.selectBoardWriteByMember(memberId);
		List<CommunityBoardDTO> imageWriteByMember = new ArrayList<CommunityBoardDTO>();
		List<CommunityBoardDTO> housewarmingWriteByMember = new ArrayList<CommunityBoardDTO>();
		for(CommunityBoardDTO boardDTO : boardWriteByMember) {
			if(boardDTO.getCategoryId() == '0') {
				imageWriteByMember.add(boardDTO);
			}
			if(boardDTO.getCategoryId() == '1') {
				housewarmingWriteByMember.add(boardDTO);
			}
		}
		mypageMap.put("likeBoard", likeBoard);
		mypageMap.put("scrapBoard", scrapBoard);
		mypageMap.put("coupon", coupon);
		mypageMap.put("follwer", follwer);
		mypageMap.put("follwing", follwing);
		mypageMap.put("imageWriteByMember", imageWriteByMember);
		mypageMap.put("housewarmingWriteByMember", housewarmingWriteByMember);

		System.out.println("boardWriteByMember>>>>>>>>>"+boardWriteByMember);
		System.out.println("imageWriteByMember>>>>>>>>>"+imageWriteByMember);
		System.out.println("housewarmingWriteByMember>>>>>>>>>"+housewarmingWriteByMember);
		return mypageMap;
	}

	//회원정보 수정
	@Override
	public MemberDTO modifyInfo(int memberId) {
		return memberMapper.selectOneOfMemberId(memberId);
	}

}
