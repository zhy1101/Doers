package com.doers.Action;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.List;

import com.doers.Service.ProductionService;
import com.doers.Service.ServerService;
import com.doers.domain.Production;
import com.doers.domain.Server;
import com.doers.domain.Server_production;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ServerConnectProductionAction extends ActionSupport {
	private ProductionService productionService;
	private ServerService serverService;
	private String[] no;
	private String server_id;
	
	public String[] getNo() {
		return no;
	}

	public void setNo(String[] no) {
		this.no = no;
	}

	public void setServerService(ServerService serverService) {
		this.serverService = serverService;
	}

	public String getServer_id() {
		return server_id;
	}

	public void setServer_id(String server_id) {
		this.server_id = server_id;
	}

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
	public String connectingPro(){
		Server server = serverService.findServiceById(server_id);
		for(int i=0;i<no.length;i++){
			Server_production server_production = new Server_production();
			server_production.setServer(server);
			Production production = productionService.getProductionById(no[i]);
			server_production.setProduction(production);
			serverService.addConnectPro(server_production);
		}
		List<Server> list = serverService.getServersByUser((User)ActionContext.getContext().getSession().get("user"));
		ActionContext.getContext().put("MyServersList", list);
		return "gotoHistoryServer";
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
