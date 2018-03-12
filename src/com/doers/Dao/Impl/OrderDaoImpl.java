package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.OrderDao;
import com.doers.domain.Order;
import com.doers.domain.User;

public class OrderDaoImpl extends BaseDaoImpl<Order> implements OrderDao {
	@Override
	public List<Order> getBuyingListByUser(User u) {
		String hqlString = "from Order where customerUser.uid=?";
		return (List<Order>) getHibernateTemplate().find(hqlString, u.getUid());
	}

}
