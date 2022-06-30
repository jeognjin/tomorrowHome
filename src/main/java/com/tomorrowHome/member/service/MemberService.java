package com.tomorrowHome.member.service;

import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.MemberDTO;

public interface MemberService {

	boolean registMember(MemberDTO memberDTO);

	int findNickname(String nickname);

	AuthUserDTO login(MemberDTO memberDTO);

	

}
