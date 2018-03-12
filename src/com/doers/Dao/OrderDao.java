package com.doers.Dao;

import java.util.List;

import com.doers.domain.Order;
import com.doers.domain.User;

public interface OrderDao extends BaseDao<Order> {

	List<Order> getBuyingListByUser(User u);

	List<Order> getBuyingHistoryByUser(User u);

	List<Order> getServeringHistoryByUser(User u);

}
