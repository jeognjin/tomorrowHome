package com.tomorrowHome.member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.MemberDTO;
import com.tomorrowHome.member.dto.OrderManagementDTO;

public interface MemberService {

	boolean registMember(MemberDTO memberDTO);

	Integer findNickname(String nickname);

	MemberDTO login(MemberDTO memberDTO);

	Map<String, Object> getMypageMemberInfo(int memberId);

	MemberDTO modifyInfo(int memberId);

	void changePassword(MemberDTO memberDTO) throws SQLException;

	Map<String, Object> getMypageShoppingInfo(int memberId);

	void modifyMemberInfo(MemberDTO memberInfo) throws SQLException;

	void modifyMemberProfileImage(AuthUserDTO authUser);

	AuthUserDTO getMemberInfo(int memberId);



	

}
