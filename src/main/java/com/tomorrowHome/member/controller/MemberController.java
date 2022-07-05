package com.tomorrowHome.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tomorrowHome.member.dto.AuthUserDTO;
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
		// 비밀번호 암호화
		String encodedPassword = bcryptPasswordEncoder.encode(memberDTO.getPassword());
		memberDTO.setPassword(encodedPassword);

		System.out.println("membercontroller>>memberDTO>>>>" + memberDTO);
		if (memberService.registMember(memberDTO)) {
			rttr.addFlashAttribute("regist", "success");
		}

		return "redirect:/";
	}

	// 회원가입할때 같은 닉네임 사용하는지 확인
	@PostMapping("/nicknameSearch")
	@ResponseBody
	public String nicknameSearch(@RequestParam("nickname") String nickname) {
		System.out.println("MemberController nickname>>>>>>>>>>>>" + nickname);
		Integer result = memberService.findNickname(nickname);
		
		if (result == null) {
			System.out.println("MemberController nickname>>>>>>unused1");
			return "unused";
		} else if (result > 0) {
			System.out.println("MemberController nickname>>>>>>overlap");
			return "overlap";
		} else {
			System.out.println("MemberController nickname>>>>>>unused2");
			return "unused";
		}

	}

	// 로그인 누르면 로그인폼으로 보내기
	@GetMapping("/loginForm")
	public String login() {
		return "member/loginForm";
	}

	// 로그인 정보 입력후 접근하면 로그인 후 세션에 정보 붙이기
	@PostMapping("/login")
	@ResponseBody
	public String login(MemberDTO memberDTO, HttpSession session) {
		System.out.println("membercontroller>>login>>>memberDTO>>>>>>>" + memberDTO);
		String encodedPassword = bcryptPasswordEncoder.encode(memberDTO.getPassword());
		memberDTO.setPassword(encodedPassword);
		AuthUserDTO authUser = new AuthUserDTO();
		MemberDTO member = memberService.login(memberDTO);
		if (member == null) {
			return "fail";
		} else {
			System.out.println("membercontroller>>>authUser>>>>" + authUser);
			authUser.setMemberId(member.getMemberId());
			authUser.setNickname(member.getNickname());
			authUser.setProfileImage(member.getProfileImage());
			session.setAttribute("authUser", authUser);
			return "success";
		}
	}

	// mypage로 이동
	@GetMapping("/mypage/main")
	public String mypage(HttpSession session, Model model) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		System.out.println("membercontroller>>>>>authUser>>>>>>" + authUser);
		Map<String, Object> mypageMap = memberService.getMypageMemberInfo(authUser.getMemberId());
		model.addAttribute("mypageMap", mypageMap);
		return "member/mypage";
	}

	// mypage_setting으로 이동
	@GetMapping("/mypage/setting")
	public String mypageSetting(Model model, HttpSession session) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		MemberDTO memberInfo = memberService.modifyInfo(authUser.getMemberId());
		model.addAttribute("memberInfo", memberInfo);
		return "member/mypage_setting";
	}

	// 로그아웃 - 세션삭제
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}

	// 회원정보 수정
	@PostMapping("/modify")
	@ResponseBody
	public String modifyProfile(MemberDTO memberDTO, HttpSession session) {
		System.out.println("membercontroller>>modify>>> start");
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		authUser.setNickname(memberDTO.getNickname());
//		authUser.setProfileImage(memberDTO.getProfileImage());
		System.out.println("membercontroller>>>>>modify>>>>>memberDTO>>>>>" + memberDTO);
		if (memberService.modifyMember(memberDTO)) {
			session.setAttribute("authUser", authUser);
		}

		return "success";
	}

	// 비밀번호변경
	@PostMapping("/changePassword")
	@ResponseBody
	public String changePassword(MemberDTO memberDTO) {	
		System.out.println("memberDTO.getPassword()>>>>>>>>>>>>>>"+memberDTO.getPassword());
		String encodedPassword = bcryptPasswordEncoder.encode(memberDTO.getPassword());
		memberDTO.setPassword(encodedPassword);
		System.out.println("membercontroller>>>>changePassword>>memberDTO>>>>"+memberDTO);
		Integer result = memberService.changePassword(memberDTO);
		if(result == null) {
			System.out.println("changePassword>>>>>>>>>>>fail1");
			return "fail";
		}else if(result > 0){
			System.out.println("changePassword>>>>>>>>>>>>success");
			return "success";
		}else {
			System.out.println("changePassword>>>>>>>>>>>fail2");
			return "fail";
		}
		
	}
	
	@GetMapping("/mypage/myShopping")
	public String mypageShopping(HttpSession session ,Model model) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		System.out.println("membercontroller>>>>>authUser>>>>>>" + authUser);
		Map<String, Object> mypageMap = memberService.getMypageShoppingInfo(authUser.getMemberId());
		model.addAttribute("mypageMap", mypageMap);
		return "member/mypage_shopping";
	}

}
