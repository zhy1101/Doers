package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.OrderDao;
import com.doers.Service.OrderService;
import com.doers.domain.Order;
import com.doers.domain.User;
@Transactional
public class OrderServiceImpl implements OrderService {
	
	private OrderDao orderDao;
	
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public List<Order> getBuyingListByUser(User u) {
		return orderDao.getBuyingListByUser(u);
	}

	@Override
	public void createAndStartTalk(Order o) {
		orderDao.save(o);
	}

	@Override
	public List<Order> getBuyingHistoryByUser(User u) {
		return orderDao.getBuyingHistoryByUser(u);
	}

	@Override
	public List<Order> getServeringHistoryByUser(User u) {
		return orderDao.getServeringHistoryByUser(u);
	}

	@Override
	public List<Order> getServeringListByUser(User u) {
		return orderDao.getServeringListByUser(u);
	}

	@Override
	public Order getOrderById(String orderId) {
		return orderDao.getById(orderId);
	}

}
