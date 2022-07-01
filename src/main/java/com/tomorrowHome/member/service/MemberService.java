package com.tomorrowHome.member.service;

import java.util.List;
import java.util.Map;

import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.MemberDTO;

public interface MemberService {

	boolean registMember(MemberDTO memberDTO);

	int findNickname(String nickname);

	AuthUserDTO login(MemberDTO memberDTO);

	Map<String, Object> getMypageMemberInfo(int memberId);

	MemberDTO modifyInfo(int memberId);

	

}
