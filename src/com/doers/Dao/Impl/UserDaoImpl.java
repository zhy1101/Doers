package com.doers.Dao.Impl;

import com.doers.Dao.BaseDao;
import com.doers.Dao.UserDao;
import com.doers.domain.Production;
import com.doers.domain.User;
import java.io.Serializable;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao
{
  public boolean saveUser(User u)
  {
    Serializable result = getHibernateTemplate().save(u);
    Long integer = (Long)result;
    return integer.longValue() > 0L;
  }

  public void active(String activeCode)
  {
    String hql = "from com.doers.domain.User u where u.activeCode= ?";
    List list = getHibernateTemplate().find(hql, new Object[] { activeCode });
    if ((list != null) && (list.size() != 0)) {
      ((User)list.get(0)).setStatue(1);
    }
    getHibernateTemplate().save(list.get(0));
  }

  public boolean findUsername(String username)
  {
    String hql = "from User where user_name = ?";
    List list = getHibernateTemplate().find(hql,username);
    if ((list != null) && (list.size() > 0)) {
      return true;
    }
    return false;
  }
	@Override
	public boolean checkEmail(String e_mail) {
	String hql = "from User where email = ? and statue=1";
		    List list = getHibernateTemplate().find(hql,e_mail);
		    if ((list != null) && (list.size() > 0)) {
		      return true;
		    }
		    return false;
	}

	@Override
	public User getUserByUserName(String user_name) {
		String hql = "from User where user_name = ? ";
	    List list = getHibernateTemplate().find(hql,user_name);
	    if ((list != null) && (list.size() > 0)) {
	      return (User) list.get(0);
	    }
	    return null;
	}

	@Override
	public void updateByCondition(String caddress, String cbirthday, String cweiChat, String cQQ, String cskill,
			String cdescription, Long uid) {
		User user = getHibernateTemplate().get(User.class,uid);
		user.setAddress(caddress);
		user.setBirthday(cbirthday);
		user.setDescription(cdescription);
		user.setQQ(cQQ);
		user.setSkill(cskill);
		user.setWeiChat(cweiChat);
		user.setUid(uid);
		getHibernateTemplate().update(user);	
	}

	@Override
	public void updatePersonImg(String urlString, Long uid) {
		User user = getHibernateTemplate().get(User.class,uid);
		user.setPersonImg_path(urlString);
		getHibernateTemplate().update(user);		
	}

	@Override
	public List<User> getRelativeUsersByWord(String word) {
		String hqiString = "from User where user_name like? or skill like ?";
		return (List<User>) getHibernateTemplate().find(hqiString,"%" + word + "%","%" + word + "%");
	}

	@Override
	public List<User> getFourtopUserList() {
		String hqlString = "from User ";
		getHibernateTemplate().setMaxResults(4);
		List<User> list = (List<User>) getHibernateTemplate().find(hqlString);
		getHibernateTemplate().setMaxResults(0);
		return list;
	}
}