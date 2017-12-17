package com.doers.Action;
import com.doers.domain.BaseDict;
import com.doers.domain.Production;
import com.doers.Service.BaseDictService;
import com.doers.Service.ProductionService;
import com.doers.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.omg.CORBA.PUBLIC_MEMBER;

public class ProductionListAction extends ActionSupport
{
  private Production production;
  private String bigkindId;
  private String smallkindId;
  private ProductionService productionService;
  private Integer currentPage;
  private Integer pageSize;
  private BaseDictService baseDictService;

  public Production getProduction()
  {
    return this.production;
  }
  
  public void setBaseDictService(BaseDictService baseDictService) {
	this.baseDictService = baseDictService;
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

  public void setProductionService(ProductionService productService) {
    this.productionService = productService;
  }
	  public String getBigkindId() {
		return bigkindId;
	}
	
	public void setBigkindId(String bigkindId) {
		this.bigkindId = bigkindId;
	}
	public String getSmallkindId() {
		return smallkindId;
	}

	public void setSmallkindId(String smallkindId) {
		this.smallkindId = smallkindId;
	}

public String list() throws Exception {
    DetachedCriteria dc = DetachedCriteria.forClass(Production.class);
    if (StringUtils.isNotBlank(this.production.getProductionTitle())) {
      dc.add(Restrictions.like("productionTitle", "%" + this.production.getProductionTitle() + "%"));
    }

    PageBean pb = this.productionService.getProductList(dc, this.currentPage, this.pageSize);
    ActionContext.getContext().put("ProductList", pb);
    return "list";
  }

  public Integer getPageSize() {
    return this.pageSize;
  }

  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }
  public String getAllProductions(){
	  List<Production> productionList = productionService.getAllProductions();
	  ActionContext.getContext().put("productionList", productionList);
	  this.loadDropDownList();
	  return "toListPage";
  }
  public String getProductionsByBigkind(){
	  List<Production> productionList = productionService.getProductionsByBigkind(bigkindId);
	  ActionContext.getContext().put("productionList", productionList);
	  this.loadDropDownList();
	  return "toListPage";
  }
  public String getProductionsBySmallkind(){
	  List<Production> productionList = productionService.getProductionsBySmallkind(smallkindId);
	  ActionContext.getContext().put("productionList", productionList);
	  this.loadDropDownList();
	  return "toListPage";
  }
  public void loadDropDownList(){
	  List<BaseDict> CodeSmallKindList=baseDictService.getListByTypeCode("003");
	  ActionContext.getContext().put("CodeSmallKindList", CodeSmallKindList);
	  List<BaseDict> VideoSmallKindList=baseDictService.getListByTypeCode("004");
	  ActionContext.getContext().put("VideoSmallKindList", VideoSmallKindList);
	  List<BaseDict> WordSmallKindList=baseDictService.getListByTypeCode("005");
	  ActionContext.getContext().put("WordSmallKindList", WordSmallKindList);
	  List<BaseDict> PicSmallKindList=baseDictService.getListByTypeCode("006");
	  ActionContext.getContext().put("PicSmallKindList", PicSmallKindList);
	  List<BaseDict> OtherSmallKindList =baseDictService.getListByTypeCode("007");
	  ActionContext.getContext().put("OtherSmallKindList", OtherSmallKindList );
  }
}
