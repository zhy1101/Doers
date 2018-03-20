package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.ContractDao;
import com.doers.domain.Contract;
import com.doers.domain.Order;

import javafx.util.converter.ShortStringConverter;

public class ContractDaoImpl extends BaseDaoImpl<Contract> implements ContractDao {

	@Override
	public Contract getContractByOrder(Order order) {
		String hql = "from Contract where belongToOder.orderId = ?";
		return (Contract) (getHibernateTemplate().find(hql, order.getOrderId())).get(0);
	}


}
