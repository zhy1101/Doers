package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.Activity_UserDao;
import com.doers.domain.Activity_User;
import com.doers.domain.User;

public class Activity_UserDaoImpl extends BaseDaoImpl<Activity_User> implements Activity_UserDao {

	@Override
	public List<Activity_User> getActivityByUser(User user) {
		String hqlString = "from Activity_User where user.uid=?";
		return (List<Activity_User>) getHibernateTemplate().find(hqlString, user.getUid());
	}


}
