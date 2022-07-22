package com.tomorrowHome.store.cart.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.mapper.CartMapper;
import com.tomorrowHome.mapper.ProductMapper;
import com.tomorrowHome.store.cart.dto.CartDTO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper cartMapper;

	
	/* 장바구니 페이지 이동 */
	@Override
	public List<CartDTO> goodsCartList() {

		return null;
	}
	
	/* 장바구니 추가 */
	@Override
	public int addCart(CartDTO cart) throws Exception {
		
		int result = cartMapper.checkCart(cart);
		
		if (result > 0 ) {
			return 2;
		}
		// 장바구니 등록 & 결과 반환
		return cartMapper.addCart(cart);
	}
	
	@Override
	public int guestAddCart(CartDTO cart) throws Exception {
		
		int result = cartMapper.guestCheckCart(cart);
		if (result > 0 ) {
			return 2;
		}
		return cartMapper.guestAddCart(cart);
	}

	/* 장바구니 정보 리스트 */
	@Override
	public List<CartDTO> getCartList(String cookieValue) {

		List<CartDTO> cart = cartMapper.selectGuestCartList(cookieValue);

		return cart;
	}
	
	@Override
	public List<CartDTO> getCartList(int memberId) {

		List<CartDTO> cart = cartMapper.selectMemberCartList(memberId);

		return cart;
	}

	
	/* 카트 삭제 */
	/*
	 * @Override public int deleteCart(int cartId) {
	 * 
	 * return cartMapper.deleteCart(cartId); }
	 */
	
	@Override
	public int memberDeleteCart(int cartId) {
		
		return cartMapper.memberDeleteCart(cartId);
	}

	@Override
	public int guestDeleteCart(int cartId) {
		
		return cartMapper.guestDeleteCart(cartId);
	}
	
	

	/* 카트 수량 수정 */
	
	@Override
	public int modifyGuestCartQuantity(CartDTO cart) {
		
		return cartMapper.updateGuestCartQuantity(cart);
	}

	@Override
	public int modifyMemberCartQuantity(CartDTO cart) {
		
		return cartMapper.updateMemberCartQuantity(cart);
	}

	

}