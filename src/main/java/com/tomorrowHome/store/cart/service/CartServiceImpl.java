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
	
	@Override
	public List<CartDTO> getCartList(String memberId) {

		List<CartDTO> cart = cartMapper.getCart(memberId);

		return cart;

	}

	@Override
	public int modifyCount(CartDTO cart) {

		return cartMapper.modifyCount(cart);
	}

	@Override
	public int deleteCart(int cartId) {

		return cartMapper.deleteCart(cartId);
	}

	@Override
	public List<CartDTO> goodsCartList() {

		return null;
	}


}