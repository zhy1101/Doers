package com.doers.Action;

import com.doers.domain.Production;
import com.doers.Service.ProductionService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

public class ProductionDetailAction extends ActionSupport
{
  private String productionId;
  private ProductionService productionService;

  public void setProductionService(ProductionService productionService)
  {
    this.productionService = productionService;
  }

  public String getProductionId() {
    return this.productionId;
  }

  public void setProductionId(String productionId) {
    this.productionId = productionId;
  }

  public String showProductionDetail() {
    Production p = this.productionService.getProductionById(this.productionId);
    ActionContext.getContext().put("production", p);
    return "gotoProductionDetail";
  }
}