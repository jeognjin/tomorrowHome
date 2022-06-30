package com.tomorrowHome.mapper;

import org.springframework.transaction.annotation.Transactional;

import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.MemberDTO;

@Transactional
public interface MemberMapper {

	boolean insertMember(MemberDTO memberDTO);

	int selectOneOfNickname(String nickname);

	AuthUserDTO selectOneOfEmail(MemberDTO memberDTO);

}
