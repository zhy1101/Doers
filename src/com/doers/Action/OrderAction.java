package com.doers.Action;


import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.doers.Service.AccountService;
import com.doers.Service.BaseDictService;
import com.doers.Service.OrderService;
import com.doers.Service.ServerService;
import com.doers.domain.Account;
import com.doers.domain.AccountOperate;
import com.doers.domain.BaseDict;
import com.doers.domain.Order;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport {
	private String serId;
	private String orderId;
	private ServerService serverService;
	private BaseDictService baseDictService;
	private OrderService orderService;
	private AccountService accountService;
	
	
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

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
	

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
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
		accountService.deleteInCartByServerId(u, serId);
		return loadBuyingList();	
	}
	public String loadBuyingList(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		List<Order> myBuyingList = orderService.getBuyingListByUser(u);
		ActionContext.getContext().put("myBuyingList",myBuyingList);
		return "toMyBuyingList";
	}
	public String loadBuyingHistory(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		List<Order> myBuyingHistory = orderService.getBuyingHistoryByUser(u);
		ActionContext.getContext().put("myBuyingHistory", myBuyingHistory);
		ActionContext.getContext().put("state", 1);
		return "toHistoryPage";
	}
	public String loadServeringingHistory(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		List<Order> myServeringHistory = orderService.getServeringHistoryByUser(u);
		ActionContext.getContext().put("myServeringHistory", myServeringHistory);
		ActionContext.getContext().put("state", 0);
		return "toHistoryPage";
	}
	public String loadServeringList(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		List<Order> myserveringList = orderService.getServeringListByUser(u);
		ActionContext.getContext().put("myServingingList",myserveringList);
		return "toMyServeringList";
	}
	public String payMoney(){
		Order order = orderService.getOrderById(orderId);
		Integer price = order.getOrderContract().getPrice();
		BaseDict baseDict =baseDictService.getByItemCode("52");
		User u = (User) ActionContext.getContext().getSession().get("user");
		Account account  = accountService.getAccountByUser(u);
		if((account.getWallet1()+account.getWallet2())<price){
			return "noMoney";
		}else {
			if(account.getWallet1()<price){
			account.setWallet1(0);
			account.setWallet2(account.getWallet2()-(price-account.getWallet1()));	
			order.setOrderState(baseDict);
		}else{
			account.setWallet1(account.getWallet1()-price);
			order.setOrderState(baseDict);
		}
			}
		AccountOperate aOperate = new AccountOperate();
		aOperate.setAccount(account);
		BaseDict behave = baseDictService.getByItemCode("60");
		aOperate.setBehave(behave);
		aOperate.setDoMoeny(price);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	    String pdate = format.format(new Date());
		aOperate.setTime(pdate);
		accountService.addAccountOperate(aOperate);
		return loadBuyingList();
	}
	
	public String receiveOrder(){
		Order order = orderService.getOrderById(orderId);
		Integer price = order.getOrderContract().getPrice();
		BaseDict baseDict =baseDictService.getByItemCode("62");
		order.setOrderState(baseDict);
		User u =order.getServerUser();
		Account account = accountService.getAccountByUser(u);
		account.setWallet2(account.getWallet2()+price);
		AccountOperate aOperate = new AccountOperate();
		aOperate.setAccount(account);
		BaseDict behave = baseDictService.getByItemCode("59");
		aOperate.setBehave(behave);
		aOperate.setDoMoeny(price);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	    String pdate = format.format(new Date());
		aOperate.setTime(pdate);
		accountService.addAccountOperate(aOperate);
		return loadBuyingHistory();
	}
	public String finishWork(){
		Order order = orderService.getOrderById(orderId);
		BaseDict baseDict =baseDictService.getByItemCode("53");
		order.setOrderState(baseDict);
		return loadServeringList();
	}



}
