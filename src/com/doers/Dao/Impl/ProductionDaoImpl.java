package com.doers.Dao.Impl;

import java.util.List;
import java.util.PrimitiveIterator.OfDouble;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.jpa.criteria.expression.function.AggregationFunction.MAX;
import org.springframework.orm.hibernate5.HibernateCallback;

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

	@Override
	public List<Production> getProductionsBySmallkind(String smallkindId) {
		String hqlString = "from Production where small_kind.dict_id=?";
		return (List<Production>) getHibernateTemplate().find(hqlString,smallkindId);
	}

	@Override
	public List<Production> getTopCodeProductionList() {
		String hqlString = "from Production where big_kind.dict_id=4 order by zan desc ";
		getHibernateTemplate().setMaxResults(3);
		List<Production> list = (List<Production>) getHibernateTemplate().find(hqlString);
		getHibernateTemplate().setMaxResults(0);
		return list;
	}

	@Override
	public List<Production> getTopVideoProductionList() {
		String hqlString = "from Production where big_kind.dict_id=5 order by zan desc ";
		getHibernateTemplate().setMaxResults(3);
		List<Production> list = (List<Production>) getHibernateTemplate().find(hqlString);
		getHibernateTemplate().setMaxResults(0);
		return list;}

	@Override
	public List<Production> getTopOtherProductionList() {
		String hqlString = "from Production where big_kind.dict_id=8 order by zan desc ";
		getHibernateTemplate().setMaxResults(2);
		List<Production> list = (List<Production>) getHibernateTemplate().find(hqlString);
		getHibernateTemplate().setMaxResults(0);
		return list;
	}

	@Override
	public List<Production> getTopWordAndPicProductionList() {
		String hqlString = "from Production where big_kind.dict_id=6 or big_kind.dict_id=7 order by zan desc ";
		getHibernateTemplate().setMaxResults(4);
		List<Production> list = (List<Production>) getHibernateTemplate().find(hqlString);
		getHibernateTemplate().setMaxResults(0);
		return list;
	}
}
