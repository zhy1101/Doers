package com.doers.Dao.Impl;

import com.doers.Dao.ZanDao;
import com.doers.domain.Zan;

public class ZanDaoImpl  extends BaseDaoImpl<Zan> implements ZanDao {

	@Override
	public Zan findZanByCondition(long uid, long pid) {
		String hqlString = "from Zan where zan_pro.productionId=? and zan_user.uid=?";
		return (Zan) this.getHibernateTemplate().find(hqlString,pid,uid);
	}

}
