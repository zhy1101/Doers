package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.CartDao;
import com.doers.domain.Cart;
import com.doers.domain.Server;
import com.doers.domain.User;

public class CartDaoImpl extends BaseDaoImpl<Cart> implements CartDao {

	@Override
	public List<Server> getCartsByUser(User user) {
		String hqlString="from Cart where cart_user.uid=?";
		return (List<Server>) getHibernateTemplate().find(hqlString, user.getUid());
	}

	@Override
	public void deleteInCartByServerId(User user, String serverId) {
		String hqlString="delete from Cart where cart_user.uid=? and cart_item.serverId=?";
		getHibernateTemplate().find(hqlString, user.getUid(),serverId);
		
	}



}
