package com.doers.Action;

import java.io.File;
import java.util.UUID;

import com.doers.Service.ServerService;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.org.apache.bcel.internal.generic.NEW;

import sun.print.resources.serviceui;

public class AddServerAction extends ActionSupport implements ModelDriven<Server>{

	private Server s = new Server();
	private File cover;
	private ServerService serverService;
	private String coverFileName;
	
	
	public String getCoverFileName() {
		return coverFileName;
	}
	public void setCoverFileName(String coverFileName) {
		this.coverFileName = coverFileName;
	}
	public void setServerService(ServerService serverService) {
		this.serverService = serverService;
	}
	public File getCover() {
		return cover;
	}

	public void setCover(File Cover) {
		this.cover = Cover;
	}
	
	public String addNewServer() throws Exception{
		User user = (User) ActionContext.getContext().getSession().get("user");
		s.setUser(user);
	    String uuid=UUID.randomUUID().toString();
	    this.cover.renameTo(new File("d:/DoersWorks/ProductionCoverPage/" +"ser_"+ uuid+"_" + this.coverFileName));
	    this.s.setServerCover("/productionCovers/" +"ser_"+ uuid+"_" + this.coverFileName);
	    s.setServerId(uuid);
	    ActionContext.getContext().put("server_id", uuid);
	    this.serverService.addNewServer(this.s);
	    return "finishStepOne";
	}

	@Override
	public Server getModel() {
		return this.s;
		
	}
	
}
