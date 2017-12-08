package com.doers.Dao.Impl;

import com.doers.Dao.ProductionDao;
import com.doers.domain.Production;

public class ProductionDaoImpl extends BaseDaoImpl<Production> implements ProductionDao
{
  public void addNewProduction(Production p)
  {
    super.save(p);
  }
}
