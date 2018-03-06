package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.HibernateCallback;

import com.doers.Dao.ActivityDao;
import com.doers.domain.Activity;
import com.doers.domain.Server;

public class ActivityDaoImpl extends BaseDaoImpl<Activity> implements ActivityDao {

	@Override
	public List<Activity> loadingActivityCenter() {
		  final String hql = "from Activity ";
		  return  (List<Activity>) this.getHibernateTemplate().execute(new HibernateCallback() {
		@Override
		public Object doInHibernate(org.hibernate.Session arg0) throws HibernateException {
			final Query query =  arg0.createQuery(hql);
		    query.setFirstResult(3);    
		    return query.list();
		}
		  });
	}


}