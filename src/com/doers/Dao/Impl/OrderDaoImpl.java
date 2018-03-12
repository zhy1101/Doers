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
		String hqlString = "from Order where customerUser.uid=? and orderState.dict_id > 49 and and orderState.dict_id != 62 ";
		return (List<Order>) getHibernateTemplate().find(hqlString, u.getUid());
	}

	@Override
	public List<Order> getBuyingHistoryByUser(User u) {
		String hqlString="from Order where customerUser.uid=? and orderState.dict_id=?";
		return (List<Order>) getHibernateTemplate().find(hqlString, u.getUid(),"62");
	}

	@Override
	public List<Order> getServeringHistoryByUser(User u) {
		String hqlString="from Order where serverUser.uid=? and orderState.dict_id=?";
		return (List<Order>) getHibernateTemplate().find(hqlString, u.getUid(),"62");
	}

	@Override
	public List<Order> getServeringListByUser(User u) {
		String hqlString = "from Order where serverUser.uid=? and orderState.dict_id > 49 and and orderState.dict_id != 62 ";
		return (List<Order>) getHibernateTemplate().find(hqlString, u.getUid());
	}

}
