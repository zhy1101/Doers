package com.doers.Service;

import com.doers.domain.Account;
import com.doers.domain.AccountOperate;
import com.doers.domain.User;

public interface AccountService {

	Account getAccountByUser(User user);

	void addAccountOperate(AccountOperate aOperate);

}
