package com.doers.Service.Impl;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.AccountDao;
import com.doers.Dao.AccountOperateDao;
import com.doers.Service.AccountService;
import com.doers.domain.Account;
import com.doers.domain.User;
@Transactional
public class AccountServiceImpl implements AccountService {
	private AccountDao accountDao;
	private AccountOperateDao accountOperateDao;
	
	
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}


	public void setAccountOperateDao(AccountOperateDao accountOperateDao) {
		this.accountOperateDao = accountOperateDao;
	}


	@Override
	public Account getAccountByUser(User user) {
		return accountDao.getAccountByUser(user);
	}

}
