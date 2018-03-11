package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.AccountDao;
import com.doers.domain.Account;
import com.doers.domain.User;

public class AccountDaoImpl extends BaseDaoImpl<Account> implements AccountDao {

	@Override
	public Account getAccountByUser(User user) {
		String hqlString="from Account where account_user_id=?";
		return (Account) getHibernateTemplate().find(hqlString, user.getUid()).get(0);
	}


}
