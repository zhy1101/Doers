package com.doers.Action;

import com.doers.domain.Article;
import com.doers.domain.Production;
import com.doers.Service.ArticleService;
import com.doers.Service.ProductionService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

public class ProductionDetailAction extends ActionSupport
{
  private String productionId;
  private String articleId;
  private ProductionService productionService;
  private ArticleService articleService;
  

  public void setArticleService(ArticleService articleService) {
	this.articleService = articleService;
}
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
  

  public String getArticleId() {
	return articleId;
}
public void setArticleId(String articleId) {
	this.articleId = articleId;
}
public String showProductionDetail() {
    Production p = this.productionService.getProductionById(this.productionId);
    ActionContext.getContext().getSession().put("production", p);
    return "gotoProductionDetail";
  }
  
  public String showArticleDetail() {
	    Article art = this.articleService.getArticleById(this.articleId);
	    ActionContext.getContext().getSession().put("article", art);
	    return "gotoArticleDetail";
	  }
}