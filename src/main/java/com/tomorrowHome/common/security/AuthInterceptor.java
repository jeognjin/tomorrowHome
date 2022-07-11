package com.tomorrowHome.common.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.tomorrowHome.common.util.Auth;
import com.tomorrowHome.member.dto.AuthUserDTO;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 1. handler 종류 확인
		if (handler instanceof HandlerMethod == false) {
			// return true이면 Controller에 있는 메서드가 아니므로 컨트롤러로 진행
			return true;
		}

		// 2.형 변환
		HandlerMethod handlerMethod = (HandlerMethod) handler;

		// 3. @Auth 받아오기
		Auth auth = handlerMethod.getMethodAnnotation(Auth.class);

		// 4. method에 @Auth가 없는 경우. 인증이 필요 없는 요청
		if (auth == null) {
			return true;
		}

		// 5. @Auth가 있는 경우이므로 세션이 있는지 체크
		HttpSession session = request.getSession();
		if (session == null) {
			// 로그인 화면으로 이동
			response.sendRedirect(request.getContextPath() + "/member/loginForm");
			return false;
		}

		// 6. 세션이 존재하면 유효한 유저인지 확인
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		if (authUser == null) {
			response.sendRedirect(request.getContextPath() + "/member/loginForm");
			return false;
		}

		// 7. 접근허가. 메서드를 실행하도록 함
		return true;
	}
}