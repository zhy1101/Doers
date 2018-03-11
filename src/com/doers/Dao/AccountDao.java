package com.doers.Dao;

import com.doers.domain.Account;
import com.doers.domain.User;

public interface AccountDao extends BaseDao<Account> {

	Account getAccountByUser(User user);

}
