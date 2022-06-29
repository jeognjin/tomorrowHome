package com.tomorrowHome.mapper;

import com.tomorrowHome.member.dto.MemberDTO;

public interface MemberMapper {

	boolean insertMember(MemberDTO memberDTO);

	int selectOneOfNickname(String nickname);

}
