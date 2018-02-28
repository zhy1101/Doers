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
	private File serverCover;
	private ServerService serverService;
	
	
	public void setServerService(ServerService serverService) {
		this.serverService = serverService;
	}
	public File getServerCover() {
		return serverCover;
	}


	public void setServerCover(File serverCover) {
		this.serverCover = serverCover;
	}
	
	public String addNewServer(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		s.setUser(user);
	    String uuid=UUID.randomUUID().toString();
	    this.serverCover.renameTo(new File("D:/DoersWorks/ProductionCoverPage/" +"ser_"+ uuid));
	    this.s.setServerCover("/productionCovers/" +"ser_"+ uuid);
	    String uuid_id=UUID.randomUUID().toString();
	    s.setServerId(uuid_id);
	    ActionContext.getContext().put("server_id", uuid_id);
	    this.serverService.addNewServer(this.s);
	    return "finishStepOne";
	}

	@Override
	public Server getModel() {
		return this.s;
		
	}
	
}
