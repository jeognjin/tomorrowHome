package com.tomorrowHome.store.order.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.mapper.OrderMapper;
import com.tomorrowHome.store.order.dto.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public void addOrder(OrderDTO order) throws SQLException {
		orderMapper.insertOrder(order);
	}

}
