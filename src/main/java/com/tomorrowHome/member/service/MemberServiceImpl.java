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
import com.tomorrowHome.member.dto.OrderManagementDTO;
import com.tomorrowHome.member.dto.PointDTO;
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
	public Integer findNickname(String nickname) {
		return memberMapper.selectOneOfNickname(nickname);
	}

	@Override
	public MemberDTO login(MemberDTO memberDTO) {
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
		for (CommunityBoardDTO boardDTO : boardWriteByMember) {
			if (boardDTO.getCategoryId() == '0') {
				imageWriteByMember.add(boardDTO);
			}
			if (boardDTO.getCategoryId() == '1') {
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

		System.out.println("boardWriteByMember>>>>>>>>>" + boardWriteByMember);
		System.out.println("imageWriteByMember>>>>>>>>>" + imageWriteByMember);
		System.out.println("housewarmingWriteByMember>>>>>>>>>" + housewarmingWriteByMember);
		return mypageMap;
	}

	// 회원정보 수정 페이지 접근할때 멤버 정보 가져오기
	@Override
	public MemberDTO modifyInfo(int memberId) {
		return memberMapper.selectOneOfMemberId(memberId);
	}

	// 회원정보 수정하기
	@Override
	public boolean modifyMember(MemberDTO memberDTO) {
		return memberMapper.updateMemberInfo(memberDTO);
	}

	// 비밀번호 변경
	@Override
	public Integer changePassword(MemberDTO memberDTO) {
		return memberMapper.updatePassword(memberDTO);
	}

	//마이페이지 - 나의쇼핑 접근시 보여줄 쇼핑관련 데이터 가져가기
	@Override
	public Map<String, Object> getMypageShoppingInfo(int memberId) {
		Map<String, Object> mypageMap = new HashMap<String, Object>();
		List<OrderManagementDTO> OrderManagement = memberMapper.selectOrderManagementOfmember(memberId);
		List<PointDTO> point = memberMapper.getPointOfMember(memberId);
		List<CouponDTO> coupon = memberMapper.getCouponOfMember(memberId);
		mypageMap.put("OrderManagement", OrderManagement);
		mypageMap.put("point", point);
		mypageMap.put("coupon", coupon);
		return mypageMap;
	}


}
