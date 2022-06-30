package com.tomorrowHome.common.controller;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tomorrowHome.common.service.MailSendService;
import com.tomorrowHome.member.dto.MemberDTO;

@Controller
@RequestMapping("/email/*")
public class EmailController {

	@Autowired
	private MailSendService mailSendService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	//인증메일 전송
	@PostMapping("/auth")
	@ResponseBody
	public String emailAuth(MemberDTO memberDTO, HttpSession session) {
		//메일 전송
		String email = memberDTO.getEmail1() + "@" + memberDTO.getEmail2();
		String authKey = mailSendService.sendAuthMail(email);
		System.out.println("authKey>>>>>>>>" + authKey);
		
		//인증키 암호화 해서 세션에 붙임
		String encodedAuthKey = bcryptPasswordEncoder.encode(authKey);
		System.out.println("encodedAuthKey>>>>>>>>>>>" + encodedAuthKey);
		session.setAttribute("authKey", encodedAuthKey);
				
		deleteSessionAfterTenMinutes(session);
		
		return "success";
	}
	
	static ExecutorService executorService = Executors.newFixedThreadPool(5);

	//10분 뒤에 세션삭제 
    public void deleteSessionAfterTenMinutes(HttpSession session){
        executorService.submit(new Runnable() {
            @Override
            public void run() {
            	System.out.println("deleteSession>>10분뒤 세션삭제됨~~");
        		try {
        			TimeUnit.MILLISECONDS.sleep(600000); //10분 슬립
        			session.invalidate(); //세션 삭제
        		} catch (InterruptedException e) {
        			e.printStackTrace();
        		}
            }            
        });
    }



    //입력받은 인증키와 세션에 있던 인증키가 동일한지 확인
	@PostMapping("/authMatch")
	@ResponseBody
	public String authMatch(@RequestParam("authNumber") String authNumber, HttpSession session) {
		if(bcryptPasswordEncoder.matches(authNumber, (String) session.getAttribute("authKey"))) {
			System.out.println("인증 성공");
			return "success";
		}else {
			System.out.println("인증번호 안맞음");
			return "fail";
		}

		
	}



	
}
