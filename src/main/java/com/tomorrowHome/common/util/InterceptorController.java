package com.tomorrowHome.common.util;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.service.MemberService;

@Controller
public class InterceptorController {

	@Autowired
	private MemberService memberService;
	
	@Auth
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modify(HttpSession session, Model model) {
		AuthUserDTO authUser = (AuthUserDTO)session.getAttribute("authUser");
		authUser = memberService.getMemberInfo(authUser.getMemberId());
		
		model.addAttribute("authUser", authUser);
		if( authUser == null ) {
			return "redirect:index";
		}
		
		return "index";
	}
}
