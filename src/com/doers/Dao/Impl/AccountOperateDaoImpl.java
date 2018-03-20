package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.AccountOperateDao;
import com.doers.domain.Account;
import com.doers.domain.AccountOperate;

public class AccountOperateDaoImpl extends BaseDaoImpl<AccountOperate> implements AccountOperateDao {

	@Override
	public List<AccountOperate> get5AccountOperateByAccount(Account account ) {
		String hqiString ="from AccountOperate where account.account_id=? order by operate_id desc";
		getHibernateTemplate().setMaxResults(5);
		List<AccountOperate> list = (List<AccountOperate>) getHibernateTemplate().find(hqiString, account.getAccount_id());
		getHibernateTemplate().setMaxResults(0);
		return list;
	}

	@Override
	public List<AccountOperate> checkAllOperate(Account a) {
		String hqiString ="from AccountOperate where account.account_id=? order by operate_id desc";
		return (List<AccountOperate>) getHibernateTemplate().find(hqiString, a.getAccount_id());
	}

}
