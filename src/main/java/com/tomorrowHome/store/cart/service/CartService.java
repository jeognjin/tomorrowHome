package com.tomorrowHome.store.cart.service;

import java.sql.SQLException;
import java.util.List;

import com.tomorrowHome.store.cart.dto.CartDTO;



public interface CartService {
	
	/* 장바구니 추가 */
	public int addCart(CartDTO cart) throws Exception;	
	public int guestAddCart(CartDTO cart) throws Exception;	
	
	/* 장바구니 정보 리스트 */
	public List<CartDTO> getCartList(String cookieValue);	
	public List<CartDTO> getCartList(int  memberId);	
	
	/* 카트 수량 수정 */
	public int modifyCount(CartDTO cart);		
	
	/* 카트 삭제 */
	public int deleteCart(int cartId);

	/* 장바구니 페이지 이동 */
	public List<CartDTO> goodsCartList();

	

}
