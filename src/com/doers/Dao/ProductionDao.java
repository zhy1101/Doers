package com.doers.Dao;

import com.doers.domain.Production;

public abstract interface ProductionDao extends BaseDao<Production>
{
  public abstract void addNewProduction(Production paramproduction);
}