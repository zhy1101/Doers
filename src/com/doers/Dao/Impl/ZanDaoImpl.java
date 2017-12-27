package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import com.doers.Dao.ZanDao;
import com.doers.domain.Production;
import com.doers.domain.User;
import com.doers.domain.Zan;

public class ZanDaoImpl  extends BaseDaoImpl<Zan> implements ZanDao {

	@Override
	public Zan findZanByCondition(Long uid, Long pid) throws Exception {		
		String hqlString = "from Zan where zan_pro.productionId=? and zan_user.uid=?";
		List<Zan> find = (List<Zan>) this.getHibernateTemplate().find(hqlString,new Long[]{pid,uid});
		return find.get(0);		
	}

	@Override
	public List<Production> getMyZanPro(User u) {
		String hqlString = "from Production p inner join fetch p.zanlist z where z.zan_user.uid=?";
		List<Production> find = (List<Production>) this.getHibernateTemplate().find(hqlString,u.getUid());
		return find;
	}

}
