package com.doers.Service.Impl;

import com.doers.Dao.ProductionDao;
import com.doers.domain.Production;
import com.doers.domain.User;
import com.doers.Service.ProductionService;
import com.doers.utils.PageBean;
import java.util.List;
import java.util.Set;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
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
    this.productionDao.addNewProduction(p);
  }

  public Production getProductionById(String id)
  {
    return (Production)this.productionDao.getById(Long.valueOf(id));
  }

	@Override
	public List<Production> getUserProductionList(User u) {
		return productionDao.getUserProductionList(u);
	}

	@Override
	public List<Production> getAllProductions() {
		return productionDao.getAllProductions();
	}

	@Override
	public List<Production> getProductionsByBigkind(String bigkindId) {
		return productionDao.getProductionsByBigkind(bigkindId);
	}

	@Override
	public List<Production> getProductionsBySmallkind(String smallkindId) {
		return productionDao.getProductionsBySmallkind(smallkindId);
	}

	@Override
	public List<Production> getTopCodeProductionList() {
		return productionDao.getTopCodeProductionList();
	}

	@Override
	public List<Production> getTopVideoProductionList() {
		return productionDao.getTopVideoProductionList();
	}

	@Override
	public List<Production> getTopOtherProductionList() {
		return productionDao.getTopOtherProductionList();
	}

	@Override
	public List<Production> getTopWordAndPicProductionList() {
		return productionDao.getTopWordAndPicProductionList();
	}

	@Override
	public List<Production> getRelativeProductionsByWord(String word) {
		return productionDao.getRelativeProductionsByWord(word);
	}

	@Override
	public void deleteProById(Long pid) {
		productionDao.delete(pid);
	}
}
