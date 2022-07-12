package com.tomorrowHome.mapper;

import java.sql.SQLException;
import java.util.List;

import com.tomorrowHome.store.cart.dto.CartDTO;

public interface CartMapper {

	/* 카트 추가 */
	public int addCart(CartDTO cart) throws Exception;
	public int guestAddCart(CartDTO cart) throws Exception;
	/* 카트 삭제 */
	public int deleteCart(int cartId);
	
	/* 카트 수량 수정 */
	public int modifyCount(CartDTO cart);
	
	/* 카트 목록 */
	public List<CartDTO> getCart(String memberId);	
	
	/* 카트 확인 */
	public int checkCart(CartDTO cart);		
	public int guestCheckCart(CartDTO cart);		
	
	/* 카트 제거(주문) */
	public int deleteOrderCart(CartDTO dto);

		
	
}