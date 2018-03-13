package com.doers.Service;

import com.doers.domain.Production;
import com.doers.domain.User;
import com.doers.utils.PageBean;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public  interface ProductionService
{
  public  PageBean getProductList(DetachedCriteria paramDetachedCriteria, Integer paramInteger1, Integer paramInteger2);

  public  void addNewProduction(Production paramproduction);

  public  Production getProductionById(String paramString);

  public  List<Production> getUserProductionList(User u);

  public List<Production> getAllProductions();

  public List<Production> getProductionsByBigkind(String bigkindId);

  public List<Production> getProductionsBySmallkind(String smallkindId);

	public List<Production> getTopCodeProductionList();
	
	public List<Production> getTopVideoProductionList();
	
	public List<Production> getTopOtherProductionList();
	
	public List<Production> getTopWordAndPicProductionList();

	public List<Production> getRelativeProductionsByWord(String word);

}