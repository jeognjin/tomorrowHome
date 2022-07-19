package com.tomorrowHome.store.order.service;

import java.sql.SQLException;

import com.tomorrowHome.store.order.dto.OrderDTO;

public interface OrderService {

	void addOrder(OrderDTO order) throws SQLException;

}
