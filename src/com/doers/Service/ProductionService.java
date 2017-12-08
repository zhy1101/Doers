package com.doers.Service;

import com.doers.domain.Production;
import com.doers.utils.PageBean;
import org.hibernate.criterion.DetachedCriteria;

public abstract interface ProductionService
{
  public abstract PageBean getProductList(DetachedCriteria paramDetachedCriteria, Integer paramInteger1, Integer paramInteger2);

  public abstract void addNewProduction(production paramproduction);

  public abstract Production getProductionById(String paramString);
}