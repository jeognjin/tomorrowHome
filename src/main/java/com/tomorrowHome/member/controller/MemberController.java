package com.tomorrowHome.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tomorrowHome.member.dto.MemberDTO;
import com.tomorrowHome.member.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@Autowired
	private MemberService memberService;

	// 메인 header에서 회원가입 누르면 회원가입 폼으로 보냄
	@GetMapping("/registForm")
	public String registForm() {
		return "member/registerForm";
	}

	// registerForm에서 정보 입력후 post로 접근
	@PostMapping("/registForm")
	public String registFormPost(MemberDTO memberDTO, RedirectAttributes rttr) {
		System.out.println("memberDTO.getPassword()>>>>>>>>" + memberDTO.getPassword());
		String encodedPassword = bcryptPasswordEncoder.encode(memberDTO.getPassword());
		memberDTO.setPassword(encodedPassword);
		System.out.println("memberDTO.getPassword()>>>>>>>>" + memberDTO.getPassword());
		String message = null;

		if(memberService.registMember(memberDTO)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/";
	}
}
