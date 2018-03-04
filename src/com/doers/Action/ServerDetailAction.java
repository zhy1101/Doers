package com.doers.Action;

import java.util.List;

import com.doers.Service.ServerService;
import com.doers.domain.PageBean;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ServerDetailAction extends ActionSupport {
	private String serverId;
	private ServerService serverService;
	private String currentPage;

	public String getServerId() {
		return serverId;
	}
	
	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
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
	public String loadingAllServers(){
		if(currentPage==null) currentPage="1";
		int currentPage1 = Integer.parseInt(currentPage);
		PageBean<Server> pageBean =serverService.getAllServersByPage(currentPage1);
		ActionContext.getContext().put("pageBean",pageBean);
		return "gotoSeverList";
		
	}
}
