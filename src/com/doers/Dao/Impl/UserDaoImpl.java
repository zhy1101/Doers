package com.doers.Dao.Impl;

import com.doers.Dao.UserDao;
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

  public Long findUsername(String username)
  {
    String hql = "from User where username = ?";
    List list = getHibernateTemplate().find(hql, new Object[] { username });
    if ((list != null) && (list.size() > 0)) {
      return Long.valueOf(-1L);
    }
    return Long.valueOf(1L);
  }

  public User getUserByUserName(final String user_name)
  {
   return null;//º«µ√÷ÿ–¥
  }
}