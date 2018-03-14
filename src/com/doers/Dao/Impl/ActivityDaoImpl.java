package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.HibernateCallback;

import com.doers.Dao.ActivityDao;
import com.doers.domain.Activity;
import com.doers.domain.Production;
import com.doers.domain.Server;
import com.doers.domain.User;

public class ActivityDaoImpl extends BaseDaoImpl<Activity> implements ActivityDao {

	@Override
	public List<Activity> loadingActivityCenter() {
		  final String hql = "from Activity";
		  return  (List<Activity>) this.getHibernateTemplate().execute(new HibernateCallback() {
		@Override
		public Object doInHibernate(org.hibernate.Session arg0) throws HibernateException {
			final Query query =  arg0.createQuery(hql);
		    query.setFirstResult(3);    
		    return query.list();
		}
		  });
	}

	@Override
	public List<Activity> loadingCompetActivity() {
		final String hql = "from Activity where activityType.dict_id =55";
		  return  (List<Activity>) this.getHibernateTemplate().execute(new HibernateCallback() {
		@Override
		public Object doInHibernate(org.hibernate.Session arg0) throws HibernateException {
			final Query query =  arg0.createQuery(hql);
		    query.setFirstResult(3);    
		    query.setMaxResults(4);
		    return query.list();
		}
		  });
	}

	@Override
	public List<Activity> loadingClassActivity() {
		final String hql = "from Activity where activityType.dict_id =57";
		  return  (List<Activity>) this.getHibernateTemplate().execute(new HibernateCallback() {
		@Override
		public Object doInHibernate(org.hibernate.Session arg0) throws HibernateException {
			final Query query =  arg0.createQuery(hql);
		    query.setFirstResult(0);    
		    query.setMaxResults(4);
		    return query.list();
		}
		  });
	}
	public List<Activity> getActivityByUser(User u){
		String hqlString = "from Activity p inner join fetch p.activity_User_con z where z.user.uid=?";
		List<Activity> find = (List<Activity>) this.getHibernateTemplate().find(hqlString,u.getUid());
		return find;
		
	}


}
