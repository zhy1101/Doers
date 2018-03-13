package com.doers.Dao;

import java.util.List;

import com.doers.domain.Account;
import com.doers.domain.AccountOperate;

public interface AccountOperateDao extends BaseDao<AccountOperate> {

	List<AccountOperate> get5AccountOperateByAccount(Account a);

	List<AccountOperate> checkAllOperate(Account a);

}
