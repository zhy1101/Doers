package com.doers.Dao;

import java.io.Serializable;
import java.util.List;
import org.hibernate.criterion.DetachedCriteria;

public  interface BaseDao<T>
{
  public  void save(T paramT);
  
  public  void saveOrUpdate(T t);

  public  void delete(T paramT);

  public void delete(Serializable paramSerializable);

  public void update(T paramT);

  public T getById(Serializable paramSerializable);

  public  Integer getTotalCount(DetachedCriteria paramDetachedCriteria);

  public  List<T> getPageList(DetachedCriteria paramDetachedCriteria, Integer paramInteger1, Integer paramInteger2);
}
