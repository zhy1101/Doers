package com.doers.Dao.Impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.catalina.Session;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.orm.hibernate5.HibernateCallback;

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

	@Override
	public int getCount() {
		String hql ="select count(*) from Server ";
		return ((Long) getHibernateTemplate().iterate(hql).next()).intValue();
	}

	@Override
	public List<Server> findProductByPage(int index, int currentCount) throws HibernateException, SQLException{
			  final String hql = "from Server ";
			  return  (List<Server>) this.getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(org.hibernate.Session arg0) throws HibernateException {
				final Query query =  arg0.createQuery(hql);
			    query.setMaxResults(currentCount);
			    query.setFirstResult(index);    
			    return query.list();
			}
			  });
			 }

	@Override
	public List<Server> getServerByWord(String serWord) {
		String hqiString = "from Server where serverName like? or serverDescribtion like ?";
		return (List<Server>) getHibernateTemplate().find(hqiString,"%" + serWord + "%","%" + serWord + "%");
	}

	@Override
	public int getCountByWord(String serWord) {
		String hql ="select count(*) from Server where serverName like? or serverDescribtion like ?";
		return ((Long) getHibernateTemplate().iterate(hql,"%" + serWord + "%","%" + serWord + "%").next()).intValue();
	}

	@Override
	public List<Server> findProductByPageAndWord(int index, int currentCount, String serWord)  throws HibernateException, SQLException{
		  final String hql = "from Server where serverName like? or serverDescribtion like ?";
		  return  (List<Server>) this.getHibernateTemplate().execute(new HibernateCallback() {
		@Override
		public Object doInHibernate(org.hibernate.Session arg0) throws HibernateException {
			final Query query =  arg0.createQuery(hql);
			query.setParameter(0, serWord);
			query.setParameter(1, serWord);
		    query.setMaxResults(currentCount);
		    query.setFirstResult(index);    
		    return query.list();
		}
		  });
		 }

}
