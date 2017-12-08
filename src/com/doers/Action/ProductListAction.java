package com.doers.Action;
import com.doers.domain.Production;
import com.doers.Service.ProductionService;
import com.doers.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

public class ProductListAction extends ActionSupport
{
  private Production production;
  private ProductionService productService;
  private Integer currentPage;
  private Integer pageSize;

  public Production getProduction()
  {
    return this.production;
  }

  public void setProduction(Production production) {
    this.production = production;
  }
  public Integer getCurrentPage() {
    return this.currentPage;
  }

  public void setCurrentPage(Integer currentPage) {
    this.currentPage = currentPage;
  }

  public void setProductService(ProductionService productService) {
    this.productService = productService;
  }

  public String list() throws Exception {
    DetachedCriteria dc = DetachedCriteria.forClass(Production.class);
    if (StringUtils.isNotBlank(this.production.getProductionTitle())) {
      dc.add(Restrictions.like("productionTitle", "%" + this.production.getProductionTitle() + "%"));
    }

    PageBean pb = this.productService.getProductList(dc, this.currentPage, this.pageSize);
    ActionContext.getContext().put("ProductList", pb);
    return "list";
  }

  public Integer getPageSize() {
    return this.pageSize;
  }

  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }
}
