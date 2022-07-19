package com.tomorrowHome.mapper;

import org.springframework.transaction.annotation.Transactional;

import com.tomorrowHome.store.order.dto.OrderDTO;

@Transactional
public interface OrderMapper {

	void insertOrder(OrderDTO order);

}
