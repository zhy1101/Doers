package com.doers.Dao.Impl;

import java.util.List;

import com.doers.Dao.BaseDao;
import com.doers.Dao.ServerDao;
import com.doers.domain.Production;
import com.doers.domain.Server;
import com.doers.domain.User;

public class ServerDaoImpl extends BaseDaoImpl<Server> implements ServerDao{

	@Override
	public List<Server> getServersByUser(User u) {
		String hqlString = "from Server where user.uid=?";
		return (List<Server>) getHibernateTemplate().find(hqlString, u.getUid());	
	}
	

}
