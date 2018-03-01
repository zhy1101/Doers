package com.doers.Action;

import java.util.List;

import com.doers.Service.ServerService;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ServerDetailAction extends ActionSupport {
	private String serverId;
	private ServerService serverService;

	public String getServerId() {
		return serverId;
	}

	public void setServerId(String serverId) {
		this.serverId = serverId;
	}
	
	public void setServerService(ServerService serverService) {
		this.serverService = serverService;
	}

	public String showServerDetail(){
		Server server = serverService.getServerById(serverId);
		ActionContext.getContext().put("server",server);
		return "gotoServerDetail";
		
	}
	public String showMyServers(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		List<Server> list = serverService.getServersByUser(u);
		ActionContext.getContext().put("MyServersList", list);
		return "gotoHistoryServer";
	}

}
