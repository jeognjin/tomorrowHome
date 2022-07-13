package com.tomorrowHome.store.cart.controller;

import java.sql.SQLException;
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
	@GetMapping("/cart/{memberId}")
	public String cartPageGET(@PathVariable(required = false) String memberId, Model model, 
			HttpServletRequest request) {
		
		if(memberId == null) {
			Cookie cookie = WebUtils.getCookie(request, "cartCookie");
			if(cookie == null) {
				model.addAttribute("cart", null);
			}else {
				String cookieValue = cookie.getValue();
				List<CartDTO> cartDTOs = cartService.getCartList(cookieValue);
				System.out.println("cartDTOs >>>>>> "+ cartDTOs);
			}
		}
		
	
		//장바구니에 상품이 있는지 확인
		//int count = cartService.cartGoodsQty(ProductDTO.getcartGoodsQty);
//		if(count == 0) {//장바구니 상품이 없으면
//			return "store/cartEmpty";
//		}
		
		return "store/cartList";
	}

	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(@RequestBody CartDTO cart, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		System.out.println("cart >>>>>>>> " + cart);
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
				int result = cartService.addCart(cart);
				if (result == 2) {
					message = "already_registered";
				} else {
					message = "success";
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return message;
	}

	/* 장바구니 수량 수정 */
	@PostMapping("/cart/update")
	public String updateCartPOST(CartDTO cart) {

		cartService.modifyCount(cart);

		return "redirect:/cart/" + cart.getMemberId();

	}

	/* 장바구니 수량 삭제 */
	@PostMapping("/cart/delete")
	public String deleteCartPOST(CartDTO cart) {

		cartService.deleteCart(cart.getCartId());

		return "redirect:/cart/" + cart.getMemberId();

	}

}