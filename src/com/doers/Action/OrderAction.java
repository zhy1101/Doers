package com.doers.Action;


import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.doers.Service.BaseDictService;
import com.doers.Service.OrderService;
import com.doers.Service.ServerService;
import com.doers.domain.BaseDict;
import com.doers.domain.Order;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport {
	private String serId;
	private ServerService serverService;
	private BaseDictService baseDictService;
	private OrderService orderService;

	public String getSerId() {
		return serId;
	}

	public void setSerId(String serId) {
		this.serId = serId;
	}
	
	public void setServerService(ServerService serverService) {
		this.serverService = serverService;
	}

	public void setBaseDictService(BaseDictService baseDictService) {
		this.baseDictService = baseDictService;
	}
	

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public String startTalk(){
		Order o = new Order();
		User u = (User) ActionContext.getContext().getSession().get("user");
		o.setCustomerUser(u);
		Server server = serverService.getServerById(serId);
		o.setServer(server);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String talkStartdate = format.format(new Date());
		o.setTalkTimeStart(talkStartdate);
		String talkEnddate = format.format(new Date(new Date().getTime() + server.getTalkTime() * 24 * 60 * 60 * 1000));
		o.setTalkTimeEnd(talkEnddate);
		User sUser = server.getUser();
		o.setServerUser(sUser);
		BaseDict state = baseDictService.getByItemCode("50");
		o.setOrderState(state);
		orderService.createAndStartTalk(o);
		return loadBuyingList();	
	}
	public String loadBuyingList(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		List<Order> myBuyingList = orderService.getBuyingListByUser(u);
		ActionContext.getContext().put("myBuyingList",myBuyingList);
		return "toMyBuyingList";
	}



}
