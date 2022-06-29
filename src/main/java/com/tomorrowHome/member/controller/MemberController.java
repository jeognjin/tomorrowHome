package com.tomorrowHome.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	// 회원가입 폼 에서 정보 입력후 post로 접근
	@PostMapping("/registForm")
	public String registFormPost(MemberDTO memberDTO, RedirectAttributes rttr) {
		//비밀번호 암호화
		String encodedPassword = bcryptPasswordEncoder.encode(memberDTO.getPassword());
		memberDTO.setPassword(encodedPassword);

		if(memberService.registMember(memberDTO)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/";
	}
	
	//회원가입할때 같은 닉네임 사용하는지 확인
	@PostMapping("/nicknameSearch")
	@ResponseBody
	public String nicknameSearch(@RequestParam("nickname") String nickname) {
		System.out.println("MemberController nickname>>>>>>>>>>>>"+nickname);
		if(memberService.findNickname(nickname) > 0) {
			return "overlap";
		}else {
			return "unused";
		}
	}
	
}
