package com.doers.Action;

import java.util.List;

import com.doers.Service.ProductionService;
import com.doers.domain.Production;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ServerConnectProductionAction extends ActionSupport {
	private ProductionService productionService;
	
	
	public void setProductionService(ProductionService productionService) {
		this.productionService = productionService;
	}


	public String  loadingPro(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		String server_id= (String) ActionContext.getContext().get("server_id");
		List<Production> userProList = productionService.getUserProductionList(u);
		ActionContext.getContext().put("userProList", userProList);
		ActionContext.getContext().put("server_id", server_id);
		return "gotoConnect";
	}
	public void addActionError(String anErrorMessage) {
	    String s = anErrorMessage;
	    System.out.println(s);
	  }
	  public void addActionMessage(String aMessage) {
	    String s = aMessage;
	    System.out.println(s);
	  }

	  public void addFieldError(String fieldName, String errorMessage) {
	    String s = errorMessage;
	    String f = fieldName;
	    System.out.println(s);
	    System.out.println(f);
	  }

}
