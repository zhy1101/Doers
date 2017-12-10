package com.doers.Service.Impl;

import com.doers.Dao.ProductionDao;
import com.doers.domain.Production;
import com.doers.domain.User;
import com.doers.Service.ProductionService;
import com.doers.utils.PageBean;
import java.util.List;
import java.util.Set;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class ProductionServiceImpl implements ProductionService
{
  private ProductionDao productionDao;

  public void setProductionDao(ProductionDao productionDao)
  {
    this.productionDao = productionDao;
  }

  public PageBean getProductList(DetachedCriteria dc, Integer currentPage, Integer pageSize)
  {
    Integer totalCount = this.productionDao.getTotalCount(dc);
    PageBean pb = new PageBean(currentPage, totalCount, pageSize);
    List list = this.productionDao.getPageList(dc, Integer.valueOf(pb.getStart()), pb.getPageSize());
    pb.setList(list);
    return pb;
  }

  public void addNewProduction(Production p)
  {
    p.getUser().getProductions().add(p);
    this.productionDao.addNewProduction(p);
  }

  public Production getProductionById(String id)
  {
    return (Production)this.productionDao.getById(Long.valueOf(id));
  }

@Override
public List<Production> getUserProductionList(User u) {
	// TODO Auto-generated method stub
	return null;
}
}
