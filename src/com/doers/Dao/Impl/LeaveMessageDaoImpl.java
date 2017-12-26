package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.LeaveMessageDao;
import com.doers.domain.LeaveMessage;
import com.doers.domain.User;

public class LeaveMessageDaoImpl extends BaseDaoImpl<LeaveMessage> implements LeaveMessageDao {

	@Override
	public List<LeaveMessage> getMsgByUser(User u) {
		String hqlString ="from LeaveMessage where toUser.uid=?";
		return (List<LeaveMessage>) getHibernateTemplate().find(hqlString, u.getUid());
	}
}
