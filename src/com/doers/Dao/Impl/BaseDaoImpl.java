package com.doers.Dao.Impl;

import com.doers.Dao.BaseDao;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T>
{
  private Class clazz;

  public BaseDaoImpl()
  {
    ParameterizedType ptClass = (ParameterizedType)getClass().getGenericSuperclass();

    this.clazz = ((Class)ptClass.getActualTypeArguments()[0]);
  }

  public void save(T t) {
    getHibernateTemplate().save(t);
  }

  public void delete(T t)
  {
    getHibernateTemplate().delete(t);
  }

  public void delete(Serializable id)
  {
    Object t = getById(id);
    getHibernateTemplate().delete(t);
  }

  public void update(T t)
  {
    getHibernateTemplate().update(t);
  }

  public T getById(Serializable id)
  {
    return (T) getHibernateTemplate().get(this.clazz, id);
  }

  public Integer getTotalCount(DetachedCriteria dc)
  {
    dc.setProjection(Projections.rowCount());
    List list = getHibernateTemplate().findByCriteria(dc);
    dc.setProjection(null);

    if ((list != null) && (list.size() > 0)) {
      Long count = (Long)list.get(0);
      return Integer.valueOf(count.intValue());
    }
    return null;
  }

  public List<T> getPageList(DetachedCriteria dc, Integer start, Integer pageSize)
  {
    List list = getHibernateTemplate().findByCriteria(dc, start.intValue(), pageSize.intValue());
    return list;
  }
  
  @Override
	public void saveOrUpdate(T t) {
		getHibernateTemplate().saveOrUpdate(t);
	}
}