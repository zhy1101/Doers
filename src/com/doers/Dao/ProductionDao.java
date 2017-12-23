package com.doers.Dao;

import java.util.List;

import com.doers.domain.Production;

public  interface ProductionDao extends BaseDao<Production>
{
  public  void addNewProduction(Production paramproduction);

  public  List<Production> getAllProductions();

  public List<Production> getProductionsByBigkind(String bigkindId);

  public List<Production> getProductionsBySmallkind(String smallkindId);

	public List<Production> getTopCodeProductionList();
	
	public List<Production> getTopVideoProductionList();
	
	public List<Production> getTopOtherProductionList();
	
	public List<Production> getTopWordAndPicProductionList();
}