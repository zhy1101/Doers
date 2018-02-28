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
	    this.cover.renameTo(new File("D:/DoersWorks/ProductionCoverPage/" +"ser_"+ uuid));
	    this.s.setServerCover("/productionCovers/" +"ser_"+ uuid);
	    s.setServerId(uuid);
	    ActionContext.getContext().put("server_id", uuid);
	    this.serverService.addNewServer(this.s);
	    return "finishStepOne";
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

	@Override
	public Server getModel() {
		return this.s;
		
	}
	
}
