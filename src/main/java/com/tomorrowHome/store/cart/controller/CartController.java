package com.tomorrowHome.store.cart.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.store.cart.dto.CartDTO;
import com.tomorrowHome.store.cart.service.CartService;
import com.tomorrowHome.store.product.dto.ProductDTO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CartController {

	@Autowired
	private CartService cartService;

	/* 장바구니 페이지 이동 */
	@GetMapping("/cart")
	public String cartPageGET(Model model, HttpServletRequest request, HttpSession session) {
		List<CartDTO> cartList = new ArrayList<CartDTO>();
		AuthUserDTO userDTO = (AuthUserDTO) session.getAttribute("authUser");

		if (userDTO == null) {
			Cookie cookie = WebUtils.getCookie(request, "cartCookie");
			if (cookie == null) { // 비회원, 장바구니 이용 안 했을 때
				model.addAttribute("cartList", null);
			} else { // 비회원, 장바구니 이용
				String cookieValue = cookie.getValue();
				cartList = cartService.getCartList(cookieValue);
				System.out.println("cartList >>>>>> " + cartList);

			}
		} else {
			int memberId = userDTO.getMemberId();
			cartList = cartService.getCartList(memberId);
			System.out.println("cartList >>>>>> " + cartList);
		}

		model.addAttribute("cartList", cartList);

		return "store/cartList";
	}

	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(@RequestBody CartDTO cart, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		System.out.println("cart1 >>>>>>>> " + cart);
		String message = "";
		AuthUserDTO userDTO = (AuthUserDTO) session.getAttribute("authUser");
		Cookie cookie = WebUtils.getCookie(request, "cartCookie");

		try {
			// 비회원장바구니 첫 클릭시 쿠키생성
			if (cookie == null && userDTO == null) {
				String cookieValue = RandomStringUtils.random(6, true, true);
				Cookie cartCookie = new Cookie("cartCookie", cookieValue);
				cartCookie.setPath("/");
				cartCookie.setMaxAge(60 * 60 * 24 * 1);
				response.addCookie(cartCookie);
				cart.setCookieValue(cookieValue);

				int result = cartService.guestAddCart(cart);

				message = "success";

				// 비회원 장바구니 쿠키생성 후 상품추가
			} else if (cookie != null && userDTO == null) {

				String cookieValue = cookie.getValue();
				cart.setCookieValue(cookieValue);
				int result = cartService.guestAddCart(cart);

				if (result == 2) {
					message = "already_registered";
				} else {
					// 쿠키 시간 재설정해주기
					cookie.setPath("/");
					cookie.setMaxAge(60 * 60 * 24 * 1);
					response.addCookie(cookie);
					message = "success";
				}
				// 회원 장바구니 상품추가
			} else {
				cart.setMemberId(userDTO.getMemberId());
				System.out.println("cart2 >>>>>>>> " + cart);
				int result = cartService.addCart(cart);
				if (result == 2) {
					message = "already_registered";
				} else {
					message = "success";
				}
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return message;
	}

	/* 장바구니 수량 수정 */
	@PostMapping("/cart/update")
	@ResponseBody
	public String updateCartPOST(@RequestBody CartDTO cart, Model model, HttpServletRequest request,
			HttpSession session) {

		String message = "";
		System.out.println("cart >>>>>>>>>>>>>>> " + cart);
		AuthUserDTO userDTO = (AuthUserDTO) session.getAttribute("authUser");
		int result = 0;
		if (userDTO == null) { // 로그아웃 상태
			result = cartService.modifyGuestCartQuantity(cart);
		} else {
			result = cartService.modifyMemberCartQuantity(cart);
		}
		System.out.println("result >>>>>> " + result);
		if (result > 0) {
			message = "modify_success";
		} else {
			message = "modify_failed";
		}
		return message;

	}

	/* 장바구니 수량 삭제 */
	@GetMapping("/cart/delete")
	public String deleteCartPOST(@RequestParam("cartId") int cartId, Model model, HttpServletRequest request,
			HttpSession session) {

		String message = "";
		AuthUserDTO userDTO = (AuthUserDTO) session.getAttribute("authUser");
		int result = 0;
		if (userDTO != null) { // 로그인 상태
			result = cartService.memberDeleteCart(cartId);
			System.out.println("result >>>>>> " + result);
			int memberId = userDTO.getMemberId();
			System.out.println("delete >>> memberId >>>>>>>>>>>>>>> " + memberId);
		
		} else {
			result = cartService.guestDeleteCart(cartId);
			System.out.println("result >>>>>> " + result);
		}

		return "redirect:/cart";

	}

}