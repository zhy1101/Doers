package com.doers.Action;

import java.util.List;

import com.doers.Service.ProductionService;
import com.doers.domain.Production;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoadMainPageAction extends ActionSupport {
	private ProductionService productionService;

	public void setProductionService(ProductionService productionService) {
		this.productionService = productionService;
	}
	public String loadIndexPage(){
		List<Production> topCodeProductionList = productionService.getTopCodeProductionList();
		ActionContext.getContext().put("topCodeProductionList",topCodeProductionList);
		List<Production> topVideoProductionList = productionService.getTopVideoProductionList();
		ActionContext.getContext().put("topVideoProductionList",topVideoProductionList);
		List<Production> topOtherProductionList = productionService.getTopOtherProductionList();
		ActionContext.getContext().put("topOtherProductionList",topOtherProductionList);
		List<Production> topWordAndPicProductionList = productionService.getTopWordAndPicProductionList();
		ActionContext.getContext().put("topWordAndPicProductionList",topWordAndPicProductionList);
		return "gotoIndexPage";
	}
}
