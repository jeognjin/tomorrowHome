package com.tomorrowHome.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.mapper.MemberMapper;
import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

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

}
