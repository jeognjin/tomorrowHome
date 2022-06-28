package com.tomorrowHome.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.mapper.MemberMapper;
import com.tomorrowHome.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public boolean registMember(MemberDTO memberDTO) {
		return memberMapper.insertMember(memberDTO);
	}

}
