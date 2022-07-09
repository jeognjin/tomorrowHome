package com.tomorrowHome.store.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tomorrowHome.store.cart.dto.CartDTO;
import com.tomorrowHome.store.cart.service.CartService;
import com.tomorrowHome.store.product.controller.ProductController;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CartController {
	
	@Autowired
	private CartService cartService;

	
	/* 장바구니 추가 */
	/**
	 * 0: 등록 실패
	 * 1: 등록 성공
	 * 2: 등록된 데이터 존재
	 * 5: 로그인 필요
	 * 
	 */
	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(CartDTO cart, HttpServletRequest request) {
		// 로그인 체크
		HttpSession session = request.getSession();
		/*
		 * MemberDTO mvo = (MemberDTO)session.getAttribute("member"); if(mvo == null) {
		 * return "5"; }
		 */
		// 카트 등록
		
		int result = cartService.addCart(cart);
		
		return result + "";
	}	
	
	/* 장바구니 페이지 이동 */	
	@GetMapping("/cart/{memberId}")
	public String cartPageGET(@PathVariable("memberId") String memberId, Model model) {
		
		model.addAttribute("cartInfo", cartService.getCartList(memberId));
		
		return "/cart";
	}	
	
	/* 장바구니 수량 수정 */
	@PostMapping("/cart/update")
	public String updateCartPOST(CartDTO cart) {
		
		cartService.modifyCount(cart);
		
		return "redirect:/cart/" + cart.getMemberId();
		
	}	
	
	/* 장바구니 수량 수정 */
	@PostMapping("/cart/delete")
	public String deleteCartPOST(CartDTO cart) {
		
		cartService.deleteCart(cart.getCartId());
		
		return "redirect:/cart/" + cart.getMemberId();
		
	}		
	
}