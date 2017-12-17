package com.doers.Dao.Impl;

import java.util.List;

import com.doers.Dao.ProductionDao;
import com.doers.domain.Production;

public class ProductionDaoImpl extends BaseDaoImpl<Production> implements ProductionDao
{
  public void addNewProduction(Production p)
  {
    super.save(p);
  }

	@Override
	public List<Production> getAllProductions() {
		String hqlString = "from Production";
		return (List<Production>) getHibernateTemplate().find(hqlString);
	}

	@Override
	public List<Production> getProductionsByBigkind(String bigkindId) {
		String hqlString = "from Production where big_kind.dict_id=?";
		return (List<Production>) getHibernateTemplate().find(hqlString,bigkindId);
	}
}
