package com.doers.Service;

import java.util.List;

import com.doers.domain.Order;
import com.doers.domain.User;

public interface OrderService {

	List<Order> getBuyingListByUser(User u);

	void createAndStartTalk(Order o);

	List<Order> getBuyingHistoryByUser(User u);

	List<Order> getServeringHistoryByUser(User u);

	List<Order> getServeringListByUser(User u);

	Order getOrderById(String orderId);

}
