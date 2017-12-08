package com.doers.Dao;

import java.io.Serializable;
import java.util.List;
import org.hibernate.criterion.DetachedCriteria;

public abstract interface BaseDao<T>
{
  public abstract void save(T paramT);

  public abstract void delete(T paramT);

  public abstract void delete(Serializable paramSerializable);

  public abstract void update(T paramT);

  public abstract T getById(Serializable paramSerializable);

  public abstract Integer getTotalCount(DetachedCriteria paramDetachedCriteria);

  public abstract List<T> getPageList(DetachedCriteria paramDetachedCriteria, Integer paramInteger1, Integer paramInteger2);
}
