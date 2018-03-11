package com.doers.Dao;

import java.util.List;

import com.doers.domain.Cart;
import com.doers.domain.Server;
import com.doers.domain.User;

public interface CartDao extends BaseDao<Cart>{

	List<Server> getCartsByUser(User user);

}
