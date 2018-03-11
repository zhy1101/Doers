package com.doers.Service;


import java.util.List;

import com.doers.domain.Account;
import com.doers.domain.AccountOperate;
import com.doers.domain.Cart;
import com.doers.domain.User;
import com.doers.domain.Server;

public interface AccountService {

	Account getAccountByUser(User user);

	void addAccountOperate(AccountOperate aOperate);

	void addInMyCart(Cart cart);

	List<Server> OpenMyCart(User user);

}
