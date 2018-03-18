package com.doers.Dao.Impl;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

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
		String hqlString="from Cart c where c.cart_user.uid=? and c.cart_item.serverId=?";
		Cart cart = (Cart) getHibernateTemplate().find(hqlString, user.getUid(),serverId).get(0);
		getHibernateTemplate().delete(cart);
		
	}



}
