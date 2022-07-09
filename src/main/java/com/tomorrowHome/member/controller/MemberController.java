package com.tomorrowHome.member.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tomorrowHome.common.util.Auth;
import com.tomorrowHome.common.util.HomeUtil;
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
	@Auth
	public String mypage(HttpSession session, Model model) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		System.out.println("membercontroller>>>>>authUser>>>>>>" + authUser);
		Map<String, Object> mypageMap = memberService.getMypageMemberInfo(authUser.getMemberId());
		model.addAttribute("mypageMap", mypageMap);
		return "member/mypage";
	}

	// mypage_setting으로 이동
	@GetMapping("/mypage/setting")
	@Auth
	public String mypageSetting(Model model, HttpSession session) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		MemberDTO memberInfo = memberService.modifyInfo(authUser.getMemberId());
		model.addAttribute("memberInfo", memberInfo);
		return "member/mypage_setting";
	}

	// 로그아웃 - 세션삭제
	@GetMapping("/logout")
	@Auth
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}


	// 비밀번호변경
	@PostMapping("/changePassword")
	@ResponseBody
	@Auth
	public String changePassword(MemberDTO memberDTO) {
		System.out.println("memberDTO.getPassword()>>>>>>>>>>>>>>" + memberDTO.getPassword());
		String encodedPassword = bcryptPasswordEncoder.encode(memberDTO.getPassword());
		memberDTO.setPassword(encodedPassword);
		System.out.println("membercontroller>>>>changePassword>>memberDTO>>>>" + memberDTO);

		try {
			memberService.changePassword(memberDTO);

			return "success";
		} catch (SQLException e) {
			System.out.println("changePassword>>>>>>>>>>>fail1");
			e.printStackTrace();
			return "fail";
		}
	}

	@GetMapping("/mypage/myShopping")
	@Auth
	public String mypageShopping(HttpSession session, Model model) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		System.out.println("membercontroller>>>>>authUser>>>>>>" + authUser);
		Map<String, Object> mypageMap = memberService.getMypageShoppingInfo(authUser.getMemberId());
		model.addAttribute("mypageMap", mypageMap);
		return "member/mypage_shopping";
	}

	// 회원정보 수정
	@Auth
	@PostMapping(value = "/modify")
	public @ResponseBody String modifyMemberInfo(@RequestBody MemberDTO memberInfo, HttpSession session) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		System.out.println("membercontroller>>>>>>>modify>>>>>memberInfo>>>>>>>"+memberInfo);
		try {
			memberService.modifyMemberInfo(memberInfo);
			authUser.setNickname(memberInfo.getNickname());
			System.out.println("modify>>>>>>>authUser>>>>>>>>>>>" + authUser);
			session.setAttribute("authUser", authUser);
			return "success";
		} catch (SQLException e) {
			e.printStackTrace();
			return "fail";
		}
		

		
	}

	// 회원 프로필 사진 수정
	@PostMapping("/modifyProfileImage")
	@ResponseBody
	@Auth
	public String uploadProfileImageFile(HttpSession session, MultipartHttpServletRequest multipartRequest) {
		String image_path = "C:\\tomorrowHome_images\\";
		List<String> imageFileList = new ArrayList<>();
		String profileImage = "";
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		try {
			imageFileList = HomeUtil.upload(multipartRequest);
			for (String imageFileName : imageFileList) {
				profileImage = imageFileName;
				authUser.setProfileImage(profileImage);
			}

//			memberService.modifyMemberProfileImage(authUser);

			authUser.setProfileImage(profileImage);
			session.setAttribute("authUser", authUser);

			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(image_path + "\\" + "profile" + "\\" + authUser.getMemberId());
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					System.out.println("경로" + destDir);
				}
			}

		}
		// (imageFileList가 null, size가 0이 아닐 경우)까지 왔을 경우 : > delete : temp에 있는 이미지 +
		// s_이미지까지 전부
		catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}

		return "success";
	}

}
